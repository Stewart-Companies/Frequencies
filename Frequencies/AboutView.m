//
//  AboutView.m
//  Frequencies
//
//  Created by Corey Stewart on 10/30/11.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import "AboutView.h"
#import "ViewController.h"

@implementation AboutView 


// Frequencies will display the dev menu here when devmode is on.


- (BOOL)prefersStatusBarHidden
{
    return TRUE;
}

-(IBAction)switchBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(IBAction)disableDevMode:(id)sender
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"DevMode"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    [AdDelegate enableBannerAds];
    [AdDelegate enableInterstitialAds];
    [_debugMenu setHidden:true];
    NSLog(@"Dev Menu is now disabled.");
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
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

#pragma mark - View lifecycle

-(IBAction)support:(id)sender {
    NSString *deviceType = [[UIDevice currentDevice] model];
    NSString *deviceversion = [[UIDevice currentDevice] systemVersion];
    NSString *appversion = [NSString stringWithFormat:@"Version %@",[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]];
    

    NSString *message = [NSString stringWithFormat:NSLocalizedString(@"SUPPORTMESSAGE", nil), deviceType,deviceversion,appversion];
    
    NSLog(@"%@", message);
    
    
    MFMailComposeViewController *mailController= [[MFMailComposeViewController alloc] init];
    mailController.mailComposeDelegate = self;
    [mailController setToRecipients:[NSArray arrayWithObjects:@"Frequencies Support<support@FrequenciesPro.com>",nil]];
    [mailController setSubject:@"Frequencies Support Request"];
    [mailController setMessageBody:message isHTML:NO];
    [self presentViewController:mailController animated:YES completion:nil];
}

-(IBAction)feedback:(id)sender {
    NSString *deviceType = [[UIDevice currentDevice] model];
    NSString *deviceversion = [[UIDevice currentDevice] systemVersion];
    NSString *appbuild = [NSString stringWithFormat:@"%@",[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]];
    
    
    NSString *message = [NSString stringWithFormat:@"Feedback: \n\n\n\n\n\n\n\n\nDevice: %@\niOS: %@\nApp Build: %@", deviceType,deviceversion,appbuild];
    
    NSLog(@"%@", message);
    
    
    MFMailComposeViewController *mailController= [[MFMailComposeViewController alloc] init];
    mailController.mailComposeDelegate = self;
    [mailController setToRecipients:[NSArray arrayWithObjects:@"Corey Stewart<corey@stewartcompanies.co>",nil]];
    [mailController setSubject:[NSString stringWithFormat:@"Feedback for build %@", appbuild]];
    [mailController setMessageBody:message isHTML:NO];
    [self presentViewController:mailController animated:YES completion:nil];
}

- (void)mailComposeController:(MFMailComposeViewController*)mailCon didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error {
    [self becomeFirstResponder];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)switchStates
{
    bool previewiRate = [[NSUserDefaults standardUserDefaults] valueForKey:@"PreviewiRate"];
    bool previewiVersion = [[NSUserDefaults standardUserDefaults] valueForKey:@"PreviewiVersion"];
    bool hideBuildBar = [[NSUserDefaults standardUserDefaults] valueForKey:@"HideBuildBar"];
    
    if ([AdDelegate bannerAdsAreDisabled])
    {
        _bannerSwitch.on = NO;
    }
    if ([AdDelegate interstitialAdsAreDisabled])
    {
        _interstitialSwitch.on = NO;
    }
    if (!previewiVersion)
    {
        _previewiVersionSwitch.on = NO;
    }
    if (!previewiRate)
    {
        _previewiRateSwitch.on = NO;
    }
    if (hideBuildBar)
    {
        _buildBarSwitch.on = NO;
    }
    
}

-(IBAction)previewiRateSwitchChangedState:(id)sender
{
    if (_previewiRateSwitch.isOn)
    {
        [[NSUserDefaults standardUserDefaults] setBool:TRUE forKey:@"PreviewiRate"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        NSLog(@"Preview iRate is enabled.");
        
        /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"iRate Preview Enabled" message:@"iRate preview is enabled. Restart app to take effect." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];*/
    }
    else
    {
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"PreviewiRate"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        NSLog(@"Preview iRate is disabled.");
        
        /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"iRate Preview Disabled" message:@"iRate preview is disabled. Restart app to take effect." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];*/
    }
}

-(IBAction)previewiVersionSwitchChangedState:(id)sender
{
    if (_previewiVersionSwitch.isOn)
    {
        [[NSUserDefaults standardUserDefaults] setBool:TRUE forKey:@"PreviewiVersion"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        NSLog(@"Preview iVersion is enabled.");
        
        /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"iVersion Preview Enabled" message:@"iVersion preview is enabled. Restart app to take effect." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];*/
    }
    else
    {
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"PreviewiVersion"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        NSLog(@"Preview iVersion is disabled.");
        /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"iVersion Preview Disabled" message:@"iVersion preview is disabled. Restart app to take effect." delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alert show];*/
    }
}

-(IBAction)bannerSwitchChangedState:(id)sender {
    if (_bannerSwitch.isOn)
    {[AdDelegate enableBannerAds];}else{[AdDelegate disableBannerAds];}
}

-(IBAction)interstitialSwitchChangedState:(id)sender {
    if (_interstitialSwitch.isOn)
    {[AdDelegate enableInterstitialAds];}else{[AdDelegate disableInterstitialAds];}
}

-(IBAction)buildBarSwitchChangedState:(id)sender {
    if (_buildBarSwitch.isOn)
    {
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"HideBuildBar"];
    }else{
        [[NSUserDefaults standardUserDefaults] setBool:TRUE forKey:@"HideBuildBar"];
    }
}

- (UIViewController *)viewControllerForPresentingModalView {
    return self;
}

-(BOOL)showDevMenu
{
    if ([AdDelegate devMode])
    {
        return true;
    }
    else
    {
        return false;
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_versionNumber setText: [NSString stringWithFormat:@"Frequencies %@",[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]]];
    
    if ([self showDevMenu])
    {
        [_buildNumber setText:[NSString stringWithFormat:@"Dev Menu -- Build %@",[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]]];
        [self switchStates];
    }
    else
    {
        [_debugMenu setHidden:true];
    }
    
#if DEV_MODE
    _disableDevMode.enabled = false;
#endif
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
 //   [bannerView_ release];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}




@end
