//
//  ViewController.h
//  Frequencies
//
//  Created by Corey Stewart on 10/30/11.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import <AVFoundation/AVAudioPlayer.h>
#import "AudioToolBox/AudioToolBox.h"
#import "GADBannerView.h"
#import <StoreKit/StoreKit.h>
#import "AdDelegate.h"
#import "Player.h"
#import "GAITrackedViewController.h"
#import "GoogleAnalytics.h"
#import "AboutView.h"
#import "GADInterstitial.h"
#import "GADInterstitialDelegate.h"
#import "Ringtones.h"
#import "Localize.h"
#import "GADCustomEventInterstitial.h"
#import "GADCustomEventInterstitialDelegate.h"
#import "LeadboltOverlay.h"
//#import <RevMobAds/RevMobAds.h>
#import "AppTracker.h"


@interface ViewController : GAITrackedViewController <GADInterstitialDelegate> {
    BOOL bannerIsVisible;
    BOOL adsAreOff;
    IBOutlet UIImageView *imageView_;
    GADInterstitial *splashInterstitial_;
    GAITrackedViewController *tracker;
	NSString *adNetwork;
}
@property(nonatomic,strong) IBOutlet UILabel *devStripe;

//Internationalizations
@end
