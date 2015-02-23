//
//  Shared.m
//  FrequenciesPro
//
//  Created by Corey Stewart on 10/30/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Shared.h"

@implementation Shared

@synthesize bannerIsVisible;


//////////////////////////////iAd//////////////////////////////
- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    //Get device model
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if (!self.bannerIsVisible)
    {
        //run code for iphone if iphone
        if([deviceType isEqualToString:@"iPhone"]){
            [UIView beginAnimations:@"animateAdBannerOn" context:NULL];
            // banner is invisible now and moved out of the screen on 50 px
            banner.frame = CGRectOffset(banner.frame, 0, -50);
            [UIView commitAnimations];
            self.bannerIsVisible = YES;
        }
        //run code for ipod if ipod (same as iphone
        if([deviceType isEqualToString:@"iPod"]){
            [UIView beginAnimations:@"animateAdBannerOn" context:NULL];
            // banner is invisible now and moved out of the screen on 50 px
            banner.frame = CGRectOffset(banner.frame, 0, -50);
            [UIView commitAnimations];
            self.bannerIsVisible = YES;
        }
        //run code for ipad if ipad
        if([deviceType isEqualToString:@"iPad"]){
            [UIView beginAnimations:@"animateAdBannerOn" context:NULL];
            // banner is invisible now and moved out of the screen on 50 px
            banner.frame = CGRectOffset(banner.frame, 0, -66);
            [UIView commitAnimations];
            self.bannerIsVisible = YES;
        }
        
    }
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    //Get device model
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if (self.bannerIsVisible)
    {
        //run code for iphone if iphone
        if([deviceType isEqualToString:@"iPhone"]){
            [UIView beginAnimations:@"animateAdBannerOff" context:NULL];
            // banner is visible and we move it out of the screen, due to connection issue
            banner.frame = CGRectOffset(banner.frame, 0, 50);
            [UIView commitAnimations];
            self.bannerIsVisible = NO;
        }
        
        //run code for ipod if ipod (same as iphone)
        if([deviceType isEqualToString:@"iPod"]){
            [UIView beginAnimations:@"animateAdBannerOff" context:NULL];
            // banner is visible and we move it out of the screen, due to connection issue
            banner.frame = CGRectOffset(banner.frame, 0, 50);
            [UIView commitAnimations];
            self.bannerIsVisible = NO;
        }
        
        //run code for ipad if ipad
        if([deviceType isEqualToString:@"iPad"]){
            [UIView beginAnimations:@"animateAdBannerOff" context:NULL];
            // banner is visible and we move it out of the screen, due to connection issue
            banner.frame = CGRectOffset(banner.frame, 0, 66);
            [UIView commitAnimations];
            self.bannerIsVisible = NO;
        }
    }
}

//////////////////////////////Sounds//////////////////////////////
-(IBAction)play8000:(id)sender
{
    [player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
	[player8000 play];
}

-(IBAction)play10000:(id)sender
{
    [player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
	[player10000 play];
}

-(IBAction)play12000:(id)sender
{
    [player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
	[player12000 play];
}

-(IBAction)play14000:(id)sender
{
    [player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
	[player14000 play];
}

-(IBAction)play15000:(id)sender
{
    [player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
	[player15000 play];
}

-(IBAction)play16000:(id)sender
{
    [player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
	[player16000 play];
}

-(IBAction)play17000:(id)sender
{
    [player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
	[player17000 play];
}

-(IBAction)play18000:(id)sender
{
    [player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
	[player18000 play];
}

-(IBAction)play19000:(id)sender
{
    [player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
	[player19000 play];
}

-(IBAction)play20000:(id)sender
{
    [player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
	[player20000 play];
}

-(IBAction)play21000:(id)sender
{
    [player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
	[player21000 play];
}

-(IBAction)play22000:(id)sender
{
	[player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
    [player22000 play];
}


-(IBAction)playalternate1:(id)sender
{
	[player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
    [playeralternate1 play];
}

-(IBAction)playalternate2:(id)sender
{
	[player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
    [playeralternate2 play];
}

-(IBAction)playalternate3:(id)sender
{
	[player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
    [playeralternate3 play];
}

-(IBAction)playalternate4:(id)sender
{
	[player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
    [playeralternate4 play];
}

-(IBAction)playalternate5:(id)sender
{
	[player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
    [playeralternate5 play];
}

-(IBAction)playalternate6:(id)sender
{
	[player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
    [playeralternate6 play];
}

-(IBAction)playalternate7:(id)sender
{
	[player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
    [playeralternate7 play];
}

-(IBAction)playalternate8:(id)sender
{
	[player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
    [playeralternate8 play];
}

-(IBAction)playalternate9:(id)sender
{
	[player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
    [playeralternate9 play];
}

-(IBAction)playalternate10:(id)sender
{
	[player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
    [playeralternate10 play];
}

-(IBAction)stop:(id)sender
{
	[player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
}

-(IBAction)help:(id)sender
{
    [player8000 stop];
    [player10000 stop];
    [player12000 stop];
    [player14000 stop];
    [player15000 stop];
    [player16000 stop];
    [player17000 stop];
    [player18000 stop];
    [player19000 stop];
    [player20000 stop];
    [player21000 stop];
    [player22000 stop];
    [playeralternate1 stop];
    [playeralternate2 stop];
    [playeralternate3 stop];
    [playeralternate4 stop];
    [playeralternate5 stop];
    [playeralternate6 stop];
    [playeralternate7 stop];
    [playeralternate8 stop];
    [playeralternate9 stop];
    [playeralternate10 stop];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //////////////////////////////Buttons and Strings//////////////////////////////
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	NSArray *languages = [defaults objectForKey:@"AppleLanguages"];
    
	NSString * string8000 = NSLocalizedString(@"8000", @"");
    NSString * string10000 = NSLocalizedString(@"10000", @"");
    NSString * string12000 = NSLocalizedString(@"12000", @"");
    NSString * string14000 = NSLocalizedString(@"14000", @"");
    NSString * string15000 = NSLocalizedString(@"15000", @"");
    NSString * string16000 = NSLocalizedString(@"16000", @"");
    NSString * string17000 = NSLocalizedString(@"17000", @"");
    NSString * string18000 = NSLocalizedString(@"18000", @"");
    NSString * string19000 = NSLocalizedString(@"19000", @"");
    NSString * string20000 = NSLocalizedString(@"20000", @"");
    NSString * string21000 = NSLocalizedString(@"21000", @"");
    NSString * string22000 = NSLocalizedString(@"22000", @"");
    NSString * stringstop = NSLocalizedString(@"stop", @"");
    NSString * stringalternate1 = NSLocalizedString(@"alternate1", @"");
    NSString * stringalternate2 = NSLocalizedString(@"alternate2", @"");
    NSString * stringalternate3 = NSLocalizedString(@"alternate3", @"");
    NSString * stringalternate4 = NSLocalizedString(@"alternate4", @"");
    NSString * stringalternate5 = NSLocalizedString(@"alternate5", @"");
    NSString * stringalternate6 = NSLocalizedString(@"alternate6", @"");
    NSString * stringalternate7 = NSLocalizedString(@"alternate7", @"");
    NSString * stringalternate8 = NSLocalizedString(@"alternate8", @"");
    NSString * stringalternate9 = NSLocalizedString(@"alternate9", @"");
    NSString * stringalternate10 = NSLocalizedString(@"alternate10", @"");
    NSString * stringlabel8000 = NSLocalizedString(@"label8000", @"");
    NSString * stringlabel10000 = NSLocalizedString(@"label10000", @"");
    NSString * stringlabel12000 = NSLocalizedString(@"label12000", @"");
    NSString * stringlabel14000 = NSLocalizedString(@"label14000", @"");
    NSString * stringlabel15000 = NSLocalizedString(@"label15000", @"");
    NSString * stringlabel16000 = NSLocalizedString(@"label16000", @"");
    NSString * stringlabel17000 = NSLocalizedString(@"label17000", @"");
    NSString * stringlabel18000 = NSLocalizedString(@"label18000", @"");
    NSString * stringlabel19000 = NSLocalizedString(@"label19000", @"");
    NSString * stringlabel20000 = NSLocalizedString(@"label20000", @"");
    NSString * stringlabel21000 = NSLocalizedString(@"label21000", @"");
    NSString * stringlabel22000 = NSLocalizedString(@"label22000", @"");
    NSString * stringlabelage8000 = NSLocalizedString(@"labelage8000", @"");
    NSString * stringlabelage10000 = NSLocalizedString(@"labelage10000", @"");
    NSString * stringlabelage12000 = NSLocalizedString(@"labelage12000", @"");
    NSString * stringlabelage14000 = NSLocalizedString(@"labelage14000", @"");
    NSString * stringlabelage15000 = NSLocalizedString(@"labelage15000", @"");
    NSString * stringlabelage16000 = NSLocalizedString(@"labelage16000", @"");
    NSString * stringlabelage17000 = NSLocalizedString(@"labelage17000", @"");
    NSString * stringlabelage18000 = NSLocalizedString(@"labelage18000", @"");
    NSString * stringlabelage19000 = NSLocalizedString(@"labelage19000", @"");
    NSString * stringlabelage20000 = NSLocalizedString(@"labelage20000", @"");
    NSString * stringlabelage21000 = NSLocalizedString(@"labelage21000", @"");
    NSString * stringlabelage22000 = NSLocalizedString(@"labelage22000", @"");
    NSString * stringlabelage = NSLocalizedString(@"labelage", @"");
    NSString * stringlabelfrequency = NSLocalizedString(@"labelfrequency", @"");
    
	[button8000 setTitle:string8000 forState:UIControlStateNormal];
    [button10000 setTitle:string10000 forState:UIControlStateNormal];
    [button12000 setTitle:string12000 forState:UIControlStateNormal];
    [button14000 setTitle:string14000 forState:UIControlStateNormal];
    [button15000 setTitle:string15000 forState:UIControlStateNormal];
    [button16000 setTitle:string16000 forState:UIControlStateNormal];
    [button17000 setTitle:string17000 forState:UIControlStateNormal];
    [button18000 setTitle:string18000 forState:UIControlStateNormal];
    [button19000 setTitle:string19000 forState:UIControlStateNormal];
    [button20000 setTitle:string20000 forState:UIControlStateNormal];
    [button21000 setTitle:string21000 forState:UIControlStateNormal];
    [button22000 setTitle:string22000 forState:UIControlStateNormal];
    [buttonstop setTitle:stringstop forState:UIControlStateNormal];
    [buttonalternate1 setTitle:stringalternate1 forState:UIControlStateNormal];
    [buttonalternate2 setTitle:stringalternate2 forState:UIControlStateNormal];
    [buttonalternate3 setTitle:stringalternate3 forState:UIControlStateNormal];
    [buttonalternate4 setTitle:stringalternate4 forState:UIControlStateNormal];
    [buttonalternate5 setTitle:stringalternate5 forState:UIControlStateNormal];
    [buttonalternate6 setTitle:stringalternate6 forState:UIControlStateNormal];
    [buttonalternate7 setTitle:stringalternate7 forState:UIControlStateNormal];
    [buttonalternate8 setTitle:stringalternate8 forState:UIControlStateNormal];
    [buttonalternate9 setTitle:stringalternate9 forState:UIControlStateNormal];
    [buttonalternate10 setTitle:stringalternate10 forState:UIControlStateNormal];
    label8000.text=stringlabel8000;
    label10000.text=stringlabel10000;
    label12000.text=stringlabel12000;
    label14000.text=stringlabel14000;
    label15000.text=stringlabel15000;
    label16000.text=stringlabel16000;
    label17000.text=stringlabel17000;
    label18000.text=stringlabel18000;
    label19000.text=stringlabel19000;
    label20000.text=stringlabel20000;
    label21000.text=stringlabel21000;
    label22000.text=stringlabel22000;
    labelage8000.text=stringlabelage8000;
    labelage10000.text=stringlabelage10000;
    labelage12000.text=stringlabelage12000;
    labelage14000.text=stringlabelage14000;
    labelage15000.text=stringlabelage15000;
    labelage16000.text=stringlabelage16000;
    labelage17000.text=stringlabelage17000;
    labelage18000.text=stringlabelage18000;
    labelage19000.text=stringlabelage19000;
    labelage20000.text=stringlabelage20000;
    labelage21000.text=stringlabelage21000;
    labelage22000.text=stringlabelage22000;
    labelage.text=stringlabelage;
    labelfrequency.text=stringlabelfrequency;
    
    
    //////////////////////////////iAd//////////////////////////////
    //Run code for iPhone
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if([deviceType isEqualToString:@"iPhone"]){
        adView = [[ADBannerView alloc] initWithFrame:CGRectZero];
        adView.frame = CGRectOffset(adView.frame, 0, 460);
        adView.requiredContentSizeIdentifiers = [NSSet setWithObject:ADBannerContentSizeIdentifier320x50];
        adView.currentContentSizeIdentifier = ADBannerContentSizeIdentifier320x50;
        [self.currentview addSubview:adView];
        adView.delegate=self;
        self.bannerIsVisible=NO;
        [super viewDidLoad];
    }
    
    //Run code for iPod Touch (same as iPhone)
    if([deviceType isEqualToString:@"iPod"]){
        adView = [[ADBannerView alloc] initWithFrame:CGRectZero];
        adView.frame = CGRectOffset(adView.frame, 0, 460);
        adView.requiredContentSizeIdentifiers = [NSSet setWithObject:ADBannerContentSizeIdentifier320x50];
        adView.currentContentSizeIdentifier = ADBannerContentSizeIdentifier320x50;
        [self.currentview addSubview:adView];
        adView.delegate=self;
        self.bannerIsVisible=NO;
        [super viewDidLoad];
    }
    
    //Run code for iPad
    if([deviceType isEqualToString:@"iPad"]){
        adView = [[ADBannerView alloc] initWithFrame:CGRectZero];
        adView.frame = CGRectOffset(adView.frame, 0, 1004);
        adView.requiredContentSizeIdentifiers = [NSSet setWithObject:ADBannerContentSizeIdentifier320x50];
        adView.currentContentSizeIdentifier = ADBannerContentSizeIdentifier320x50;
        [self.currentview addSubview:adView];
        adView.delegate=self;
        self.bannerIsVisible=NO;
        [super viewDidLoad];
    }
    
    
    //ADMob
    // Create a view of the standard size at the bottom of the screen.
    bannerView_ = [[GADBannerView alloc]
                   initWithFrame:CGRectMake(0.0,
                                            self.currentview.frame.size.height -
                                            GAD_SIZE_320x50.height,
                                            GAD_SIZE_320x50.width,
                                            GAD_SIZE_320x50.height)];
    
    // Specify the ad's "unit identifier." This is your AdMob Publisher ID.
    bannerView_.adUnitID = @"a14ca35c9c9c750";
    
    // Let the runtime know which UIViewController to restore after taking
    // the user wherever the ad goes and add it to the view hierarchy.
    bannerView_.rootViewController = self;
    [self.currentview addSubview:bannerView_];
    
    // Initiate a generic request to load it with an ad.
    [bannerView_ loadRequest:[GADRequest request]];
    
    
    //////////////////////////////Sounds//////////////////////////////
    [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryPlayback error: nil];
    
	UInt32 doSetProperty = 0;
	AudioSessionSetProperty (
                             kAudioSessionProperty_OverrideCategoryMixWithOthers,
                             sizeof (doSetProperty),
                             &doSetProperty
                             );
    
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"8000" ofType:@"wav"]];
	player8000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
	[player8000 setNumberOfLoops:-1];
	[player8000 prepareToPlay];
    
    
    NSURL *url1 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"10000" ofType:@"wav"]];
	player10000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];
	[player10000 setNumberOfLoops:-1];
	[player10000 prepareToPlay];
    
    NSURL *url2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"12000" ofType:@"wav"]];
	player12000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
	[player12000 setNumberOfLoops:-1];
	[player12000 prepareToPlay];
    
    NSURL *url3 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"14000" ofType:@"wav"]];
	player14000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
	[player14000 setNumberOfLoops:-1];
	[player14000 prepareToPlay];
    
    NSURL *url4 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"15000" ofType:@"wav"]];
	player15000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
	[player15000 setNumberOfLoops:-1];
	[player15000 prepareToPlay];
    
    NSURL *url5 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"16000" ofType:@"wav"]];
	player16000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
	[player16000 setNumberOfLoops:-1];
	[player16000 prepareToPlay];
    
    NSURL *url6 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"17000" ofType:@"wav"]];
	player17000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url6 error:nil];
	[player17000 setNumberOfLoops:-1];
	[player17000 prepareToPlay];
    
    NSURL *url7 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"18000" ofType:@"wav"]];
	player18000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url7 error:nil];
	[player18000 setNumberOfLoops:-1];
	[player18000 prepareToPlay];
    
    NSURL *url8 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"19000" ofType:@"wav"]];
	player19000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url8 error:nil];
	[player19000 setNumberOfLoops:-1];
	[player19000 prepareToPlay];
    
    NSURL *url9 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"20000" ofType:@"wav"]];
	player20000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url9 error:nil];
	[player20000 setNumberOfLoops:-1];
	[player20000 prepareToPlay];
    
    NSURL *url10 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"21000" ofType:@"wav"]];
	player21000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url10 error:nil];
	[player21000 setNumberOfLoops:-1];
	[player21000 prepareToPlay];
    
    NSURL *url11 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"22000" ofType:@"wav"]];
	player22000 = [[AVAudioPlayer alloc] initWithContentsOfURL:url11 error:nil];
	[player22000 setNumberOfLoops:-1];
	[player22000 prepareToPlay];
    
    NSURL *url12 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Alternate1" ofType:@"wav"]];
	playeralternate1 = [[AVAudioPlayer alloc] initWithContentsOfURL:url12 error:nil];
	[playeralternate1 setNumberOfLoops:-1];
	[playeralternate1 prepareToPlay];
    
    NSURL *url13 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Alternate2" ofType:@"wav"]];
	playeralternate2 = [[AVAudioPlayer alloc] initWithContentsOfURL:url13 error:nil];
	[playeralternate2 setNumberOfLoops:-1];
	[playeralternate2 prepareToPlay];
    
    NSURL *url14 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Alternate3" ofType:@"wav"]];
	playeralternate3 = [[AVAudioPlayer alloc] initWithContentsOfURL:url14 error:nil];
	[playeralternate3 setNumberOfLoops:-1];
	[playeralternate3 prepareToPlay];
    
    NSURL *url15 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Alternate4" ofType:@"wav"]];
	playeralternate4 = [[AVAudioPlayer alloc] initWithContentsOfURL:url15 error:nil];
	[playeralternate4 setNumberOfLoops:-1];
	[playeralternate4 prepareToPlay];
    
    NSURL *url16 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Alternate5" ofType:@"wav"]];
	playeralternate5 = [[AVAudioPlayer alloc] initWithContentsOfURL:url16 error:nil];
	[playeralternate5 setNumberOfLoops:-1];
	[playeralternate5 prepareToPlay];
    
    NSURL *url17 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Alternate6" ofType:@"wav"]];
	playeralternate6 = [[AVAudioPlayer alloc] initWithContentsOfURL:url17 error:nil];
	[playeralternate6 setNumberOfLoops:-1];
	[playeralternate6 prepareToPlay];
    
    NSURL *url18 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Alternate7" ofType:@"wav"]];
	playeralternate7 = [[AVAudioPlayer alloc] initWithContentsOfURL:url18 error:nil];
	[playeralternate7 setNumberOfLoops:-1];
	[playeralternate7 prepareToPlay];
    
    NSURL *url19 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Alternate8" ofType:@"wav"]];
	playeralternate8 = [[AVAudioPlayer alloc] initWithContentsOfURL:url19 error:nil];
	[playeralternate8 setNumberOfLoops:-1];
	[playeralternate8 prepareToPlay];
    
    NSURL *url20 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Alternate9" ofType:@"wav"]];
	playeralternate9 = [[AVAudioPlayer alloc] initWithContentsOfURL:url20 error:nil];
	[playeralternate9 setNumberOfLoops:-1];
	[playeralternate9 prepareToPlay];
    
    NSURL *url21 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Alternate10" ofType:@"wav"]];
	playeralternate10 = [[AVAudioPlayer alloc] initWithContentsOfURL:url21 error:nil];
	[playeralternate10 setNumberOfLoops:-1];
	[playeralternate10 prepareToPlay];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    [bannerView_ release];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
