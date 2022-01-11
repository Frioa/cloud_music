package com.yqq.media.view

import android.content.Context
import android.view.Surface
import android.view.SurfaceHolder
import io.flutter.plugin.common.StandardMessageCodec
import io.flutter.plugin.platform.PlatformView
import io.flutter.plugin.platform.PlatformViewFactory

class MediaSurfaceViewFactory constructor(val callback: SurfaceHolder.Callback) :
    PlatformViewFactory(StandardMessageCodec.INSTANCE) {

    override fun create(context: Context, viewId: Int, args: Any?): PlatformView {
        val platformView = MediaSurfaceView(context, callback)
        platformView.view.id = viewId

        val params = args?.let { args as Map<*, *> }
        return platformView
    }
}
