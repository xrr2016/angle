#import "AnglePlugin.h"
#if __has_include(<angle/angle-Swift.h>)
#import <angle/angle-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "angle-Swift.h"
#endif

@implementation AnglePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAnglePlugin registerWithRegistrar:registrar];
}
@end
