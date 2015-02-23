//
//  AdvancedView.h
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
#import "Player.h"
#import "GoogleAnalytics.h"

int TimerCountNumber;
int TimerCountSeconds;
int TimerCountMinutes;

@interface AdvancedView: GAITrackedViewController {
    Player *player;
    UIImageView *speaker;
    NSTimer *timer;
}

-(void)timerCountThenPlay:(NSString *)frequency;

-(IBAction)timerSwitchValueChanged:(id)sender;
-(IBAction)timerStepperValueChanged:(id)sender;
-(IBAction)play8000:(id)sender;
-(IBAction)play9000:(id)sender;
-(IBAction)play10000:(id)sender;
-(IBAction)play11000:(id)sender;
-(IBAction)play12000:(id)sender;
-(IBAction)play13000:(id)sender;
-(IBAction)play14000:(id)sender;
-(IBAction)play15000:(id)sender;
-(IBAction)play16000:(id)sender;
-(IBAction)play17000:(id)sender;
-(IBAction)play18000:(id)sender;
-(IBAction)play19000:(id)sender;
-(IBAction)play20000:(id)sender;
-(IBAction)play21000:(id)sender;
-(IBAction)play22000:(id)sender;
-(IBAction)switchBack:(id)sender;

-(IBAction)stop:(id)sender;



@property (nonatomic, strong) IBOutlet UIImageView *_speaker;
@property (nonatomic, strong) IBOutlet UISwitch *pulseSwitch;
@property (nonatomic, strong) IBOutlet UISwitch *timerSwitch;
@property (nonatomic, strong) IBOutlet UIStepper *timerStepper;
@property (nonatomic, strong) IBOutlet UILabel *timerDisplay;
@property (nonatomic, strong) IBOutlet UIButton *stopButton;



@end