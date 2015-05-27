//
//  DeliveryInstructionsViewController.m
//  APHackDayGreen
//
//  Created by Maria La Porta on 27/05/2015.
//  Copyright (c) 2015 ap. All rights reserved.
//

#import "DeliveryInstructionsViewController.h"
#import "UIColor+Extensions.h"
#import "trackViewController.h"

@interface DeliveryInstructionsViewController ()

@property (nonatomic, strong) UITextView *textArea;
@property (nonatomic, strong) UIButton *doneButton;

@end

@implementation DeliveryInstructionsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Delivery instructions";
    
    self.view.backgroundColor = [UIColor colorWithHexValue:@"F3F1EE"];
    
    self.textArea = [[UITextView alloc] initWithFrame:CGRectZero];
    self.textArea.backgroundColor = [UIColor whiteColor];
    self.textArea.font = [UIFont fontWithName:@"APLetter-Light" size:14.f];
    self.textArea.textColor = [UIColor colorWithHexValue:@"807370"];
    
    
    self.doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.doneButton setTitle:@"Done" forState:UIControlStateNormal];
    [self.doneButton.titleLabel setFont:[UIFont fontWithName:@"APLetter-Regular" size:15.f]];
    [self.doneButton setBackgroundColor:[UIColor colorWithHexValue:@"dc1928"]];
    [self.doneButton.layer setCornerRadius:3.f];
    
    [self.doneButton setTitleShadowColor:[UIColor clearColor] forState:UIControlStateNormal];
        [self.doneButton addTarget:self action:@selector(doDone:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:self.textArea];
    [self.view addSubview:self.doneButton];
    
    
}

- (void)viewWillLayoutSubviews {
    
    
    [super viewWillLayoutSubviews];
    
    CGRect frame = self.view.bounds;
    
    
    CGFloat labelWidth = frame.size.width - 40.0f;
    
    self.textArea.frame = CGRectMake(20.f, 80.f, labelWidth, 200.f);
    
    self.doneButton.frame = CGRectIntegral(CGRectMake(20.f, CGRectGetMaxY(self.textArea.frame) + 20.f, frame.size.width - 40.f, 42.f));
    
}

- (void)doDone:(id)sender {
    trackViewController *viewController = [[trackViewController alloc]init];
    [[self navigationController] pushViewController : viewController animated : YES];
}

- (BOOL)automaticallyAdjustsScrollViewInsets {
    return NO;
}

@end
