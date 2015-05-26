//
//  HomeViewController.m
//  APHackDayGreen
//
//  Created by Maria La Porta on 26/05/2015.
//  Copyright (c) 2015 ap. All rights reserved.
//

#import "HomeViewController.h"
#import "DetailViewController.h"

@interface HomeViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *button;


@end

@implementation HomeViewController

- (void)loadView {
    [super loadView];

    self.label = [[UILabel alloc]initWithFrame:CGRectZero];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    self.label.backgroundColor = [UIColor greenColor];
    self.label.textColor = [UIColor blackColor];
    self.label.translatesAutoresizingMaskIntoConstraints = NO;
    self.label.textAlignment = NSTextAlignmentCenter;
    [self.label sizeToFit];
    
    self.label.text = @"Hello World";
    
    
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.button setTitle:@"Next" forState:UIControlStateNormal];
    [self.view addSubview:self.button];
    [self.button addTarget:self action:@selector(nextPage:) forControlEvents:UIControlEventTouchUpInside];
    self.button.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.button];

    [self setupInitialConstraints];
}


- (void) setupInitialConstraints {
    
    NSDictionary *views = @{ @"label" : self.label,
                             @"button" : self.button };

    // label
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.f]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0f constant:0.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:30.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:200.f]];
    
    // button
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.button attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.button attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.label attribute:NSLayoutAttributeBottom multiplier:1.0f constant:20.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.button attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:30.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.button attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:200.f]];
    
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) nextPage:(id)sender {
    NSLog (@"Next");
    DetailViewController *det = [[DetailViewController alloc] init];
    [self.navigationController pushViewController:det animated:YES];
    
}

@end
