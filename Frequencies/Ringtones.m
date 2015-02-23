//
//  Ringtones.m
//  Frequencies
//
//  Created by Corey Stewart on 5/31/14.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import "Ringtones.h"

@implementation Ringtones

- (void)getRingtone: (NSString *)frequency {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@%@",frequency,@"r"] ofType:@"m4r"];
    NSData *mainBundleFile = [NSData dataWithContentsOfFile:filePath];
    
    [[NSFileManager defaultManager] createFileAtPath:[documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"Ringtone%@%@",frequency,@".m4r"]] contents:mainBundleFile attributes:nil];
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:[documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"Ringtone%@%@",frequency,@".m4r"]]] == NO)
    {
        NSLog(@"ERROR: Ringtone did not export.");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:NSLocalizedString(@"RINGTONEFAILTITLE", nil)] message:[NSString stringWithFormat:NSLocalizedString(@"RINGTONEFAILMESSAGE", nil)] delegate:self cancelButtonTitle:NSLocalizedString(@"RINGTONEALERTDISMISS", nil) otherButtonTitles:nil];
        [alert show];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:NSLocalizedString(@"RINGTONESUCCESSTITLE", nil)] message:[NSString stringWithFormat:NSLocalizedString(@"RINGTONESUCCESSMESSAGE", nil)] delegate:self cancelButtonTitle:NSLocalizedString(@"RINGTONEALERTDISMISS", nil) otherButtonTitles:nil];
        [alert show];
    }
}

- (void)previewRingtone: (NSString *)frequency {
    [player previewRingtone:[NSString stringWithFormat:@"%@%@",frequency,@"r"]];
}

-(IBAction)get13000:(id)sender{[self getRingtone:@"13000"];}
-(IBAction)get14000:(id)sender{[self getRingtone:@"14000"];}
-(IBAction)get15000:(id)sender{[self getRingtone:@"15000"];}
-(IBAction)get16000:(id)sender{[self getRingtone:@"16000"];}
-(IBAction)get17000:(id)sender{[self getRingtone:@"17000"];}
-(IBAction)get18000:(id)sender{[self getRingtone:@"18000"];}
-(IBAction)get19000:(id)sender{[self getRingtone:@"19000"];}
-(IBAction)get20000:(id)sender{[self getRingtone:@"20000"];}
-(IBAction)get21000:(id)sender{[self getRingtone:@"21000"];}
-(IBAction)get22000:(id)sender{[self getRingtone:@"22000"];}

-(IBAction)preview13000:(id)sender{[self previewRingtone:@"13000"];}
-(IBAction)preview14000:(id)sender{[self previewRingtone:@"14000"];}
-(IBAction)preview15000:(id)sender{[self previewRingtone:@"15000"];}
-(IBAction)preview16000:(id)sender{[self previewRingtone:@"16000"];}
-(IBAction)preview17000:(id)sender{[self previewRingtone:@"17000"];}
-(IBAction)preview18000:(id)sender{[self previewRingtone:@"18000"];}
-(IBAction)preview19000:(id)sender{[self previewRingtone:@"19000"];}
-(IBAction)preview20000:(id)sender{[self previewRingtone:@"20000"];}
-(IBAction)preview21000:(id)sender{[self previewRingtone:@"21000"];}
-(IBAction)preview22000:(id)sender{[self previewRingtone:@"22000"];}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    player = [[Player alloc] init];
    
    //Google Analytics
    self.screenName = @"Ringtones";
    
    //Show ad
    [[AdDelegate shared] showAdBannerForViewController:self inLandscape:NO];
}

-(NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

-(IBAction)switchBack:(id)sender {
    [player stopAll];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
