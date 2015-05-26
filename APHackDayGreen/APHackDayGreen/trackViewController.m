//
//  trackViewController.m
//  APHackDayGreen
//
//  Created by David Delfouneso on 26/05/2015.
//  Copyright (c) 2015 ap. All rights reserved.
//

#import "trackViewController.h"

@interface trackViewController ()

@end

@implementation trackViewController{
    UIImageView *backgroundButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    backgroundButton = [[UIImageView alloc]init];
    [backgroundButton setContentMode : UIViewContentModeTop | UIViewContentModeScaleAspectFit];
    [[self view] addSubview : backgroundButton];
    [[self view] setBackgroundColor : [UIColor whiteColor]];
    
    //   [[backgroundButton imageView] s
    
//#define IS_IPHONE_4 (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)480) < DBL_EPSILON)
//#define IS_IPHONE_5 (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)568) < DBL_EPSILON)
//#define IS_IPHONE_6 (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)667) < DBL_EPSILON)
//#define IS_IPHONE_6_PLUS (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)736) < DBL_EPSILON)
//    
    BOOL isIphone6 = (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)667) < DBL_EPSILON);
    NSString  *imageName = isIphone6 ? @"6PLUStrack-screen" : @"track-screen";
    
    [backgroundButton setImage : [UIImage imageNamed : imageName]];
    [backgroundButton setImage : [UIImage imageNamed : imageName]];
    [backgroundButton setImage : [UIImage imageNamed : imageName]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear : animated];
    [self setTitle : @"Track"];
    [[[self navigationController] navigationBar] setTintColor : [UIColor redColor]];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGRect aRect = [[self view] bounds];
    aRect.origin.y = [[self navigationController] navigationBar].frame.origin.y + [[self navigationController] navigationBar].bounds.size.height;
    aRect.size.height -= aRect.origin.y;
    [backgroundButton setFrame : aRect];
}

@end
