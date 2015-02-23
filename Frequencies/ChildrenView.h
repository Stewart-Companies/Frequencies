//
//  ChildrenView.h
//  Frequencies
//
//  Created by Corey Stewart on 10/30/11.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
#import "AudioToolBox/AudioToolBox.h"
#import <AVFoundation/AVAudioSession.h>
#import "ViewController.h"
#import "GoogleAnalytics.h"

int TimerCountNumber;
int TimerCountSeconds;
int TimerCountMinutes;

@interface ChildrenView: GAITrackedViewController {
    Player *player;
    IBOutlet UISlider *frequencyControl;
    NSTimer *timer;
}

-(void)timerCountThenPlay:(NSString *)frequency;

-(IBAction)timerSwitchValueChanged:(id)sender;
-(IBAction)timerStepperValueChanged:(id)sender;
-(IBAction)sliderValueChanged:(id)sender;
-(IBAction)playButton:(id)sender;
-(IBAction)play8000:(id)sender;
-(IBAction)play10000:(id)sender;
-(IBAction)play12000:(id)sender;
-(IBAction)play14000:(id)sender;
-(IBAction)play15000:(id)sender;
-(IBAction)play16000:(id)sender;
-(IBAction)play17000:(id)sender;
-(IBAction)play18000:(id)sender;
-(IBAction)play19000:(id)sender;
-(IBAction)play20000:(id)sender;
-(IBAction)play21000:(id)sender;
-(IBAction)play22000:(id)sender;
-(IBAction)playpattern8000:(id)sender;
-(IBAction)playpattern10000:(id)sender;
-(IBAction)playpattern12000:(id)sender;
-(IBAction)playpattern14000:(id)sender;
-(IBAction)playpattern15000:(id)sender;
-(IBAction)playpattern16000:(id)sender;
-(IBAction)playpattern17000:(id)sender;
-(IBAction)playpattern18000:(id)sender;
-(IBAction)playpattern19000:(id)sender;
-(IBAction)playpattern20000:(id)sender;
-(IBAction)playpattern21000:(id)sender;
-(IBAction)playpattern22000:(id)sender;
-(IBAction)switchBack:(id)sender;

-(IBAction)stop:(id)sender;

@property (nonatomic, strong) IBOutlet UISwitch *pulseSwitch;
@property (nonatomic, strong) IBOutlet UIImageView *person1;
@property (nonatomic, strong) IBOutlet UIImageView *person2;
@property (nonatomic, strong) IBOutlet UIImageView *person3;
@property (nonatomic, strong) IBOutlet UIImageView *person4;
@property (nonatomic, strong) IBOutlet UIImageView *person5;
@property (nonatomic, strong) IBOutlet UIImageView *person6;
@property (nonatomic, strong) IBOutlet UIImageView *person7;
@property (nonatomic, strong) IBOutlet UIImageView *person8;
@property (nonatomic, strong) IBOutlet UIImageView *person9;
@property (nonatomic, strong) IBOutlet UISwitch *timerSwitch;
@property (nonatomic, strong) IBOutlet UIStepper *timerStepper;
@property (nonatomic, strong) IBOutlet UILabel *timerDisplay;
@property (nonatomic, strong) IBOutlet UIButton *playButton;
@property (nonatomic, strong) IBOutlet UIButton *stopButton;



@end