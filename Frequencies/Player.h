//
//  Player.h
//  Frequencies
//
//  Created by Corey Stewart on 5/22/13.
//
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVAudioPlayer.h>
#import "AudioToolBox/AudioToolBox.h"
#if !defined( OSX )
#import <AVFoundation/AVAudioSession.h>
#endif


@interface Player : NSObject
{
}

- (IBAction)setPlayer:(id)sender;
- (IBAction)play8000:(id)sender;
- (void)setPlayer;
- (void)prepareToPlay;
- (void)stopAll;
- (void)playFrequency: (NSString *)frequency;
- (void)previewRingtone: (NSString *)frequency;

@property(nonatomic, strong) NSString *nowPlaying;

@end
