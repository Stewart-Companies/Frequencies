//
//  AnimalView.m
//  Frequencies
//
//  Created by Corey Stewart on 10/30/11.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import "AnimalView.h"
#import "ViewController.h"

@implementation AnimalView

-(IBAction)switchBack:(id)sender {
    [self stop];
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


//Begining of Frequencies Pro Coding

//////////////////////////////Sounds//////////////////////////////

- (void)play: (NSString *)frequency
{
    [player playFrequency:frequency];
    [self._speaker setHidden:FALSE];
	_stopButton.enabled = YES;
}

- (void)stop
{
    [player stopAll];
    [self._speaker setHidden:TRUE];
	_stopButton.enabled = NO;
}

-(IBAction)play21000:(id)sender{[self play:@"21000"];}
-(IBAction)playpattern21000:(id)sender{[self play:@"21000p"];}
-(IBAction)stop:(id)sender{[self stop];}


- (UIViewController *)viewControllerForPresentingModalView {
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Initialize player
    player = [[Player alloc] init];
    
    //Google Analytics
    self.screenName = @"Animals Screen";

    //Show ad
    [[AdDelegate shared] showAdBannerForViewController:self inLandscape:NO];
}

- (void)viewWillAppear:(BOOL)animated
{
	// Show banner ad
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