//
//  Shared.h
//  FrequenciesPro
//
//  Created by Corey Stewart on 10/30/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <iAd/iAd.h>
#import <AVFoundation/AVAudioSession.h>
#import <AVFoundation/AVAudioPlayer.h>
#import "AudioToolBox/AudioToolBox.h"
#import "GADBannerView.h"

@interface Shared : NSObject {
    UIView *currentview;
    ADBannerView *adView;
    GADBannerView *bannerView_;
    BOOL bannerIsVisible;
    AVAudioPlayer *player8000;
    AVAudioPlayer *player10000;
    AVAudioPlayer *player12000;
    AVAudioPlayer *player14000;
    AVAudioPlayer *player15000;
    AVAudioPlayer *player16000;
    AVAudioPlayer *player17000;
    AVAudioPlayer *player18000;
    AVAudioPlayer *player19000;
    AVAudioPlayer *player20000;
    AVAudioPlayer *player21000;
    AVAudioPlayer *player22000;
    AVAudioPlayer *playeralternate1;
    AVAudioPlayer *playeralternate2;
    AVAudioPlayer *playeralternate3;
    AVAudioPlayer *playeralternate4;
    AVAudioPlayer *playeralternate5;
    AVAudioPlayer *playeralternate6;
    AVAudioPlayer *playeralternate7;
    AVAudioPlayer *playeralternate8;
    AVAudioPlayer *playeralternate9;
    AVAudioPlayer *playeralternate10;
    AVAudioPlayer *stop;
    UIButton *button8000;
    UIButton *button10000;
    UIButton *button12000;
    UIButton *button14000;
    UIButton *button15000;
    UIButton *button16000;
    UIButton *button17000;
    UIButton *button18000;
    UIButton *button19000;
    UIButton *button20000;
    UIButton *button21000;
    UIButton *button22000;
    UIButton *buttonstop;
    UIButton *buttonalternate1;
    UIButton *buttonalternate2;
    UIButton *buttonalternate3;
    UIButton *buttonalternate4;
    UIButton *buttonalternate5;
    UIButton *buttonalternate6;
    UIButton *buttonalternate7;
    UIButton *buttonalternate8;
    UIButton *buttonalternate9;
    UIButton *buttonalternate10;
    UILabel *label8000;
    UILabel *label10000;
    UILabel *label12000;
    UILabel *label14000;
    UILabel *label15000;
    UILabel *label16000;
    UILabel *label17000;
    UILabel *label18000;
    UILabel *label19000;
    UILabel *label20000;
    UILabel *label21000;
    UILabel *label22000;
    UILabel *labelage8000;
    UILabel *labelage10000;
    UILabel *labelage12000;
    UILabel *labelage14000;
    UILabel *labelage15000;
    UILabel *labelage16000;
    UILabel *labelage17000;
    UILabel *labelage18000;
    UILabel *labelage19000;
    UILabel *labelage20000;
    UILabel *labelage21000;
    UILabel *labelage22000;
    UILabel *labelage;
    UILabel *labelfrequency;
}

-(IBAction)switchchildrenView:(id)sender;
-(IBAction)switchdogView:(id)sender;
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
-(IBAction)playalternate1:(id)sender;
-(IBAction)playalternate2:(id)sender;
-(IBAction)playalternate3:(id)sender;
-(IBAction)playalternate4:(id)sender;
-(IBAction)playalternate5:(id)sender;
-(IBAction)playalternate6:(id)sender;
-(IBAction)playalternate7:(id)sender;
-(IBAction)playalternate8:(id)sender;
-(IBAction)playalternate9:(id)sender;
-(IBAction)playalternate10:(id)sender;
-(IBAction)help:(id)sender;

-(IBAction)stop:(id)sender;


@property (nonatomic, retain) IBOutlet UIView *currentview;
@property (nonatomic,assign) BOOL bannerIsVisible;
@property (nonatomic, retain) IBOutlet UIButton *button8000;
@property (nonatomic, retain) IBOutlet UIButton *button10000;
@property (nonatomic, retain) IBOutlet UIButton *button12000;
@property (nonatomic, retain) IBOutlet UIButton *button14000;
@property (nonatomic, retain) IBOutlet UIButton *button15000;
@property (nonatomic, retain) IBOutlet UIButton *button16000;
@property (nonatomic, retain) IBOutlet UIButton *button17000;
@property (nonatomic, retain) IBOutlet UIButton *button18000;
@property (nonatomic, retain) IBOutlet UIButton *button19000;
@property (nonatomic, retain) IBOutlet UIButton *button20000;
@property (nonatomic, retain) IBOutlet UIButton *button21000;
@property (nonatomic, retain) IBOutlet UIButton *button22000;
@property (nonatomic, retain) IBOutlet UIButton *buttonalternate1;
@property (nonatomic, retain) IBOutlet UIButton *buttonalternate2;
@property (nonatomic, retain) IBOutlet UIButton *buttonalternate3;
@property (nonatomic, retain) IBOutlet UIButton *buttonalternate4;
@property (nonatomic, retain) IBOutlet UIButton *buttonalternate5;
@property (nonatomic, retain) IBOutlet UIButton *buttonalternate6;
@property (nonatomic, retain) IBOutlet UIButton *buttonalternate7;
@property (nonatomic, retain) IBOutlet UIButton *buttonalternate8;
@property (nonatomic, retain) IBOutlet UIButton *buttonalternate9;
@property (nonatomic, retain) IBOutlet UIButton *buttonalternate10;
@property (nonatomic, retain) IBOutlet UIButton *buttonstop;
@property (nonatomic, retain) IBOutlet UILabel *label8000;
@property (nonatomic, retain) IBOutlet UILabel *label10000;
@property (nonatomic, retain) IBOutlet UILabel *label12000;
@property (nonatomic, retain) IBOutlet UILabel *label14000;
@property (nonatomic, retain) IBOutlet UILabel *label15000;
@property (nonatomic, retain) IBOutlet UILabel *label16000;
@property (nonatomic, retain) IBOutlet UILabel *label17000;
@property (nonatomic, retain) IBOutlet UILabel *label18000;
@property (nonatomic, retain) IBOutlet UILabel *label19000;
@property (nonatomic, retain) IBOutlet UILabel *label20000;
@property (nonatomic, retain) IBOutlet UILabel *label21000;
@property (nonatomic, retain) IBOutlet UILabel *label22000;
@property (nonatomic, retain) IBOutlet UILabel *labelage8000;
@property (nonatomic, retain) IBOutlet UILabel *labelage10000;
@property (nonatomic, retain) IBOutlet UILabel *labelage12000;
@property (nonatomic, retain) IBOutlet UILabel *labelage14000;
@property (nonatomic, retain) IBOutlet UILabel *labelage15000;
@property (nonatomic, retain) IBOutlet UILabel *labelage16000;
@property (nonatomic, retain) IBOutlet UILabel *labelage17000;
@property (nonatomic, retain) IBOutlet UILabel *labelage18000;
@property (nonatomic, retain) IBOutlet UILabel *labelage19000;
@property (nonatomic, retain) IBOutlet UILabel *labelage20000;
@property (nonatomic, retain) IBOutlet UILabel *labelage21000;
@property (nonatomic, retain) IBOutlet UILabel *labelage22000;
@property (nonatomic, retain) IBOutlet UILabel *labelage;
@property (nonatomic, retain) IBOutlet UILabel *labelfrequency;


@end
