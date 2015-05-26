//
//  HomeViewController.m
//  APHackDayGreen
//
//  Created by Maria La Porta on 26/05/2015.
//  Copyright (c) 2015 ap. All rights reserved.
//

#import "HomeViewController.h"
#import "DetailViewController.h"
#import "TTTAttributedLabel.h"

@interface HomeViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UILabel *label2;
@property (nonatomic, strong) UILabel *label3;
@property (nonatomic, strong) UIView *messageContainer;
@property (nonatomic, strong) UIButton *okButton;
@property (nonatomic, strong) UIButton *waitMoreButton;
@property (nonatomic, strong) UIView *buttonContainer;

@end

@implementation HomeViewController

//- (void)loadView {
//    [super loadView];
//
//    self.label = [[UILabel alloc]initWithFrame:CGRectZero];
//    
//    self.view.backgroundColor = [UIColor whiteColor];
//    
//    
//    NSString *message = @"Your parcel from ASOS is on board for delivery!";
//    NSString *message2 = @"Our driver will be at:";
//    NSString *message3 = @"123 Smith Street, Fitzroy VIC\n today between 12:00pm - 3:00pm";
//    
//   // self.label.backgroundColor = [UIColor greenColor];
//    self.label.textColor = [UIColor blackColor];
//    self.label.translatesAutoresizingMaskIntoConstraints = NO;
//    //self.label.textAlignment = NSTextAlignmentCenter;
//    self.label.numberOfLines = 0;
//    self.label.lineBreakMode = NSLineBreakByWordWrapping;
//    self.label.text = message;
//    
//    
//    
//   // NSRange rangeOfSender = [message rangeOfString:@"ASOS"];
//   // NSRange rangeOfAddress = [message rangeOfString:@"Home"];
//    
//    
//    UIFont *mainFont = [UIFont fontWithName:@"APLetter-Regular" size:14.f];;
//    //NSMutableAttributedString *aString = [[NSMutableAttributedString alloc]initWithString:message];
//    
//   // [aString addAttribute:NSFontAttributeName value:mainFont range:NSMakeRange(0, aString.length)];
// //   [aString addAttribute:NSFontAttributeName value:[UIFont boldHelveticaFontOfSize:14.f] range:rangeOfPin];
////    aString addAttribute:NSUnderlineStyleAttributeName value:<#(id)#> range:<#(NSRange)#>
////    [aString addAttribute:NSForegroundColorAttributeName  value:[UIColor colorWithHexValue:APColourTextFieldBorder] range:NSMakeRange(0, aString.length)];
////    self.helpInstructionsLabel.attributedText = aString;
//  //  self.label.attributedText = aString;
//    
//    
// //   self.label.attributedText = @"Hi Sam!\n\n Your parcel from ASOS will be delivered to your Home address today between 12pm - 3pm.";
//    
//    // Label2
//    self.label2 = [[UILabel alloc] initWithFrame:CGRectZero];
//    self.label2.translatesAutoresizingMaskIntoConstraints = NO;
//    self.label2.font = [UIFont fontWithName:@"APLetter-Light" size:14.f];
//    self.label2.textColor = [UIColor blackColor];
//    self.label2.text = message2;
//    self.label2.numberOfLines = 0;
//    self.label2.lineBreakMode = NSLineBreakByWordWrapping;
//    
//    
//    // Label3
//    self.label3 = [[UILabel alloc] initWithFrame:CGRectZero];
//    self.label3.translatesAutoresizingMaskIntoConstraints = NO;
//    self.label3.font = [UIFont fontWithName:@"APLetter-Light" size:14.f];
//    self.label3.textColor = [UIColor blackColor];
//    self.label3.text = message;
//    self.label3.numberOfLines = 0;
//    self.label3.lineBreakMode = NSLineBreakByWordWrapping;
//    
//    // MEssage container
//    self.messageContainer = [[UIView alloc] initWithFrame:CGRectZero];
//    self.messageContainer.backgroundColor = [UIColor lightGrayColor];
//    self.messageContainer.translatesAutoresizingMaskIntoConstraints = NO;
//    
//    // Button Container
//    self.buttonContainer =[ [UIView alloc] initWithFrame:CGRectZero];
//    self.buttonContainer.backgroundColor = [UIColor whiteColor
//                                            ];
//    self.buttonContainer.translatesAutoresizingMaskIntoConstraints = NO;
//    
//    // Buttons
//    self.okButton = [UIButton buttonWithType:UIButtonTypeSystem];
//    [self.okButton setTitle:@"OK, I'm home" forState:UIControlStateNormal];
//    [self.view addSubview:self.okButton];
//    [self.okButton addTarget:self action:@selector(nextPage:) forControlEvents:UIControlEventTouchUpInside];
//    self.okButton.translatesAutoresizingMaskIntoConstraints = NO;
//    
//    self.waitMoreButton = [UIButton buttonWithType:UIButtonTypeSystem];
//    [self.waitMoreButton setTitle:@"Wait! More Options" forState:UIControlStateNormal];
//    [self.view addSubview:self.waitMoreButton];
//    [self.waitMoreButton addTarget:self action:@selector(confirmPage:) forControlEvents:UIControlEventTouchUpInside];
//    self.waitMoreButton.translatesAutoresizingMaskIntoConstraints = NO;
//
//    
//    
//    [self.messageContainer addSubview:self.label];
//    [self.messageContainer addSubview:self.label2];
//    [self.messageContainer addSubview:self.label3];
//    [self.view addSubview:self.messageContainer];
//    
//    [self.buttonContainer addSubview:self.okButton];
//    [self.buttonContainer addSubview:self.waitMoreButton];
//    [self.view addSubview:self.buttonContainer];
//
//    [self setupInitialConstraints];
//}


- (void) setupInitialConstraints {
    
//    NSDictionary *views = @{ @"label" : self.label,
//                             @"okbutton" : self.okButton,
//                             };ok

    // label 1
    [self.messageContainer addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.messageContainer attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.f]];
    
    [self.messageContainer addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.messageContainer attribute:NSLayoutAttributeTop multiplier:1.0f constant:20.f]];
    
    
    [self.messageContainer addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.messageContainer attribute:NSLayoutAttributeLeft multiplier:1.0f constant:20.f]];
    [self.messageContainer addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.messageContainer attribute:NSLayoutAttributeRight multiplier:1.0f constant:-20.f]];
    
    [self.messageContainer addConstraint:[NSLayoutConstraint constraintWithItem:self.label attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:40.f]];
    
    // label 2
    [self.messageContainer addConstraint:[NSLayoutConstraint constraintWithItem:self.label2 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.messageContainer attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.f]];
    
    [self.messageContainer addConstraint:[NSLayoutConstraint constraintWithItem:self.label2 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.label attribute:NSLayoutAttributeBottom multiplier:1.0f constant:20.f]];
    
    
    [self.messageContainer addConstraint:[NSLayoutConstraint constraintWithItem:self.label2 attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.messageContainer attribute:NSLayoutAttributeLeft multiplier:1.0f constant:20.f]];
    
    [self.messageContainer addConstraint:[NSLayoutConstraint constraintWithItem:self.label2 attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.messageContainer attribute:NSLayoutAttributeRight multiplier:1.0f constant:-20.f]];
    
    [self.messageContainer addConstraint:[NSLayoutConstraint constraintWithItem:self.label2 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:200.f]];
    
    
    
    // button
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.okButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.okButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.label attribute:NSLayoutAttributeBottom multiplier:1.0f constant:20.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.okButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:30.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.okButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:200.f]];
    
    // Wait
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.waitMoreButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.waitMoreButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.okButton attribute:NSLayoutAttributeBottom multiplier:1.0f constant:20.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.waitMoreButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:30.f]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.waitMoreButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0f constant:200.f]];
    
    
    
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

- (void) confirmPage:(id)sender {
    NSLog (@"Confirm");
    DetailViewController *det = [[DetailViewController alloc] init];
    [self.navigationController pushViewController:det animated:YES];
    
}

@end
