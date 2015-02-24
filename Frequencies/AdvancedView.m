//
//  AdvancedView.m
//  Frequencies
//
//  Created by Corey Stewart on 10/30/11.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import "AdvancedView.h"
#import "ViewController.h"

@implementation AdvancedView

-(IBAction)switchBack:(id)sender {
    [self stop];
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (UIViewController *)viewControllerForPresentingModalView {
    return self;
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

- (void)play: (NSString *)frequency
{
    if (_timerStepper.value != 0 && _timerSwitch.isOn == YES && timer == nil){
        
        timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerCountThenPlay:) userInfo:frequency repeats:YES];
        
    }
    else
    {
        _timerSwitch.on = NO;
        [self timerSwitchValueChanged:nil];
        if (_pulseSwitch.on == YES)
        {
            [player playFrequency:[NSString stringWithFormat:@"%@%@",frequency,@"p"]];
        }else{
            [player playFrequency:frequency];
        }
        [self._speaker setHidden:FALSE];
		_stopButton.enabled = YES;
        _pulseSwitch.enabled = NO;
        _timerSwitch.enabled = NO;
    }
}

- (void)playPulseForDuration: (int)duration forFrequency: (NSString *)frequency
{
    [player playFrequency:frequency];
}

- (void)stop
{
    [player stopAll];
    [self._speaker setHidden:TRUE];
    _pulseSwitch.enabled = YES;
    _timerSwitch.enabled = YES;
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
    if (!TimerCountNumber < 60)
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
    //NSLog(@"%i:%i", TimerCountMinutes,TimerCountSeconds);
    
    if (TimerCountNumber == 0){
        [self clearTimer];
        [self play:frequency];
    }
}

//button actions
-(IBAction)play8000:(id)sender{[self play:@"8000"];}
-(IBAction)play9000:(id)sender{[self play:@"9000"];}
-(IBAction)play10000:(id)sender{[self play:@"10000"];}
-(IBAction)play11000:(id)sender{[self play:@"11000"];}
-(IBAction)play12000:(id)sender{[self play:@"12000"];}
-(IBAction)play13000:(id)sender{[self play:@"13000"];}
-(IBAction)play14000:(id)sender{[self play:@"14000"];}
-(IBAction)play15000:(id)sender{[self play:@"15000"];}
-(IBAction)play16000:(id)sender{[self play:@"16000"];}
-(IBAction)play17000:(id)sender{[self play:@"17000"];}
-(IBAction)play18000:(id)sender{[self play:@"18000"];}
-(IBAction)play19000:(id)sender{[self play:@"19000"];}
-(IBAction)play20000:(id)sender{[self play:@"20000"];}
-(IBAction)play21000:(id)sender{[self play:@"21000"];}
-(IBAction)play22000:(id)sender{[self play:@"22000"];}
-(IBAction)stop:(id)sender{[self stop];}

-(IBAction)timerSwitchValueChanged:(id)sender{
    _timerDisplay.enabled = _timerSwitch.isOn;
    _timerStepper.enabled = _timerSwitch.isOn;
    [self clearTimer];
}

-(IBAction)timerStepperValueChanged:(id)sender{
    
    TimerCountNumber = _timerStepper.value;
    if (!_timerStepper.value < 60)
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
	// Do any additional setup after loading the view, typically from a nib.
    
    player = [[Player alloc] init];
    
    //Google Analytics
    self.screenName = @"Advanced Screen";
    
    //Show ad
    [[AdDelegate shared] showAdBannerForViewController:self inLandscape:NO];
}


-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)prefersStatusBarHidden
{
    return TRUE;
}


@end
