package com.yqq.cloudmusic.cloud_music

import android.os.Bundle
import android.os.Environment
import android.os.StrictMode
import android.util.Log
import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableStrictMode()
    }

    private fun enableStrictMode() {
        // 分别为MainThread和VM设置Strict Mode
        if (BuildConfig.DEBUG) {
            Log.d(this.javaClass.name, "enable strict mode")
            StrictMode.setThreadPolicy(StrictMode.ThreadPolicy.Builder()
                    .detectAll()
                    .penaltyLog()
//                    .penaltyDeath()
                    .build())
            StrictMode.setVmPolicy(StrictMode.VmPolicy.Builder()
                    .detectAll()
//                    .penaltyDeath()
                    .build())
        }
    }
}
