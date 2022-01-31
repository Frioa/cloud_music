package com.yqq.media

import android.view.Surface
import android.view.SurfaceHolder
import androidx.annotation.NonNull
import com.yqq.media.view.MediaSurfaceViewFactory
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

class MediaPlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var channel: MethodChannel

    // TODO: Dart 实现
//    private lateinit var surfaceTextureEntry: TextureRegistry.SurfaceTextureEntry
    private lateinit var playManager: PlayManager


    private fun setSurface(surface: Surface) {
        playManager.setSurface(surface)
    }

    override fun onAttachedToEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        println("onAttachedToEngine ")
        channel = MethodChannel(binding.binaryMessenger, "media")
        channel.setMethodCallHandler(this)
        val factory = MediaSurfaceViewFactory(object : SurfaceHolder.Callback {
            override fun surfaceCreated(holder: SurfaceHolder) {
                println("surfaceCreated ")
                setSurface(holder.surface)
            }

            override fun surfaceChanged(
                holder: SurfaceHolder,
                format: Int,
                width: Int,
                height: Int
            ) {
                println("surfaceChanged ")
                setSurface(holder.surface)
            }

            override fun surfaceDestroyed(holder: SurfaceHolder) {
            }
        })
        playManager = PlayManager(channel)
        binding.platformViewRegistry.registerViewFactory("android_surface_view", factory)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        when (call.method) {
            "surfaceTextureId" -> {
                channel.invokeMethod("onPrepare", null)
            }
            "init" -> {
                playManager.init()
                result.success(playManager.nativeHandler)
            }
            "setDataSource" -> {
                val arg = call.arguments as Map<*, *>
                val path = arg["path"] as String
                playManager.setDataSource(path)
                result.success(true)
            }
            "start" -> {
                playManager.start()
                result.success(true)
            }
            "stop" -> {
                playManager.stop()
                result.success(true)
            }
            "seek" -> {
                val arg = call.arguments as Map<*, *>
                val time = arg["time"] as Double? ?: 0.0
                playManager.seek(time)
                result.success(true)
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }
}
