//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<auto_orientation/AutoOrientationPlugin.h>)
#import <auto_orientation/AutoOrientationPlugin.h>
#else
@import auto_orientation;
#endif

#if __has_include(<ocarina/OcarinaPlugin.h>)
#import <ocarina/OcarinaPlugin.h>
#else
@import ocarina;
#endif

#if __has_include(<screen/ScreenPlugin.h>)
#import <screen/ScreenPlugin.h>
#else
@import screen;
#endif

#if __has_include(<video_player/FLTVideoPlayerPlugin.h>)
#import <video_player/FLTVideoPlayerPlugin.h>
#else
@import video_player;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [AutoOrientationPlugin registerWithRegistrar:[registry registrarForPlugin:@"AutoOrientationPlugin"]];
  [OcarinaPlugin registerWithRegistrar:[registry registrarForPlugin:@"OcarinaPlugin"]];
  [ScreenPlugin registerWithRegistrar:[registry registrarForPlugin:@"ScreenPlugin"]];
  [FLTVideoPlayerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTVideoPlayerPlugin"]];
}

@end
