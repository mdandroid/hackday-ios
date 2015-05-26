//
//  selectAPostOfficeViewController.m
//  APHackDayGreen
//
//  Created by David Delfouneso on 26/05/2015.
//  Copyright (c) 2015 ap. All rights reserved.
//

#import "selectAPostOfficeViewController.h"
#import "trackViewController.h"

@interface selectAPostOfficeViewController ()
- (void)doTrack : (id)sender;
@end

@implementation selectAPostOfficeViewController {
    UIButton *backgroundButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    backgroundButton = [[UIButton alloc]init];
    [backgroundButton addTarget : self action : @selector(doTrack:) forControlEvents :  UIControlEventTouchUpInside];
    [[backgroundButton imageView] setContentMode : UIViewContentModeTop | UIViewContentModeScaleAspectFit];
    [backgroundButton setShowsTouchWhenHighlighted : NO];
    [[self view] addSubview : backgroundButton];
    [[self view] setBackgroundColor : [UIColor whiteColor]];
    
 //   [[backgroundButton imageView] s
     [backgroundButton setImage : [UIImage imageNamed : @"select-a-post-office"] forState : UIControlStateNormal];
     [backgroundButton setImage : [UIImage imageNamed : @"select-a-post-office"] forState : UIControlStateSelected];
     [backgroundButton setImage : [UIImage imageNamed : @"select-a-post-office"] forState : UIControlStateHighlighted];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear : animated];
    [self setTitle : @"Select a Post Office"];
    [[[self navigationController] navigationBar] setTintColor : [UIColor redColor]];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGRect aRect = [[self view] bounds];
 //   aRect.origin.y = [[self navigationController] navigationBar].frame.origin.y + [[self navigationController] navigationBar].bounds.size.height;
    aRect.size.height -= aRect.origin.y;
    [backgroundButton setFrame : aRect];
}

- (void)doTrack:(id)sender {
    trackViewController *viewController = [[trackViewController alloc]init];
    [[self navigationController] pushViewController : viewController animated : YES];
}

@end
