//
//  AboutView.h
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
#import <AVFoundation/AVAudioSession.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>
#import "AdDelegate.h"
#import <StoreKit/StoreKit.h>

@interface AboutView: UIViewController<MFMailComposeViewControllerDelegate> {
}


-(IBAction)support:(id)sender;
-(IBAction)switchBack:(id)sender;
-(IBAction)feedback:(id)sender;
-(IBAction)bannerSwitchChangedState:(id)sender;
-(IBAction)interstitialSwitchChangedState:(id)sender;
-(IBAction)previewiRateSwitchChangedState:(id)sender;
-(IBAction)previewiVersionSwitchChangedState:(id)sender;
-(IBAction)disableDevMode:(id)sender;
-(IBAction)buildBarSwitchChangedState:(id)sender;

@property (nonatomic,strong) IBOutlet UIButton *debugButton;
@property (nonatomic,strong) IBOutlet UIView *debugMenu;
@property (nonatomic,strong) IBOutlet UILabel *buildNumber;
@property (nonatomic,strong) IBOutlet UILabel *versionNumber;
@property (nonatomic,strong) IBOutlet UISwitch *bannerSwitch;
@property (nonatomic,strong) IBOutlet UISwitch *interstitialSwitch;
@property (nonatomic,strong) IBOutlet UISwitch *previewiRateSwitch;
@property (nonatomic,strong) IBOutlet UISwitch *previewiVersionSwitch;
@property (nonatomic,strong) IBOutlet UISwitch *buildBarSwitch;
@property (nonatomic,strong) IBOutlet UIButton *disableDevMode;

//Localization




@end
