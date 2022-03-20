package com.yqq.breakpad


object BreakpadInit {
    fun initBreakpad(path: String) {
        initBreakpadNative(path)
    }

    fun crash() {
        crashNative()
    }

    private external fun initBreakpadNative(path: String)
    private external fun crashNative()

    init {
        System.loadLibrary("breakpad-core")
    }
}