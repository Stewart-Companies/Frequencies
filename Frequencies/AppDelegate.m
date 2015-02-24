//
//  AppDelegate.m
//  Frequencies
//
//  Created by Corey Stewart on 10/30/11.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "iRate.h"
#import "iVersion.h"
#import <RevMobAds/RevMobAds.h>
//#import <FacebookSDK/FacebookSDK.h>

@implementation AppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

+ (void)initialize
{
	NSUserDefaults* defs = [NSUserDefaults standardUserDefaults];
	NSArray* languages = [defs objectForKey:@"AppleLanguages"];
	NSString* preferredLang = [languages objectAtIndex:0];
	NSLog(@"Language: %@",preferredLang);
	
	
	// if "Preview iVersion" is set in the dev menu, then set previewMode on.
	
	bool previewiVersion = [[NSUserDefaults standardUserDefaults] valueForKey:@"PreviewiVersion"];
	
	if (previewiVersion)
	{
		[iVersion sharedInstance].previewMode = YES;
	}
	
	[iVersion sharedInstance].verboseLogging = YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{	
	[[UIApplication sharedApplication] cancelAllLocalNotifications];
	
    // Override point for customization after application launch.
    application.applicationSupportsShakeToEdit = YES;
    application.statusBarHidden = TRUE;
    [UIApplication sharedApplication].statusBarHidden = YES;

	//configure iRate
	[iRate sharedInstance].daysUntilPrompt = 1;
	[iRate sharedInstance].usesUntilPrompt = 3;
	
	// if "Preview iRate" is set in the dev menu, then set previewMode on.
	bool previewiRate = [[NSUserDefaults standardUserDefaults] valueForKey:@"PreviewiRate"];
	
	if (previewiRate)
	{
		[iRate sharedInstance].previewMode = YES;
	}
	
	//configure iVersion
	//[iVersion sharedInstance].appStoreID = 398296784;

    return YES;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url {
    
    if ([[url query] isEqualToString:@"DisableInterstitialAds68127"])
    {
        [AdDelegate disableInterstitialAds];
    }
    
    if ([[url query] isEqualToString:@"DisableBannerAds21447"])
    {
        [AdDelegate disableBannerAds];
    }
    
    if ([[url query] isEqualToString:@"DisableAllAds85538"])
    {
        [AdDelegate disableBannerAds];
        [AdDelegate disableInterstitialAds];
    }
	
	if ([[url query] isEqualToString:@"EnableDevMode51778"])
    {
		[[NSUserDefaults standardUserDefaults] setBool:TRUE forKey:@"DevMode"];
		[[NSUserDefaults standardUserDefaults] synchronize];
		
        NSLog(@"Dev Menu is now enabled.");
    }
	
	if ([[url query] isEqualToString:@"DisableDevMode"])
	{
		[[NSUserDefaults standardUserDefaults] setBool:FALSE forKey:@"DevMode"];
		[[NSUserDefaults standardUserDefaults] synchronize];
		
		NSLog(@"Dev Menu is now disabled.");
	}
	
    if ([[url query] isEqualToString:@"EnableAds"])
    {
        [AdDelegate enableBannerAds];
		[AdDelegate enableInterstitialAds];
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [AppTracker closeSession];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
