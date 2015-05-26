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
    UIButton *button;
    UIImageView *backgroundImageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    button = [[UIButton alloc]init];
    backgroundImageView = [[UIImageView alloc]init];
    
    [button addTarget : self action : @selector(doTrack:) forControlEvents :  UIControlEventTouchUpInside];
    [backgroundImageView setContentMode : UIViewContentModeTop | UIViewContentModeScaleAspectFit];
    [button setShowsTouchWhenHighlighted : NO];
    [[self view] addSubview : button];
     [[self view] addSubview : backgroundImageView];
    [[self view] setBackgroundColor : [UIColor whiteColor]];
    
 //   [[backgroundButton imageView] s
    
    
    BOOL isIphone6 = (fabs((double)[[UIScreen mainScreen]bounds].size.height - (double)667) < DBL_EPSILON);
    NSString  *imageName = isIphone6 ? @"6PLUSselect-a-post-office" : @"select-a-post-office";
    NSLog(imageName);
    
    [backgroundImageView setImage : [UIImage imageNamed : imageName]];
     [[self view] bringSubviewToFront : button];
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
    aRect.origin.y -= 10;
    aRect.origin.y = [[self navigationController] navigationBar].frame.origin.y + [[self navigationController] navigationBar].bounds.size.height;
    aRect.size.height -= aRect.origin.y;
    [backgroundImageView setFrame : aRect];
    [button setFrame : aRect];
}

- (void)doTrack:(id)sender {
    trackViewController *viewController = [[trackViewController alloc]init];
    [[self navigationController] pushViewController : viewController animated : YES];
}

@end
