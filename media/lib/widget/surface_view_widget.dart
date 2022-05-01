import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class SurfaceViewWidget extends StatefulWidget {
  const SurfaceViewWidget({Key? key}) : super(key: key);

  @override
  _SurfaceViewWidgetState createState() => _SurfaceViewWidgetState();
}

class _SurfaceViewWidgetState extends State<SurfaceViewWidget> {
  @override
  Widget build(BuildContext context) {
    const String viewType = 'android_surface_view';
    final Map<String, dynamic> creationParams = <String, dynamic>{};

    return Container(
      color: Colors.blue,
      child: PlatformViewLink(
        viewType: viewType,
        surfaceFactory:
            (BuildContext context, PlatformViewController controller) {
          return AndroidViewSurface(
            controller: controller as AndroidViewController,
            gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{},
            hitTestBehavior: PlatformViewHitTestBehavior.opaque,
          );
        },
        onCreatePlatformView: (PlatformViewCreationParams params) {
          return PlatformViewsService.initSurfaceAndroidView(
            id: params.id,
            viewType: viewType,
            layoutDirection: TextDirection.ltr,
            creationParams: creationParams,
            creationParamsCodec: const StandardMessageCodec(),
            onFocus: () {
              params.onFocusChanged(true);
            } ,
          )
            ..addOnPlatformViewCreatedListener(params.onPlatformViewCreated)
            ..create();
        },
      ),
    );
  }
}
