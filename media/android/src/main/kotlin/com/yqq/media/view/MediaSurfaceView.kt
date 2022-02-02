package com.yqq.media.view

import android.content.Context
import android.view.*
import io.flutter.plugin.platform.PlatformView


class MediaSurfaceView(
    val context: Context,
    val callback: SurfaceHolder.Callback
) : PlatformView {

    var surfaceView: SurfaceView = SurfaceView(context)
    lateinit var surface: Surface

    init {
        surfaceView.holder.addCallback(callback)
    }


    override fun getView(): View {
        return surfaceView
    }

    override fun dispose() {
        surfaceView.holder.removeCallback(callback)
    }

}