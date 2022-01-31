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
        if (nativeHandler == 0L) return

        this.surface = surface
        setSurface(nativeHandler, surface)
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


    private fun onError(code: Int) {
        handler.post {
            channel.invokeMethod("onError", mapOf("code" to code))
        }
    }

    private fun onPrepare() {
        setSurface(nativeHandler, surface!!)
        handler.post {
            channel.invokeMethod("onPrepare", null)
        }
    }

    private fun onProgress(value: Int) {
        handler.post {
            channel.invokeMethod("onProgress", "value" to value)
        }
    }

    private external fun nativeInit(): Long

    private external fun setDataSource(nativeHandler: Long, path: String)

    private external fun prepare(nativeHandler: Long)

    private external fun start(nativeHandler: Long)

    private external fun stop(nativeHandler: Long)

    private external fun setSurface(nativeHandler: Long, surface: Surface)

    companion object {
        init {
            System.loadLibrary("media-lib")
        }
    }
}


