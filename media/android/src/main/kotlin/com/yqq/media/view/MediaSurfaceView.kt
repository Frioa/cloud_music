package com.yqq.media.view

import android.app.Activity
import android.content.Context
import android.view.*
import android.widget.TextView
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.platform.PlatformView


class MediaSurfaceView(
    val context: Context,
    val callback: SurfaceHolder.Callback
) : PlatformView {

    var surfaceView: SurfaceView = SurfaceView(context)
    lateinit var surface: Surface

    init {
        println("初始化 MediaSurfaceView ")
        surfaceView.holder.addCallback(callback)
    }


    override fun getView(): View {
        return surfaceView
    }

    override fun dispose() {
        println(" MediaSurfaceView() dispose ")
        surfaceView.holder.removeCallback(callback)
    }

}