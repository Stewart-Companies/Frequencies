//
//  AdDelegate.h
//  Frequencies
//
//  Created by Corey Stewart on 5/22/13.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GADBannerView.h"
#import "ViewController.h"
#import <StoreKit/StoreKit.h>
#import <Security/Security.h>
#import "GADInterstitial.h"
#import "ViewController.h"
#import "GADBannerViewDelegate.h"
#import "GADRequest.h"
#import "LeadBoltOverlay.h"
#import <RevMobAds/RevMobAds.h>
#import "NavigationController.h"



@interface AdDelegate : UIViewController <GADBannerViewDelegate, RevMobAdsDelegate>{
    GADBannerView *adViewPortrait;
	GADBannerView *adViewLandscape;
	id currentDelegate_;
}

- (void)initBannerAd;
- (void)showInterstitialAdForView: (UIView *)view;
- (void)showAdBannerForViewController: (UIViewController *)rootViewController inLandscape: (bool *)inLandscape;
+ (void)disableBannerAds;
+ (void)disableInterstitialAds;
+ (void)enableBannerAds;
+ (void)enableInterstitialAds;
+ (bool)bannerAdsAreDisabled;
+ (bool)interstitialAdsAreDisabled;
+ (BOOL)devMode;
+(AdDelegate *)shared;

@property (nonatomic, assign) BOOL portraitIsLoaded;
@property (nonatomic, assign) BOOL landscapeIsLoaded;
@property (nonatomic, assign) BOOL receivedBannerAd;
@property (nonatomic, assign) BOOL interstitialAdShowing;
@property (nonatomic, assign) BOOL bannerAdShowing;
@property (nonatomic, assign) BOOL bannerAdCanShowWhenReceived;
@property (nonatomic, assign) BOOL landscapeBannerAdRequested;
@property (nonatomic, assign) BOOL portraitBannerAdRequested;
@end
