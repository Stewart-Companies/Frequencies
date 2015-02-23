//
//  Player.m
//  Frequencies
//
//  Created by Corey Stewart on 5/22/13.
//
//

#import "Player.h"

@implementation Player
static AVAudioPlayer *player8000;
static AVAudioPlayer *player9000;
static AVAudioPlayer *player10000;
static AVAudioPlayer *player11000;
static AVAudioPlayer *player12000;
static AVAudioPlayer *player13000;
static AVAudioPlayer *player14000;
static AVAudioPlayer *player15000;
static AVAudioPlayer *player16000;
static AVAudioPlayer *player17000;
static AVAudioPlayer *player18000;
static AVAudioPlayer *player19000;
static AVAudioPlayer *player20000;
static AVAudioPlayer *player21000;
static AVAudioPlayer *player22000;
static AVAudioPlayer *playerpattern8000;
static AVAudioPlayer *playerpattern9000;
static AVAudioPlayer *playerpattern10000;
static AVAudioPlayer *playerpattern11000;
static AVAudioPlayer *playerpattern12000;
static AVAudioPlayer *playerpattern13000;
static AVAudioPlayer *playerpattern14000;
static AVAudioPlayer *playerpattern15000;
static AVAudioPlayer *playerpattern16000;
static AVAudioPlayer *playerpattern17000;
static AVAudioPlayer *playerpattern18000;
static AVAudioPlayer *playerpattern19000;
static AVAudioPlayer *playerpattern20000;
static AVAudioPlayer *playerpattern21000;
static AVAudioPlayer *playerpattern22000;
static AVAudioPlayer *ringtone13000;
static AVAudioPlayer *ringtone14000;
static AVAudioPlayer *ringtone15000;
static AVAudioPlayer *ringtone16000;
static AVAudioPlayer *ringtone17000;
static AVAudioPlayer *ringtone18000;
static AVAudioPlayer *ringtone19000;
static AVAudioPlayer *ringtone20000;
static AVAudioPlayer *ringtone21000;
static AVAudioPlayer *ringtone22000;

-(IBAction)setPlayer:(id)sender{
	[self setPlayer];
}
-(IBAction)play8000:(id)sender{
	[self playFrequency:@"8000"];
}

//Should run while view is loaded
- (void) setPlayer
{
#if !defined( OSX )
	NSLog(@"Category set");
    [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryPlayback error:nil];
#else
	NSLog(@"Not iPhone");
#endif
    
    NSURL *url8000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"8000" ofType:@"wav"]];
	player8000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url8000 error:nil];
	[player8000 setNumberOfLoops:-1];
    NSURL *url9000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"9000" ofType:@"wav"]];
	player9000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url9000 error:nil];
	[player9000 setNumberOfLoops:-1];
    NSURL *url10000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"10000" ofType:@"wav"]];
	player10000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url10000 error:nil];
	[player10000 setNumberOfLoops:-1];
    NSURL *url11000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"11000" ofType:@"wav"]];
	player11000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url11000 error:nil];
	[player11000 setNumberOfLoops:-1];
    NSURL *url12000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"12000" ofType:@"wav"]];
	player12000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url12000 error:nil];
	[player12000 setNumberOfLoops:-1];
    NSURL *url13000= [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"13000" ofType:@"wav"]];
	player13000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url13000 error:nil];
	[player13000 setNumberOfLoops:-1];
    NSURL *url14000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"14000" ofType:@"wav"]];
    player14000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url14000 error:nil];
	[player14000 setNumberOfLoops:-1];
    NSURL *url15000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"15000" ofType:@"wav"]];
	player15000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url15000 error:nil];
	[player15000 setNumberOfLoops:-1];
    NSURL *url16000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"16000" ofType:@"wav"]];
	player16000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url16000 error:nil];
	[player16000 setNumberOfLoops:-1];
    NSURL *url17000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"17000" ofType:@"wav"]];
	player17000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url17000 error:nil];
	[player17000 setNumberOfLoops:-1];
    NSURL *url18000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"18000" ofType:@"wav"]];
	player18000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url18000 error:nil];
	[player18000 setNumberOfLoops:-1];
    NSURL *url19000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"19000" ofType:@"wav"]];
	player19000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url19000 error:nil];
	[player19000 setNumberOfLoops:-1];
    NSURL *url20000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"20000" ofType:@"wav"]];
	player20000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url20000 error:nil];
	[player20000 setNumberOfLoops:-1];
    NSURL *url21000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"21000" ofType:@"wav"]];
	player21000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url21000 error:nil];
	[player21000 setNumberOfLoops:-1];
    NSURL *url22000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"22000" ofType:@"wav"]];
	player22000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url22000 error:nil];
	[player22000 setNumberOfLoops:-1];
    NSURL *urlpattern8000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern8000" ofType:@"wav"]];
	playerpattern8000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern8000 error:nil];
	[playerpattern8000 setNumberOfLoops:-1];
    NSURL *urlpattern9000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern9000" ofType:@"wav"]];
	playerpattern9000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern9000 error:nil];
	[playerpattern9000 setNumberOfLoops:-1];
	NSURL *urlpattern10000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern10000" ofType:@"wav"]];
	playerpattern10000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern10000 error:nil];
	[playerpattern10000 setNumberOfLoops:-1];
	NSURL *urlpattern11000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern11000" ofType:@"wav"]];
	playerpattern11000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern11000 error:nil];
	[playerpattern11000 setNumberOfLoops:-1];
    NSURL *urlpattern12000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern12000" ofType:@"wav"]];
	playerpattern12000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern12000 error:nil];
	[playerpattern12000 setNumberOfLoops:-1];
    NSURL *urlpattern13000= [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern13000" ofType:@"wav"]];
	playerpattern13000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern13000 error:nil];
	[playerpattern13000 setNumberOfLoops:-1];
	NSURL *urlpattern14000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern14000" ofType:@"wav"]];
    playerpattern14000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern14000 error:nil];
	[playerpattern14000 setNumberOfLoops:-1];
    NSURL *urlpattern15000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern15000" ofType:@"wav"]];
	playerpattern15000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern15000 error:nil];
	[playerpattern15000 setNumberOfLoops:-1];
    NSURL *urlpattern16000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern16000" ofType:@"wav"]];
	playerpattern16000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern16000 error:nil];
	[playerpattern16000 setNumberOfLoops:-1];
    NSURL *urlpattern17000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern17000" ofType:@"wav"]];
	playerpattern17000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern17000 error:nil];
	[playerpattern17000 setNumberOfLoops:-1];
    NSURL *urlpattern18000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern18000" ofType:@"wav"]];
	playerpattern18000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern18000 error:nil];
	[playerpattern18000 setNumberOfLoops:-1];
    NSURL *urlpattern19000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern19000" ofType:@"wav"]];
	playerpattern19000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern19000 error:nil];
	[playerpattern19000 setNumberOfLoops:-1];
    NSURL *urlpattern20000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern20000" ofType:@"wav"]];
	playerpattern20000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern20000 error:nil];
	[playerpattern20000 setNumberOfLoops:-1];
    NSURL *urlpattern21000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern21000" ofType:@"wav"]];
	playerpattern21000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern21000 error:nil];
	[playerpattern21000 setNumberOfLoops:-1];
	NSURL *urlpattern22000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern22000" ofType:@"wav"]];
	playerpattern22000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlpattern22000 error:nil];
	[playerpattern22000 setNumberOfLoops:-1];
    NSURL *urlringtone13000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern13000" ofType:@"wav"]];
	ringtone13000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlringtone13000 error:nil];
	[ringtone13000 setNumberOfLoops:3];
    NSURL *urlringtone14000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern14000" ofType:@"wav"]];
	ringtone14000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlringtone14000 error:nil];
	[ringtone14000 setNumberOfLoops:3];
    NSURL *urlringtone15000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern15000" ofType:@"wav"]];
	ringtone15000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlringtone15000 error:nil];
	[ringtone15000 setNumberOfLoops:3];
    NSURL *urlringtone16000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern16000" ofType:@"wav"]];
	ringtone16000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlringtone16000 error:nil];
	[ringtone16000 setNumberOfLoops:3];
    NSURL *urlringtone17000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern17000" ofType:@"wav"]];
	ringtone17000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlringtone17000 error:nil];
	[ringtone17000 setNumberOfLoops:3];
    NSURL *urlringtone18000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern18000" ofType:@"wav"]];
	ringtone18000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlringtone18000 error:nil];
	[ringtone18000 setNumberOfLoops:3];
    NSURL *urlringtone19000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern19000" ofType:@"wav"]];
	ringtone19000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlringtone19000 error:nil];
	[ringtone19000 setNumberOfLoops:3];
    NSURL *urlringtone20000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern20000" ofType:@"wav"]];
	ringtone20000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlringtone20000 error:nil];
	[ringtone20000 setNumberOfLoops:3];
    NSURL *urlringtone21000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern21000" ofType:@"wav"]];
	ringtone21000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlringtone21000 error:nil];
	[ringtone21000 setNumberOfLoops:3];
    NSURL *urlringtone22000 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"pattern22000" ofType:@"wav"]];
	ringtone22000 = [[AVAudioPlayer alloc] initWithContentsOfURL:urlringtone22000 error:nil];
	[ringtone22000 setNumberOfLoops:3];
    
    [self prepareToPlay];
}

- (void)setPlayerRingtone
{
#ifdef __IPHONE
    [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryPlayback error: nil];
#endif
    
    
    
}

- (void)prepareToPlay
{
    [player8000 prepareToPlay];
    [player9000 prepareToPlay];
    [player10000 prepareToPlay];
    [player11000 prepareToPlay];
    [player12000 prepareToPlay];
    [player13000 prepareToPlay];
    [player14000 prepareToPlay];
    [player15000 prepareToPlay];
    [player16000 prepareToPlay];
    [player17000 prepareToPlay];
    [player18000 prepareToPlay];
    [player19000 prepareToPlay];
    [player20000 prepareToPlay];
    [player21000 prepareToPlay];
    [player22000 prepareToPlay];
    [playerpattern8000 prepareToPlay];
    [playerpattern9000 prepareToPlay];
    [playerpattern10000 prepareToPlay];
    [playerpattern11000 prepareToPlay];
    [playerpattern12000 prepareToPlay];
    [playerpattern13000 prepareToPlay];
    [playerpattern14000 prepareToPlay];
    [playerpattern15000 prepareToPlay];
    [playerpattern16000 prepareToPlay];
    [playerpattern17000 prepareToPlay];
    [playerpattern18000 prepareToPlay];
    [playerpattern19000 prepareToPlay];
    [playerpattern20000 prepareToPlay];
    [playerpattern21000 prepareToPlay];
    [playerpattern22000 prepareToPlay];
}

- (void)previewRingtone: (NSString *)frequency
{
    [self stopAll];
    [[self getPlayerName: frequency] play];
    _nowPlaying:[self getPlayerName: frequency];
}

- (void)playFrequency: (NSString *)frequency
{
    [self stopAll];
    [[self getPlayerName: frequency] play];
    _nowPlaying:[self getPlayerName: frequency];
}
    
- (AVAudioPlayer *)getPlayerName: (NSString *)frequency
{
    if ([frequency isEqual: @"8000"]){return player8000;}
    if ([frequency isEqual: @"9000"]){return player9000;}
    if ([frequency isEqual: @"10000"]){return player10000;}
    if ([frequency isEqual: @"11000"]){return player11000;}
    if ([frequency isEqual: @"12000"]){return player12000;}
    if ([frequency isEqual: @"13000"]){return player13000;}
    if ([frequency isEqual: @"14000"]){return player14000;}
    if ([frequency isEqual: @"15000"]){return player15000;}
    if ([frequency isEqual: @"16000"]){return player16000;}
    if ([frequency isEqual: @"17000"]){return player17000;}
    if ([frequency isEqual: @"18000"]){return player18000;}
    if ([frequency isEqual: @"19000"]){return player19000;}
    if ([frequency isEqual: @"20000"]){return player20000;}
    if ([frequency isEqual: @"21000"]){return player21000;}
    if ([frequency isEqual: @"22000"]){return player22000;}
    if ([frequency isEqual: @"8000p"]){return playerpattern8000;}
    if ([frequency isEqual: @"9000p"]){return playerpattern9000;}
    if ([frequency isEqual: @"10000p"]){return playerpattern10000;}
    if ([frequency isEqual: @"11000p"]){return playerpattern11000;}
    if ([frequency isEqual: @"12000p"]){return playerpattern12000;}
    if ([frequency isEqual: @"13000p"]){return playerpattern13000;}
    if ([frequency isEqual: @"14000p"]){return playerpattern14000;}
    if ([frequency isEqual: @"15000p"]){return playerpattern15000;}
    if ([frequency isEqual: @"16000p"]){return playerpattern16000;}
    if ([frequency isEqual: @"17000p"]){return playerpattern17000;}
    if ([frequency isEqual: @"18000p"]){return playerpattern18000;}
    if ([frequency isEqual: @"19000p"]){return playerpattern19000;}
    if ([frequency isEqual: @"20000p"]){return playerpattern20000;}
    if ([frequency isEqual: @"21000p"]){return playerpattern21000;}
    if ([frequency isEqual: @"22000p"]){return playerpattern22000;}
    if ([frequency isEqual: @"13000r"]){return ringtone13000;}
    if ([frequency isEqual: @"14000r"]){return ringtone14000;}
    if ([frequency isEqual: @"15000r"]){return ringtone15000;}
    if ([frequency isEqual: @"16000r"]){return ringtone16000;}
    if ([frequency isEqual: @"17000r"]){return ringtone17000;}
    if ([frequency isEqual: @"18000r"]){return ringtone18000;}
    if ([frequency isEqual: @"19000r"]){return ringtone19000;}
    if ([frequency isEqual: @"20000r"]){return ringtone20000;}
    if ([frequency isEqual: @"21000r"]){return ringtone21000;}
    if ([frequency isEqual: @"22000r"]){return ringtone22000;}
    else{NSLog(@"INTERNAL ERROR: You asked for '%@', but that's not a valid frequency.",frequency); return nil;}
}

- (void)stopAll
{
    [player8000 stop];
    [player9000 stop];
    [player10000 stop];
    [player11000 stop];
    [player12000 stop];
    [player13000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playerpattern8000 stop];
    [playerpattern9000 stop];
    [playerpattern10000 stop];
    [playerpattern11000 stop];
    [playerpattern12000 stop];
    [playerpattern13000 stop];
    [playerpattern14000 stop];
    [playerpattern15000 stop];
    [playerpattern16000 stop];
    [playerpattern17000 stop];
    [playerpattern18000 stop];
    [playerpattern19000 stop];
    [playerpattern20000 stop];
    [playerpattern21000 stop];
    [playerpattern22000 stop];
    [ringtone13000 stop];
    [ringtone14000 stop];
    [ringtone15000 stop];
    [ringtone16000 stop];
    [ringtone17000 stop];
    [ringtone18000 stop];
    [ringtone19000 stop];
    [ringtone20000 stop];
    [ringtone21000 stop];
    [ringtone22000 stop];
    _nowPlaying: nil;
}

@end
