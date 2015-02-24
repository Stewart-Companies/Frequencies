//
//  AppDelegate.h
//  Frequencies
//
//  Created by Corey Stewart on 10/30/11.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import <UIKit/UIKit.h>
#import "GoogleAnalytics.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>


@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UIWindow *splashAd;

@property (strong, nonatomic) ViewController *viewController;

@end
