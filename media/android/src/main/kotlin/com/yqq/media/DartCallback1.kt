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
        println("Kotlin：onError code= $code ")
        //        channel.invokeMethod("onError", mapOf("code"to code))
    }

    fun onPrepare() {
//        println("Kotlin：onPrepare ")
        handler.post {
            println("Kotlin：onPrepare111 ")
            channel.invokeMethod("onPrepare", null)
        }
    }

    fun onProgress(value: Int) {
        println("Kotlin：onProgress")
        //        channel.invokeMethod("onPrepare", mapOf("value"to value));
    }

    external fun surfaceTexture(p: Long, t: SurfaceTexture?)
    external fun ceshi(p: Long)
}