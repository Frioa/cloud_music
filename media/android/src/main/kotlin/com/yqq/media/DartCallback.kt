//package com.yqq.media
//
//import android.graphics.SurfaceTexture
//import io.flutter.plugin.common.MethodChannel
//
//class DartCallback constructor(val channel: MethodChannel) {
//
//    init {
//        System.loadLibrary("media-lib")
//    }
//
//    fun onError(code: Int) {
//        println("Kotlin：onError code=$code ")
//        channel.invokeMethod("onError", mapOf("code" to code))
//    }
//
//    fun onPrepare() {
//        println("Kotlin：onPrepare")
//        channel.invokeMethod("onPrepare", null)
//    }
//
//    fun onProgress(value: Int) {
//        println("Kotlin：onProgress")
//        channel.invokeMethod("onPrepare", mapOf("value" to value))
//    }
//
//    external fun surfaceTexture(nativeHandler: Long, texture: SurfaceTexture): Long
//}
