//
//  RevMobCustomEventInterstitial.m
//  FrequenciesPro
//
//  Created by Corey Stewart on 6/29/14.
//  Copyright (c) 2014 Stewart Companies Corp. All rights reserved.
//

#import "RevMobCustomEventInterstitial.h"
#import "AdDelegate.h"
#import <RevMobAds/RevMobAds.h>

@implementation RevMobCustomEventInterstitial
@synthesize delegate;

- (void)requestInterstitialAdWithParameter:(NSString *)serverParameter label:(NSString *)serverLabel request:(GADCustomEventRequest *)request {
	
	[RevMobAds startSessionWithAppID:@"5397c4f8326599ba08526021"];
	
	if ([AdDelegate devMode])
	{
		NSLog(@"RevMob ad requested.");
		[RevMobAds session].testingMode = RevMobAdsTestingModeWithAds;
	}
	
	RevMobFullscreen *ad = [[RevMobAds session] fullscreen];
	
	[ad loadWithSuccessHandler:^(RevMobFullscreen *fs) {
		[fs showAd];
		[self revmobAdDisplayed];
	} andLoadFailHandler:^(RevMobFullscreen *fs, NSError *error) {
		[self revmobAdDidFailWithError:error];
	} onClickHandler:^{
	} onCloseHandler:^{
	}];
	
}

- (void)revmobAdDisplayed {
	[self.delegate customEventInterstitial:self didReceiveAd:nil];
}

- (void)revmobAdDidFailWithError:(NSError *)error {
	[self.delegate customEventInterstitial:self didFailAd:error];
}

- (void)presentFromRootViewController:(UIViewController *)rootViewController {
	
}

@end
