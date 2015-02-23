//
//  Localize.h
//  Frequencies
//
//  Created by Corey Stewart on 6/8/14.
//  Copyright (c) 2015 Stewart Companies Corp.
//

#import <Foundation/Foundation.h>

@interface Localize : NSObject

//Home Screen
@property (nonatomic,weak) IBOutlet UIButton *buttonChildren;
@property (nonatomic,strong) IBOutlet UIButton *buttonAnimals;
@property (nonatomic,strong) IBOutlet UIButton *buttonAdvanced;

//Children Screen
@property (nonatomic,strong) IBOutlet UINavigationItem *navChildren;
@property (nonatomic,strong) IBOutlet UILabel *labelPulse;
@property (nonatomic,strong) IBOutlet UILabel *labelAge;

//Animals screen
@property (nonatomic,strong) IBOutlet UINavigationItem *navAnimals;
@property (nonatomic,strong) IBOutlet UILabel *labelExplaination;

//Advanced screen
@property (nonatomic,strong) IBOutlet UINavigationItem *navAdvanced;

//About screen
@property (nonatomic,strong) IBOutlet UINavigationItem *navAbout;
@property (nonatomic,strong) IBOutlet UILabel *labelCopyright;
@property (nonatomic,strong) IBOutlet UILabel *labelTranslationCredit;
@property (nonatomic,strong) IBOutlet UIButton *buttonSupport;

-(void)initHomeScreen;


@end
