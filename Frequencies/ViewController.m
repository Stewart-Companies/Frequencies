//
//  ViewController.m
//  Frequencies
//
//  Created by Corey Stewart on 10/30/11.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import "ViewController.h"
#import "AboutView.h"
#import <AVFoundation/AVAudioSession.h>


@interface ViewController ()

@property (nonatomic, assign) BOOL viewLoaded;

@end


@implementation ViewController


- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (BOOL)prefersStatusBarHidden
{
    return TRUE;
}



- (void)loadAdMobInterstitialAdRequest
{
    //Load Splash Ad
    splashInterstitial_ = [[GADInterstitial alloc] init];
    splashInterstitial_.delegate = self;
    GADRequest *request = [GADRequest request];
	if ([AdDelegate devMode])
	{
		splashInterstitial_.adUnitID = @"ca-app-pub-4343476466504805/1633862570";
	}
	else
	{
		splashInterstitial_.adUnitID = @"ca-app-pub-4343476466504805/2510323370";
	}
	
    [splashInterstitial_ loadRequest:request];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

-(BOOL)devMode
{
	if ([AdDelegate devMode])
	{
		return true;
	}
	else
	{
		return false;
	}
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
	[super viewDidLoad];
	
	//Tell developer if ads are disabled
	if ([AdDelegate devMode])
	{
		// Build Bar
		bool hideBuildBar = [[NSUserDefaults standardUserDefaults] objectForKey:@"HideBuildBar"];
		if (!hideBuildBar)
		{
			[_devStripe setText: [NSString stringWithFormat:@"Build %@",[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]]];
		}
		else
		{
			[_devStripe setHidden: YES];
		}
		if ([AdDelegate bannerAdsAreDisabled]) {NSLog(@"Banner ads are disabled.");}
		if ([AdDelegate interstitialAdsAreDisabled]) {NSLog(@"Interstitial ads are disabled");}
	}
	else
	{
		[_devStripe setHidden: YES];
	}
	
    //Initicalize Google Analytics
    GoogleAnalytics *googleAnalytics = [[GoogleAnalytics alloc] init];
    [googleAnalytics initializeTheTracker];
    
    //Google Analytics
    self.screenName = @"Home Screen";
	
    //Show ad
	if (![AdDelegate interstitialAdsAreDisabled])
	{
		[self loadAdMobInterstitialAdRequest];
	}
	
    //Initialize player
    [[Player alloc] setPlayer];
	
	_viewLoaded = YES;
	
	NSString *filePath = @"/Applications/Cydia.app";
	
	if ([[NSFileManager defaultManager] fileExistsAtPath:filePath])
	{
		[[NSUserDefaults standardUserDefaults] setBool:true forKey:@"IsJailbroken"];
	}else{
		[[NSUserDefaults standardUserDefaults] setBool:false forKey:@"IsJailbroken"];
	}
}

- (void)interstitialDidReceiveAd:(GADInterstitial *)ad
{
    NSLog(@"Did receive admob interstitial ad.");
	[ad presentFromRootViewController: self.navigationController];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
	[[AdDelegate shared] showAdBannerForViewController:self.navigationController inLandscape:NO];
}

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}



@end
