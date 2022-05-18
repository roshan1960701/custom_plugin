#import "CustomPlugin.h"
#if __has_include(<custom_plugin/custom_plugin-Swift.h>)
#import <custom_plugin/custom_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "custom_plugin-Swift.h"
#endif

@implementation CustomPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCustomPlugin registerWithRegistrar:registrar];
}
@end
