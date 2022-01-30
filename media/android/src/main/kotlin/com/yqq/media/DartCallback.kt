package com.yqq.media

import io.flutter.plugin.common.MethodChannel
import android.graphics.SurfaceTexture
import android.os.Handler

class DartCallback(val channel: MethodChannel, val handler: Handler) {
    companion object {
        init {
            System.loadLibrary("media-lib")
        }
    }

    fun onError(code: Int) {
    }

    fun onPrepare() {
        handler.post {
            println("Kotlin：onPrepare111 ")
            channel.invokeMethod("onPrepare", null)
        }
    }

    fun onProgress(value: Int) {
    }
}