//
//  AdDelegate.m
//  Frequencies
//
//  Created by Corey Stewart on 5/22/13.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import "AdDelegate.h"

#ifdef DEV_MODE
#define DebugLog(...) NSLog(__VA_ARGS__)
#else
#define DebugLog(...)
#endif

@implementation AdDelegate

static bool adIsLoaded;

+(AdDelegate *)shared {
	static dispatch_once_t pred;
	static AdDelegate *shared;
	// Will only be run once, the first time this is called
	dispatch_once(&pred, ^{
		shared = [[AdDelegate alloc] init];
	});
	return shared;
}

+(BOOL)devMode
{
#ifdef DEV_MODE
	// Was Dev Mode activated from XCode?
    return YES;
#else
	// Was it activated using a URL?
	BOOL devMode = [[NSUserDefaults standardUserDefaults] valueForKey:@"DevMode"];
    if (devMode)
    {
        return YES;
    }
    else
    {
        return NO;
    }
    
#endif
}

- (void)showAdBannerForViewController: (UIViewController *)rootViewController inLandscape: (bool *)inLandscape
{
	if (![AdDelegate bannerAdsAreDisabled])
	{
	//GADBannerView * adView;
	[self addBannerAdToViewController:rootViewController inLandscape:inLandscape];
	}
}

- (void)initBannerAd {
	NSLog(@"Initializing banner ads...");
	CGPoint originForLandscape = CGPointMake(0.0,
								 self.view.frame.size.width);
	CGPoint originForPortrait = CGPointMake(0.0,
								 self.view.frame.size.height);
	adViewLandscape = [[GADBannerView alloc] initWithAdSize:kGADAdSizeSmartBannerLandscape origin:originForLandscape];
	adViewPortrait = [[GADBannerView alloc] initWithAdSize:kGADAdSizeSmartBannerPortrait origin:originForPortrait];
	adViewPortrait.delegate = self;
	adViewLandscape.delegate = self;
	if ([AdDelegate devMode])
	{
		adViewPortrait.adUnitID = @"ca-app-pub-4343476466504805/5924461379";
		adViewLandscape.adUnitID = @"ca-app-pub-4343476466504805/5924461379";
	}
	else
	{
		adViewPortrait.adUnitID = @"ca-app-pub-4343476466504805/4824661374";
		adViewLandscape.adUnitID = @"ca-app-pub-4343476466504805/4824661374";
	}
}

- (void)addBannerAdToViewController: (UIViewController *)rootViewController inLandscape: (bool *)inLandscape {
	
	if (inLandscape)
	{
		[rootViewController.view bringSubviewToFront:adViewLandscape];
		if (!_landscapeBannerAdRequested) {
			[rootViewController.view addSubview:adViewLandscape];
			adViewLandscape.rootViewController = rootViewController;
			[adViewLandscape loadRequest:[self request]];
			_landscapeBannerAdRequested = YES;
		}
		else
		{
			[rootViewController.view bringSubviewToFront:adViewLandscape];
		}
		NSLog(@"Added banner to landscape view.");
	}else{
		[rootViewController.view addSubview:adViewPortrait];
		if (!_portraitBannerAdRequested) {
			adViewPortrait.rootViewController = rootViewController;
			[adViewPortrait loadRequest:[self request]];
			_portraitBannerAdRequested = YES;
		}
		else
		{
			[rootViewController.view bringSubviewToFront:adViewPortrait];
		}
		NSLog(@"Added banner to portrait view.");
	}
}

-(void)showInterstitialAdForView: (UIView *)view
{
	if (![AdDelegate interstitialAdsAreDisabled])
	{
		/*
		// Read data and react to changes
		//Initialize AppFireworks Analytics
		[AppTracker startSession:@"OyKNfDtrU9U8Aw0PfvWl5uOHopzrHQ7u" view:view];
		[[NSNotificationCenter defaultCenter] addObserver:self
												 selector:@selector(handleModuleFail) name:@"onModuleFailed"
												   object:@"AppFireworksNotification"];
		 //RevMob Interstitial Ads
		if ([AdDelegate devMode])
		{
			[RevMobAds session].testingMode = RevMobAdsTestingModeWithAds;
		}
		
		RevMobFullscreen *ad = [[RevMobAds session] fullscreen];
		
		[ad loadWithSuccessHandler:^(RevMobFullscreen *fs) {
			[fs showAd];
			[self revmobAdDisplayed];
		} andLoadFailHandler:^(RevMobFullscreen *fs, NSError *error) {
			[self revmobAdDidFailWithError:error];
		} onClickHandler:^{
			[self revmobUserClickedInTheAd];
		} onCloseHandler:^{
			[self revmobUserClosedTheAd];
		}];
		 */
	}
}

-(void)handleModuleFail
{
	//LeadboltOverlay *leadboltAd = [LeadboltOverlay createAdWithSectionid:@"599288495" view:self.view];
	//[leadboltAd loadAd];
}


-(id)init {
	if (self = [super init]) {
		// Has an ad request already been made
		_portraitIsLoaded = NO;
		_landscapeIsLoaded = NO;
		adIsLoaded = NO;
		_interstitialAdShowing = NO;
		_bannerAdShowing = NO;
		_receivedBannerAd = NO;
		_landscapeBannerAdRequested = NO;
		_portraitBannerAdRequested = NO;
		//[self initBannerAd];
		NSLog(@"Initializing banner ads...");
		CGPoint originForLandscape = CGPointMake(0.0, self.view.frame.size.width);
		CGPoint originForPortrait = CGPointMake(0.0, self.view.frame.size.height);
		adViewLandscape = [[GADBannerView alloc] initWithAdSize:kGADAdSizeSmartBannerLandscape origin:originForLandscape];
		adViewPortrait = [[GADBannerView alloc] initWithAdSize:kGADAdSizeSmartBannerPortrait origin:originForPortrait];
		adViewPortrait.delegate = self;
		adViewLandscape.delegate = self;
		if ([AdDelegate devMode])
		{
			adViewPortrait.adUnitID = @"ca-app-pub-4343476466504805/5924461379";
			adViewLandscape.adUnitID = @"ca-app-pub-4343476466504805/5924461379";
		}
		else
		{
			adViewPortrait.adUnitID = @"ca-app-pub-4343476466504805/4824661374";
			adViewLandscape.adUnitID = @"ca-app-pub-4343476466504805/4824661374";
		}
	}
	return self;
}

-(GADRequest *)request {
	GADRequest *request = [GADRequest request];
	
	if ([AdDelegate devMode])
	{
	request.testDevices = [NSArray arrayWithObjects:GAD_SIMULATOR_ID,@"a49c8a1efbe5e25bf6f3a4cc46b32044",@"d9239ec43d90594953fb81925ce26522",nil];
	}
	
	return request;
}


-(void)adViewDidReceiveAd:(GADBannerView *)view {
	NSLog(@"Received banner ad.");
	_receivedBannerAd = YES;
	if ([view.mediatedAdView isKindOfClass:[GADBannerView class]]) {
		// The AdMob banner ads scroll vertically if you drag your finger across them and it looks lame.
		// This disables that.
		[self preventGADBannerViewBounceScrolling:(GADBannerView *) view.mediatedAdView];
	}

	[self showBannerAd:view];
}

- (void)showBannerAd: (GADBannerView *)view {
	NSLog(@"Showing Banner Ad...");
	
	[UIView beginAnimations:@"BannerSlide" context:nil];
	
	if (GADAdSizeEqualToSize(view.adSize, kGADAdSizeSmartBannerLandscape))
	{
		view.frame = CGRectMake(0.0,
								self.view.frame.size.width -
								view.frame.size.height,
								view.frame.size.width,
								view.frame.size.height);
	}else{
		view.frame = CGRectMake(0.0,
								self.view.frame.size.height -
								view.frame.size.height,
								view.frame.size.width,
								view.frame.size.height);
	}
	[UIView commitAnimations];
	_bannerAdShowing = YES;
}

- (void)revmobAdDisplayed {
	_interstitialAdShowing = YES;
	NSLog(@"Interstitial ad is showing");
}

- (void)revmobUserClosedTheAd {
	_interstitialAdShowing = NO;
	NSLog(@"Interstitial ad closed");
}

- (void)revmobAdDidFailWithError:(NSError *)error
{
	NSLog(@"Interstitial errored: %@", [error localizedFailureReason]);
}

- (void)revmobUserClickedInTheAd {
	
}

- (void)adView:(GADBannerView *)view didFailToReceiveAdWithError:(GADRequestError *)error {
	NSLog(@"Failed to receive ad with error: %@", [error localizedFailureReason]);
}

+ (void)disableBannerAds
{
	[[NSUserDefaults standardUserDefaults] setBool:TRUE forKey:@"DisableBannerAds"];
	[[NSUserDefaults standardUserDefaults] synchronize];
    DebugLog(@"Banner ads are now disabled.");
    
    /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Banner Ads Disabled" message:@"Banner ads have been disabled. Restart app to take effect." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
    [alert show];*/
}

+ (void)disableInterstitialAds
{
	[[NSUserDefaults standardUserDefaults] setBool:TRUE forKey:@"DisableInterstitialAds"];
	[[NSUserDefaults standardUserDefaults] synchronize];
    DebugLog(@"Interstitial ads are now disabled.");
	
	bool interstitialAds = [[NSUserDefaults standardUserDefaults] valueForKey:@"DisableInterstitialAds"];
	if (interstitialAds)
	{
		NSLog(@"DisableInterstitialAds = TRUE");
	}
	else
	{
		NSLog(@"DisableInterstitialAds = FALSE");
	}
    
    /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Interstitial Ads Disabled" message:@"Interstitial ads have been disabled. Restart app to take effect." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
    [alert show];*/
    
}

+ (void)enableBannerAds
{
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"DisableBannerAds"];
	[[NSUserDefaults standardUserDefaults] synchronize];
    DebugLog(@"Banner ads are now enabled.");
    
    /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Banner Ads Enabled" message:@"Banner ads have been enabled. Restart app to take effect." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
    [alert show];*/
}

+ (void)enableInterstitialAds
{
	[[NSUserDefaults standardUserDefaults] removeObjectForKey:@"DisableInterstitialAds"];
	[[NSUserDefaults standardUserDefaults] synchronize];
	DebugLog(@"Interstitial ads are now enabled.");
	
    /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Interstitial Ads Enabled" message:@"Interstitial ads have been enabled. Restart app to take effect." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
    [alert show];*/
}

+ (bool)bannerAdsAreDisabled
{
	BOOL disableBannerAds = [[NSUserDefaults standardUserDefaults] valueForKey:@"DisableBannerAds"];
	
    if (disableBannerAds)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

+ (bool)interstitialAdsAreDisabled
{
	BOOL disableInterstitialAds = [[NSUserDefaults standardUserDefaults] valueForKey:@"DisableInterstitialAds"];
	
	if (disableInterstitialAds)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

- (void)preventGADBannerViewBounceScrolling:(GADBannerView*)bannerView {
    for (UIWebView *webView in bannerView.subviews) {
        if ([webView isKindOfClass:[UIWebView class]]) {
            webView.scrollView.bounces = NO;
        }
    }
}


@end
