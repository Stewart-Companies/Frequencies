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
@import GoogleMobileAds;
#import <StoreKit/StoreKit.h>
#import "AdDelegate.h"
#import "Player.h"
#import "GAITrackedViewController.h"
#import "GoogleAnalytics.h"
#import "AboutView.h"
#import "Ringtones.h"


@interface ViewController : GAITrackedViewController <GADInterstitialDelegate> {
    BOOL bannerIsVisible;
    BOOL adsAreOff;
    GADInterstitial *splashInterstitial_;
    GAITrackedViewController *tracker;
	NSString *adNetwork;
}
@property(nonatomic,strong) IBOutlet UILabel *devStripe;

//Internationalizations
@end
