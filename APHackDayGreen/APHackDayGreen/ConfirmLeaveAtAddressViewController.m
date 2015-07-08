//
//  LeaveAtAddressViewController.m
//  APHackDayGreen
//
//  Created by Maria La Porta on 27/05/2015.
//  Copyright (c) 2015 ap. All rights reserved.
//

#import "ConfirmLeaveAtAddressViewController.h"
#import "UIColor+Extensions.h"
#import "trackViewController.h"
#import "DeliveryInstructionsViewController.h"
@interface ConfirmLeaveAtAddressViewController ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *blurbLabel;
@property (nonatomic, strong) UIView *divider1;
@property (nonatomic, strong) UILabel *delivInstructionsLabel;
@property (nonatomic, strong) UIView *divider2;
@property (nonatomic, strong) UILabel *footerLabel;
@property (nonatomic, strong) UIButton *doneButton;
@property (nonatomic, strong) UIImageView *chevron;

@end

@implementation ConfirmLeaveAtAddressViewController


- (void)viewDidLoad {
    
    
    self.title = @"Leave at address";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    self.titleLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    self.titleLabel.backgroundColor = [UIColor whiteColor];
    self.titleLabel.font = [UIFont fontWithName:@"APLetter-Light" size:15.f];
    self.titleLabel.textColor = [UIColor blackColor];
   // self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.numberOfLines = 0;
    self.titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.titleLabel.text = @"Providing authority to leave";
    
    self.blurbLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    self.blurbLabel.backgroundColor = [UIColor whiteColor];
    self.blurbLabel.font = [UIFont fontWithName:@"APLetter-Light" size:14.f];
    self.blurbLabel.textColor = [UIColor colorWithHexValue:@"807370"];
  //  self.blurbLabel.textAlignment = NSTextAlignmentCenter;
    self.blurbLabel.numberOfLines = 0;
    self.blurbLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.blurbLabel.text = @"By selecting this option, you are authorising our driver to leave your parcel in a safe location outlide the delivery address";
    
    self.delivInstructionsLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    self.delivInstructionsLabel.backgroundColor = [UIColor whiteColor];
    self.delivInstructionsLabel.font = [UIFont fontWithName:@"APLetter-Light" size:17.f];
    self.delivInstructionsLabel.textColor = [UIColor blackColor];
   // self.delivInstructionsLabel.textAlignment = NSTextAlignmentCenter;
    self.delivInstructionsLabel.numberOfLines = 0;
    self.delivInstructionsLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.delivInstructionsLabel.text = @"Delivery instructions";
    self.delivInstructionsLabel.userInteractionEnabled = YES;
    UITapGestureRecognizer *tg = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
    [self.delivInstructionsLabel addGestureRecognizer:tg];
    
    

    self.footerLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    self.footerLabel.backgroundColor = [UIColor whiteColor];
    self.footerLabel.font = [UIFont fontWithName:@"APLetter-Light" size:14.f];
    self.footerLabel.textColor = [UIColor colorWithHexValue:@"808080"];
  //  self.footerLabel.textAlignment = NSTextAlignmentCenter;
    self.footerLabel.numberOfLines = 0;
    self.footerLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.footerLabel.text = @"Let us know where you’d prefer us to leave your parcel, e.g. By the front steps.";
    
    self.divider1 = [[UIView alloc] initWithFrame:CGRectZero];
    self.divider1.backgroundColor = [UIColor colorWithHexValue:@"C8C7CC"];
    
    
    self.chevron = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"chevron"]];
    
    
    self.divider2 = [[UIView alloc] initWithFrame:CGRectZero];
    self.divider2.backgroundColor = [UIColor colorWithHexValue:@"C8C7CC"];
    
    self.doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.doneButton setTitle:@"Done" forState:UIControlStateNormal];
    [self.doneButton.titleLabel setFont:[UIFont fontWithName:@"APLetter-Regular" size:15.f]];
    [self.doneButton setBackgroundColor:[UIColor colorWithHexValue:@"dc1928"]];
    [self.doneButton.layer setCornerRadius:3.f];
    [self.doneButton setTitleShadowColor:[UIColor clearColor] forState:UIControlStateNormal];
    [self.doneButton addTarget:self action:@selector(doDone:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:self.titleLabel];
    [self.view addSubview:self.blurbLabel];
    [self.view addSubview:self.divider1];
    [self.view addSubview:self.divider2];
    [self.view addSubview:self.delivInstructionsLabel];
    [self.view addSubview:self.footerLabel];
    [self.view addSubview:self.doneButton];
    [self.view addSubview:self.chevron];

    
    
}

- (void)viewWillLayoutSubviews {
    
    [super viewWillLayoutSubviews];
    
    CGRect frame = self.view.bounds;

    
    CGFloat labelWidth = frame.size.width - 40.0f;
    
    CGSize titleLabelSize = [self.titleLabel sizeThatFits:CGSizeMake(labelWidth, 0.f)];
    CGSize blurbLabelSize = [self.blurbLabel sizeThatFits:CGSizeMake(labelWidth, 0.f)];
    CGSize delivInstructionsLabelSize = [self.delivInstructionsLabel sizeThatFits:CGSizeMake(labelWidth, 0.f)];
    CGSize footerLabelSize = [self.footerLabel sizeThatFits:CGSizeMake(labelWidth, 0.f)];
    
    self.titleLabel.frame = CGRectIntegral(CGRectMake(20.0f, 80.0f, labelWidth, titleLabelSize.height));
    self.blurbLabel.frame = CGRectIntegral(CGRectMake(20.0f, CGRectGetMaxY(self.titleLabel.frame) + 20.0f, labelWidth, blurbLabelSize.height));
    self.divider1.frame = CGRectMake(0.f, CGRectGetMaxY(self.blurbLabel.frame) + 20.f, frame.size.width, 1.f);
    
    self.delivInstructionsLabel.frame = CGRectIntegral(CGRectMake(20.0f,CGRectGetMaxY(self.divider1.frame) + 20.0f, labelWidth, delivInstructionsLabelSize.height));
    
    self.chevron.frame = CGRectIntegral(CGRectMake(frame.size.width - 20.f - 8.f, self.delivInstructionsLabel.frame.origin.y + 5.f, 8.f, 12.f));
    
    self.divider2.frame = CGRectMake(0.f, CGRectGetMaxY(self.delivInstructionsLabel.frame) + 20.f, frame.size.width, 1.f);
    
    self.footerLabel.frame = CGRectMake(20.f, CGRectGetMaxY(self.divider2.frame) + 20.f, labelWidth, footerLabelSize.height);
    
    self.doneButton.frame = CGRectIntegral(CGRectMake(20.f, CGRectGetMaxY(self.footerLabel.frame) + 40.f, frame.size.width - 40.f, 42.f));


}

- (void)doDone:(id)sender {
    trackViewController *viewController = [[trackViewController alloc]init];
    [[self navigationController] pushViewController : viewController animated : YES];
}

- (void) tap:(UITapGestureRecognizer *) gestureRecognizer {
    NSLog(@"Done");
    
    DeliveryInstructionsViewController *vc = [[DeliveryInstructionsViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
