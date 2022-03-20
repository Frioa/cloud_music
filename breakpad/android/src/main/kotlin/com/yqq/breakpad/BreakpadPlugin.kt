package com.yqq.breakpad

import android.Manifest
import android.app.Activity
import android.content.pm.PackageManager
import android.os.Environment
import android.os.Handler
import android.os.Looper
import android.util.Log
import androidx.annotation.NonNull
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import java.io.File


/** BreakpadPlugin */
class BreakpadPlugin : FlutterPlugin, MethodCallHandler, ActivityAware {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var channel: MethodChannel
    private lateinit var activity: Activity
    private val WRITE_EXTERNAL_STORAGE_REQUEST_CODE = 100
    private var externalReportPath: File? = null
    private val handler = Handler(Looper.myLooper()!!)


    override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "breakpad")
        channel.setMethodCallHandler(this)
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        when (call.method) {
            "initBreakPad" -> {
                Thread {
                    initBreakPad()
                    handler.post {
                        result.success(null)
                    }
                }.start()
            }
            "crash" -> {
                Thread {
                    initBreakPad()
                    handler.post {
                        BreakpadInit.crash()
                        result.success(null)
                    }
                }.start()
            }
            else -> {
                result.notImplemented()
            }
        }
    }

    private fun init() {
        if (externalReportPath != null) return

        if (ContextCompat.checkSelfPermission(activity, Manifest.permission.WRITE_EXTERNAL_STORAGE)
                != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(
                    activity, arrayOf(Manifest.permission.WRITE_EXTERNAL_STORAGE),
                    WRITE_EXTERNAL_STORAGE_REQUEST_CODE)
        } else {
            initExternalReportPath()
        }
    }

    private fun initExternalReportPath() {
        externalReportPath = File(Environment.getExternalStorageDirectory(), "crashDump")
        if (!externalReportPath!!.exists()) {
            externalReportPath!!.mkdirs()
        }
        Log.d(this.javaClass.name, "externalReportPath path: ${externalReportPath!!.absolutePath}")
    }

    private fun initBreakPad() {
        if (externalReportPath == null) {
            externalReportPath = File(activity.filesDir, "crashDump")
            if (!externalReportPath!!.exists()) {
                externalReportPath!!.mkdirs()
            }
        }
        BreakpadInit.initBreakpad(externalReportPath!!.absolutePath)
    }


    override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
        init()
    }

    override fun onDetachedFromActivityForConfigChanges() {
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activity = binding.activity
        init()
    }

    override fun onDetachedFromActivity() {
    }
}
