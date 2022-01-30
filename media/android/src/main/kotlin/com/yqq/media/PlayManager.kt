package com.yqq.media

import android.os.Handler
import android.os.Looper
import android.view.Surface
import io.flutter.plugin.common.MethodChannel

class PlayManager constructor(val channel: MethodChannel) {
    private var surface: Surface? = null

    private var handler: Handler = Handler(Looper.getMainLooper())

    var nativeHandler: Long = 0

    init {
        nativeHandler = nativeInit()
    }

    fun setDataSource(path: String) {
        setDataSource(nativeHandler, path)
        prepare()
    }

    fun setSurface(surface: Surface) {
        this.surface = surface
        setSurface(nativeHandler, surface)
    }

    private fun prepare() {
        prepare(nativeHandler)
    }

    fun start() {
        start(nativeHandler)
    }

    fun pause() {}

    fun stop() {}


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


