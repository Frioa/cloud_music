package com.yqq.media

import android.app.Activity
import android.view.Surface
import android.view.SurfaceHolder
import androidx.annotation.NonNull
import com.yqq.media.view.MediaSurfaceViewFactory
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.view.TextureRegistry

class MediaPlugin : FlutterPlugin, MethodCallHandler, ActivityAware {
    private lateinit var channel: MethodChannel
    private lateinit var surfaceTextureEntry: TextureRegistry.SurfaceTextureEntry

    //    private var nativeHandler: Long = 0
    private var playManager: PlayManager? = null

    private lateinit var activity: Activity


    override fun onAttachedToEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        println("onAttachedToEngine ")
        channel = MethodChannel(binding.binaryMessenger, "media")
        surfaceTextureEntry = binding.textureRegistry.createSurfaceTexture()
        channel.setMethodCallHandler(this)
        val factory = MediaSurfaceViewFactory(object : SurfaceHolder.Callback {
            override fun surfaceCreated(holder: SurfaceHolder) {
                playManager!!.setSurface(holder.surface)
                println("surfaceCreated ")
            }

            override fun surfaceChanged(
                holder: SurfaceHolder,
                format: Int,
                width: Int,
                height: Int
            ) {
                println("surfaceChanged ")
                if (playManager == null) return
                playManager!!.setSurface(holder.surface)
                println("surfaceChanged  setSurface()")
            }

            override fun surfaceDestroyed(holder: SurfaceHolder) {
            }
        })
        binding.platformViewRegistry.registerViewFactory("android_surface_view", factory)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        when (call.method) {
            "surfaceTextureId" -> {
//                dartCallback = DartCallback(channel)
                channel.invokeMethod("onPrepare", null)
                result.success(surfaceTextureEntry.id())
            }
            "init" -> {
                playManager = PlayManager(channel)
                result.success(playManager!!.nativeHandler)
            }
            "setDataSource" -> {
                val arg = call.arguments as Map<*, *>
                val path = arg["path"] as String
                playManager!!.setDataSource(path)
                result.success(true)
            }
            "start" -> {
                playManager!!.start()
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

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
    }

    override fun onDetachedFromActivityForConfigChanges() {
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activity = binding.activity
    }

    override fun onDetachedFromActivity() {
    }

}
