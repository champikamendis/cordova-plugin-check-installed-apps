
#import "Cordova/CDV.h"
#import "Cordova/CDVViewController.h"
#import "CheckInstalledApps.h"
#import <sys/stat.h>
#import <sys/sysctl.h>

@implementation CheckInstalledApps

- (void) checkInstalledApps:(CDVInvokedUrlCommand*)command;
{
    CDVPluginResult *pluginResult;

    @try
    {
        bool isApplicationAvailable = [self isApplicationAvailable];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:isApplicationAvailable];
    
    }
    @catch (NSException *exception)
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:exception.reason];
    }
    @finally
    {
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}

- (bool) isApplicationAvailable {
     
    NSString *appName = @"instagram";
    NSString *appScheme = [NSString stringWithFormat:@"%@://", appName];
    NSURL *appUrl = [NSURL URLWithString:appScheme];

    if ([[UIApplication sharedApplication] canOpenURL:appUrl]) {
        [[UIApplication sharedApplication] openURL:appUrl];
        NSLog(@"APP IS INSTALLED");
        return YES;
    } else {
        NSLog(@"App not installed");
        return NO;
    }
}
@end
