//
//  GoogleAnalytics.m
//  Frequencies
//
//  Created by Corey Stewart on 5/23/13.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import "GoogleAnalytics.h"

@implementation GoogleAnalytics

- (void)initializeTheTracker {
#ifdef NO_ANALYTICS
    [GAI sharedInstance].optOut = YES;
    NSLog(@"Not using analytics.");
#else
    NSLog(@"USING ANALYTICS.");
#endif
    
    // Optional: automatically send uncaught exceptions to Google Analytics.
    [GAI sharedInstance].trackUncaughtExceptions = YES;
    // Optional: set Google Analytics dispatch interval to e.g. 20 seconds.
    [GAI sharedInstance].dispatchInterval = 10;
    // Optional: set debug to YES for extra debugging information.
    [[GAI sharedInstance].logger setLogLevel:kGAILogLevelNone];
    // Create tracker instance.
    
    NSString *trackingID;
    
#ifdef BETA_ANALYTICS
    //For betas
    trackingID = @"UA-41768175-1";
    NSLog(@"Analytics set for beta");
#else
    //For release
    trackingID = @"UA-41148480-1";
    NSLog(@"Analytics set for release");
#endif
    [[GAI sharedInstance] trackerWithTrackingId:trackingID];
}

@end
