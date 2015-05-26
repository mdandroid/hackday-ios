//
//  DetailViewController.m
//  APHackDayGreen
//
//  Created by Maria La Porta on 26/05/2015.
//  Copyright (c) 2015 ap. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation DetailViewController

- (void)loadView {
    [super loadView];
    
    self.label = [[UILabel alloc]initWithFrame:CGRectZero];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    self.label.backgroundColor = [UIColor greenColor];
    self.label.textColor = [UIColor blackColor];
    self.label.translatesAutoresizingMaskIntoConstraints = NO;
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.label sizeToFit];
    
    self.label.text = @"Second page";
    
    
    
    [self.view addSubview:self.label];
    
    [self setupInitialConstraints];
}


- (void) setupInitialConstraints {
    
    NSDictionary *views = @{ @"label" : self.label,
                             };
    
    // label
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0f constant:0.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:30.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:200.f]];
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
