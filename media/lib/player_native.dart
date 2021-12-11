part of 'player.dart';

final DynamicLibrary _native = Platform.isAndroid
    ? DynamicLibrary.open("libmedia-lib.so")
    : DynamicLibrary.process();

typedef OnPrepare = Void Function();
typedef OnProgress = Void Function(Int32);
typedef OnError = Void Function(Int32);

typedef NativeInitCpp = Int64 Function(
  Pointer<NativeFunction<OnPrepare>>,
  Pointer<NativeFunction<OnProgress>>,
  Pointer<NativeFunction<OnError>>,
);
typedef NativeInitDart = int Function(
  Pointer<NativeFunction<OnPrepare>>,
  Pointer<NativeFunction<OnProgress>>,
  Pointer<NativeFunction<OnError>>,
);

final NativeInitDart _nativeInit =
    _native.lookup<NativeFunction<NativeInitCpp>>("nativeInit").asFunction();

final int Function(int handler, Pointer<Uint8> path) _nativeSetDataSource =
    _native
        .lookup<NativeFunction<Int32 Function(Int64, Pointer<Uint8>)>>(
            "setDataSource")
        .asFunction();
