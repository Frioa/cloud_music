package com.yqq.media

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.view.TextureRegistry

/** MediaPlugin */
class MediaPlugin : FlutterPlugin, MethodCallHandler {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel
    private lateinit var surfaceTextureEntry: TextureRegistry.SurfaceTextureEntry
    private var nativeHandler: Long = 0
    private lateinit var dartCallback: DartCallback
    private var handler: Handler = Handler(Looper.getMainLooper())


    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        println("初始化 onAttachedToEngine")
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "media")
        surfaceTextureEntry = flutterPluginBinding.textureRegistry.createSurfaceTexture()
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        println("onMethodCall nativeHandle:$nativeHandler")

        if (call.method == "surfaceTextureId") {
            nativeHandler = (call.arguments as Map<*, *>)["nativeHandle"] as Long
            println("onMethodCall nativeHandle:$nativeHandler")
            dartCallback = DartCallback(channel, handler)
            dartCallback.surfaceTexture(nativeHandler, surfaceTextureEntry.surfaceTexture())
            println("onMethodCall 设置 surfaceTexture 完成")
            channel.invokeMethod("onPrepare", null)

            result.success(surfaceTextureEntry.id())
        } else if (call.method == "ceshi") {
            handler.post {
                println("Kotlin：onPrepare111 ")
                channel.invokeMethod("onPrepare", null)
            }
//            dartCallback.ceshi(nativeHandler)
        } else {
            result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

}
