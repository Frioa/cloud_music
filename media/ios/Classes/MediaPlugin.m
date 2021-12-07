#import "MediaPlugin.h"
#if __has_include(<media/media-Swift.h>)
#import <media/media-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "media-Swift.h"
#endif

@implementation MediaPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMediaPlugin registerWithRegistrar:registrar];
}
@end
