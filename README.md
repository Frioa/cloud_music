# cloud_music

A new Flutter project.

build runner：flutter packages pub run build_runner build --delete-conflicting-outputs


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## minidump_stackwalk 工具使用：
/Applications/Android\ Studio.app/Contents/plugins/android-ndk/resources/lldb/bin/minidump_stackwalk f6808d74-e3f8-4ff7-74aeb392-fb882724.dmp > crash.txt

1. 注意 crash.txt 中的 CPU 类型，使用对应的工具进行 符号解析，可以使用 ndk 中提供的`addr2line`来根据地址进行一个符号反解的过程,该工具在
   `$NDK_HOME/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64/bin/arm-linux-androideabi-addr2line`

注意：此处要注意一下平台，如果是 arm64位的 so，解析是需要使用 `aarch64-linux-android-4.9`下的工具链
```
arm-linux-androideabi-addr2line -f -C -e sample/build/intermediates/transforms/mergeJniLibs/debug/0/lib/armeabi-v7a/libcrash-lib.so 0x77e                           
//输出结果如下
Crash()

```
