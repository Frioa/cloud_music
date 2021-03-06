package com.yqq.media

import android.os.Handler
import android.os.Looper
import android.util.Log
import android.view.Surface
import io.flutter.plugin.common.MethodChannel

private const val TAG = "PlayManager"

class PlayManager constructor(val channel: MethodChannel) {
    private var surface: Surface? = null
    private var isPlaying = false;

    private var handler: Handler = Handler(Looper.getMainLooper())

    var nativeHandler: Long = 0L

    init {
        nativeHandler = nativeInit()
    }

    fun init() {
        if (nativeHandler != 0L) {
            stop()
        }
        nativeHandler = nativeInit()
    }

    fun setDataSource(path: String) {
        if (nativeHandler == 0L) return

        setDataSource(nativeHandler, path)
        prepare()
    }

    fun setSurface(surface: Surface) {
        if (nativeHandler == 0L) {
            this.surface = surface
            Log.d(TAG, "nativeHandler is null")
            return
        }
        Log.d(TAG, "setSurface")

        this.surface = surface
        setSurface(nativeHandler, surface)
    }

    fun surfaceDestroyed() {
        this.surface = null
    }

    private fun prepare() {
        if (nativeHandler == 0L) return

        prepare(nativeHandler)
    }

    fun start() {
        if (isPlaying || nativeHandler == 0L) return

        isPlaying = true
        start(nativeHandler)
    }

    fun pause() {
        isPlaying = false
    }

    fun stop() {
        if (nativeHandler == 0L) return;

        isPlaying = false
        stop(nativeHandler)
        nativeHandler = 0L
        Log.d(TAG, "stop end.")
    }

    fun seek(time: Double) {
        Log.d(TAG, "seek .progress=$time")
        if (nativeHandler == 0L) return
        seek(nativeHandler, time)
    }


    private fun onError(code: Int) {
        handler.post {
            channel.invokeMethod("onError", mapOf("code" to code))
        }
    }

    private fun onPrepare(duration: Double, aspect: Double, isVideo: Boolean) {
        if (surface != null) {
            setSurface(nativeHandler, surface!!)
        }
        handler.post {
            channel.invokeMethod("onPrepare", mapOf("duration" to duration, "aspect" to aspect, "isVideo" to isVideo))
        }
    }

    private fun onProgress(value: Int) {
        handler.post {
            channel.invokeMethod("onProgress", mapOf("value" to value))
        }
    }

    private fun onAudioProgress(value: Double) {
        handler.post {
            channel.invokeMethod("onAudioProgress", mapOf("value" to value))
        }
    }

    private fun onComplete() {
        handler.post {
            channel.invokeMethod("onComplete", mapOf("null" to null))
        }
    }

    private external fun nativeInit(): Long

    private external fun setDataSource(nativeHandler: Long, path: String)

    private external fun prepare(nativeHandler: Long)

    private external fun start(nativeHandler: Long)

    private external fun seek(nativeHandler: Long, progress: Double)

    private external fun stop(nativeHandler: Long)

    private external fun setSurface(nativeHandler: Long, surface: Surface)

    companion object {
        init {
            System.loadLibrary("media-lib")
        }
    }
}


