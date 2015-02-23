//
//  Ringtones.h
//  Frequencies
//
//  Created by Corey Stewart on 5/31/14.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "GoogleAnalytics.h"

@interface Ringtones : GAITrackedViewController {
    Player *player;
}

- (IBAction)get13000:(id)sender;
- (IBAction)preview13000:(id)sender;

@end
