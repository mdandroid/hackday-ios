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
    UIButton *backgroundButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    backgroundButton = [[UIButton alloc]init];
    [[backgroundButton imageView] setContentMode : UIViewContentModeTop | UIViewContentModeScaleAspectFit];
    [backgroundButton setShowsTouchWhenHighlighted : NO];
    [[self view] addSubview : backgroundButton];
    [[self view] setBackgroundColor : [UIColor whiteColor]];
    
    //   [[backgroundButton imageView] s
    [backgroundButton setImage : [UIImage imageNamed : @"track-screen"] forState : UIControlStateNormal];
    [backgroundButton setImage : [UIImage imageNamed : @"track-screen"] forState : UIControlStateSelected];
    [backgroundButton setImage : [UIImage imageNamed : @"track-screen"] forState : UIControlStateHighlighted];
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
    //   aRect.origin.y = [[self navigationController] navigationBar].frame.origin.y + [[self navigationController] navigationBar].bounds.size.height;
    aRect.size.height -= aRect.origin.y;
    [backgroundButton setFrame : aRect];
}

@end
