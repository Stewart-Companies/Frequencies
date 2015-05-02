//
//  ChildrenView.m
//  Frequencies
//
//  Created by Corey Stewart on 10/30/11.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import "ChildrenView.h"
#import "ViewController.h"

@implementation ChildrenView

-(IBAction)switchBack:(id)sender {
    [self stop];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (IBAction)sliderValueChanged:(id)sender {
    [self playSelectedValue];
}

- (IBAction)playButton:(id)sender {
    [self playSelectedValue];
}


- (void)playSelectedValue
{
    float value = roundf(frequencyControl.value);
    
    if (value == 1) {
        [self play:@"21000"];
    }
    if (value == 2) {
        [self play:@"20000"];
    }
    if (value == 3) {
        [self play:@"18000"];
    }
    if (value == 4) {
        [self play:@"17000"];
    }
    if (value == 5) {
        [self play:@"16000"];
    }
    if (value == 6) {
        [self play:@"15000"];
    }
    if (value == 7) {
        [self play:@"14000"];
    }
    if (value == 8) {
        [self play:@"12000"];
    }
    if (value == 9) {
        [self play:@"10000"];
    }
}


- (void)play: (NSString *)frequency
{
    if (_timerStepper.value != 0 && _timerSwitch.isOn == YES && timer == nil){
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerCountThenPlay:) userInfo:frequency repeats:YES];
        
    }
    else
    {
        _timerSwitch.on = NO;
        [self timerSwitchValueChanged:nil];
    [player playFrequency:frequency];
    [self allNotAnnoyed];
    if (_pulseSwitch.on == YES)
    {
        [player playFrequency:[NSString stringWithFormat:@"%@%@",frequency,@"p"]];
    }else{
        [player playFrequency:frequency];
    }
    _pulseSwitch.enabled = NO;
		_playButton.enabled = NO;
        _timerSwitch.enabled = NO;
		_stopButton.enabled = YES;
    
    if ([frequency isEqual:@"21000"])
    {
        [self allNotAnnoyed];
        _person1.image = [UIImage imageNamed:@"annoyed.png"];
    }
    if ([frequency isEqual:@"20000"])
    {
        [self allNotAnnoyed];
        _person1.image = [UIImage imageNamed:@"annoyed.png"];
        _person2.image = [UIImage imageNamed:@"annoyed.png"];
    }
    if ([frequency isEqual:@"18000"])
    {
        [self allNotAnnoyed];
        _person1.image = [UIImage imageNamed:@"annoyed.png"];
        _person2.image = [UIImage imageNamed:@"annoyed.png"];
        _person3.image = [UIImage imageNamed:@"annoyed.png"];
    }
    if ([frequency isEqual:@"17000"])
    {
        [self allNotAnnoyed];
        _person1.image = [UIImage imageNamed:@"annoyed.png"];
        _person2.image = [UIImage imageNamed:@"annoyed.png"];
        _person3.image = [UIImage imageNamed:@"annoyed.png"];
        _person4.image = [UIImage imageNamed:@"annoyed.png"];
        }
    if ([frequency isEqual:@"16000"])
    {
        [self allNotAnnoyed];
        _person1.image = [UIImage imageNamed:@"annoyed.png"];
        _person2.image = [UIImage imageNamed:@"annoyed.png"];
        _person3.image = [UIImage imageNamed:@"annoyed.png"];
        _person4.image = [UIImage imageNamed:@"annoyed.png"];
        _person5.image = [UIImage imageNamed:@"annoyed.png"];
    }
    if ([frequency isEqual:@"15000"])
    {
        [self allNotAnnoyed];
        _person1.image = [UIImage imageNamed:@"annoyed.png"];
        _person2.image = [UIImage imageNamed:@"annoyed.png"];
        _person3.image = [UIImage imageNamed:@"annoyed.png"];
        _person4.image = [UIImage imageNamed:@"annoyed.png"];
        _person5.image = [UIImage imageNamed:@"annoyed.png"];
        _person6.image = [UIImage imageNamed:@"annoyed.png"];
    }
    if ([frequency isEqual:@"14000"])
    {
        [self allNotAnnoyed];
        _person1.image = [UIImage imageNamed:@"annoyed.png"];
        _person2.image = [UIImage imageNamed:@"annoyed.png"];
        _person3.image = [UIImage imageNamed:@"annoyed.png"];
        _person4.image = [UIImage imageNamed:@"annoyed.png"];
        _person5.image = [UIImage imageNamed:@"annoyed.png"];
        _person6.image = [UIImage imageNamed:@"annoyed.png"];
        _person7.image = [UIImage imageNamed:@"annoyed.png"];
    }
    if ([frequency isEqual:@"12000"])
    {
        [self allNotAnnoyed];
        _person1.image = [UIImage imageNamed:@"annoyed.png"];
        _person2.image = [UIImage imageNamed:@"annoyed.png"];
        _person3.image = [UIImage imageNamed:@"annoyed.png"];
        _person4.image = [UIImage imageNamed:@"annoyed.png"];
        _person5.image = [UIImage imageNamed:@"annoyed.png"];
        _person6.image = [UIImage imageNamed:@"annoyed.png"];
        _person7.image = [UIImage imageNamed:@"annoyed.png"];
        _person8.image = [UIImage imageNamed:@"annoyed.png"];
    }
    if ([frequency isEqual:@"10000"])
    {
        [self allNotAnnoyed];
        _person1.image = [UIImage imageNamed:@"annoyed.png"];
        _person2.image = [UIImage imageNamed:@"annoyed.png"];
        _person3.image = [UIImage imageNamed:@"annoyed.png"];
        _person4.image = [UIImage imageNamed:@"annoyed.png"];
        _person5.image = [UIImage imageNamed:@"annoyed.png"];
        _person6.image = [UIImage imageNamed:@"annoyed.png"];
        _person7.image = [UIImage imageNamed:@"annoyed.png"];
        _person8.image = [UIImage imageNamed:@"annoyed.png"];
        _person9.image = [UIImage imageNamed:@"annoyed.png"];
    }
    }
}

- (void)stop
{
    [player stopAll];
    [self allNotAnnoyed];
    _pulseSwitch.enabled = YES;
    _timerSwitch.enabled = YES;
	_playButton.enabled = YES;
	_stopButton.enabled = NO;
    
    [self clearTimer];
    _timerSwitch.on = NO;
    [self timerSwitchValueChanged:nil];
}

- (void)clearTimer{
    if (timer != nil)
    {
        [timer invalidate];
        timer = nil;
    }
    _timerDisplay.text = @"00:00";
    _timerStepper.value = 0;
}

- (void)timerCountThenPlay: (NSTimer *)theTimer {
    NSString * frequency = [theTimer userInfo];
    TimerCountNumber = TimerCountNumber - 1;
    if (!(TimerCountNumber < 60))
    {
        TimerCountMinutes = floor(TimerCountNumber/60);
        TimerCountSeconds = (TimerCountNumber - (TimerCountMinutes * 60));
    }
    else
    {
        TimerCountSeconds = TimerCountNumber;
        TimerCountMinutes = 0;
    }
    _timerDisplay.text = [NSString stringWithFormat:@"%02i:%02i", TimerCountMinutes,TimerCountSeconds];
    _timerStepper.value = TimerCountNumber;
    
    if (TimerCountNumber == 0){
        [self clearTimer];
        [self play:frequency];
    }
}

- (void)allNotAnnoyed
{
    _person1.image = [UIImage imageNamed:@"notannoyed.png"];
    _person2.image = [UIImage imageNamed:@"notannoyed.png"];
    _person3.image = [UIImage imageNamed:@"notannoyed.png"];
    _person4.image = [UIImage imageNamed:@"notannoyed.png"];
    _person5.image = [UIImage imageNamed:@"notannoyed.png"];
    _person6.image = [UIImage imageNamed:@"notannoyed.png"];
    _person7.image = [UIImage imageNamed:@"notannoyed.png"];
    _person8.image = [UIImage imageNamed:@"notannoyed.png"];
    _person9.image = [UIImage imageNamed:@"notannoyed.png"];
}

-(IBAction)play8000:(id)sender{[self play:@"8000"];}
-(IBAction)play10000:(id)sender{[self play:@"10000"];}
-(IBAction)play12000:(id)sender{[self play:@"12000"];}
-(IBAction)play14000:(id)sender{[self play:@"14000"];}
-(IBAction)play15000:(id)sender{[self play:@"15000"];}
-(IBAction)play16000:(id)sender{[self play:@"16000"];}
-(IBAction)play17000:(id)sender{[self play:@"17000"];}
-(IBAction)play18000:(id)sender{[self play:@"18000"];}
-(IBAction)play19000:(id)sender{[self play:@"19000"];}
-(IBAction)play20000:(id)sender{[self play:@"20000"];}
-(IBAction)play21000:(id)sender{[self play:@"21000"];}
-(IBAction)play22000:(id)sender{[self play:@"22000"];}
-(IBAction)playpattern8000:(id)sender{[self play:@"8000p"];}
-(IBAction)playpattern10000:(id)sender{[self play:@"10000p"];}
-(IBAction)playpattern12000:(id)sender{[self play:@"12000p"];}
-(IBAction)playpattern14000:(id)sender{[self play:@"14000p"];}
-(IBAction)playpattern15000:(id)sender{[self play:@"15000p"];}
-(IBAction)playpattern16000:(id)sender{[self play:@"16000p"];}
-(IBAction)playpattern17000:(id)sender{[self play:@"17000p"];}
-(IBAction)playpattern18000:(id)sender{[self play:@"18000p"];}
-(IBAction)playpattern19000:(id)sender{[self play:@"19000p"];}
-(IBAction)playpattern20000:(id)sender{[self play:@"20000p"];}
-(IBAction)playpattern21000:(id)sender{[self play:@"21000p"];}
-(IBAction)playpattern22000:(id)sender{[self play:@"22000p"];}
-(IBAction)stop:(id)sender{[self stop];}


-(IBAction)timerSwitchValueChanged:(id)sender{
    _timerDisplay.enabled = _timerSwitch.isOn;
    _timerStepper.enabled = _timerSwitch.isOn;
    [self clearTimer];
}

-(IBAction)timerStepperValueChanged:(id)sender{
    
    TimerCountNumber = _timerStepper.value;
    if (!(_timerStepper.value < 60))
    {
        TimerCountMinutes = floor(_timerStepper.value/60);
        TimerCountSeconds = (_timerStepper.value - (TimerCountMinutes * 60));
    }
    else
    {
        TimerCountSeconds = _timerStepper;
        TimerCountMinutes = 0;
    }
    
    _timerDisplay.text = [NSString stringWithFormat:@"%02i:%02i", TimerCountMinutes,TimerCountSeconds];
	
}


- (void)viewDidLoad
{
	[super viewDidLoad];
	
    player = [[Player alloc] init];
    
	// Do any additional setup after loading the view, typically from a nib.
    
    //Google Analytics
    self.screenName = @"Children Screen";
	[[AdDelegate shared] showAdBannerForViewController:self inLandscape:YES];
}

- (void)viewWillAppear:(BOOL)animated
{
}

- (NSUInteger)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    return UIInterfaceOrientationMaskLandscape;
    
}

- (void)awakeFromNib
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskLandscape;
}

- (BOOL)prefersStatusBarHidden
{
    return TRUE;
}

@end
