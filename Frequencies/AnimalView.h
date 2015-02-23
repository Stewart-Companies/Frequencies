//
//  AnimalView.h
//  Frequencies
//
//  Created by Corey Stewart on 10/30/11.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
#import "AudioToolBox/AudioToolBox.h"
#import <AVFoundation/AVAudioSession.h>
#import "GoogleAnalytics.h"

@interface AnimalView: GAITrackedViewController {
    Player *player;
    UIImageView *speaker;
}


-(IBAction)play21000:(id)sender;
-(IBAction)playpattern21000:(id)sender;
-(IBAction)switchBack:(id)sender;
-(IBAction)stop:(id)sender;

@property (nonatomic, strong) IBOutlet UIImageView *_speaker;
@property (nonatomic, strong) IBOutlet UIButton *stopButton;


@end