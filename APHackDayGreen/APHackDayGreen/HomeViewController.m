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
#import "UIColor+Extensions.h"


@interface HomeViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UILabel *label2;
@property (nonatomic, strong) UILabel *label3;
@property (nonatomic, strong) UIView *messageContainer;
@property (nonatomic, strong) UIButton *okButton;
@property (nonatomic, strong) UIButton *waitMoreButton;
@property (nonatomic, strong) UIView *buttonContainer;
@property (nonatomic, strong) UIImageView *vanImage;
@property (nonatomic, strong) UIImageView *houseImage;

@end

@implementation HomeViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Confirm Delivery";
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSString *message = @"Your parcel from ASOS is on board for delivery!";
    NSString *message2 = @"Our driver will be at:";
    NSString *message3 = @"123 Smith Street, Fitzroy VIC today between 12:00pm - 3:00pm";
    
    self.label = [[UILabel alloc]initWithFrame:CGRectZero];
    self.label.backgroundColor = [UIColor colorWithHexValue:@"F3F1EE"];
    self.label.font = [UIFont fontWithName:@"APLetter-Light" size:16.f];
    self.label.textColor = [UIColor colorWithHexValue:@"382F2D"];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.numberOfLines = 0;
    self.label.lineBreakMode = NSLineBreakByWordWrapping;
    self.label.text = message;


    // Label2
    self.label2 = [[UILabel alloc] initWithFrame:CGRectZero];
    self.label2.font = [UIFont fontWithName:@"APLetter-Light" size:16.f];
    self.label2.textColor = [UIColor colorWithHexValue:@"807370"];
    self.label2.backgroundColor = [UIColor colorWithHexValue:@"F3F1EE"];
    self.label2.textAlignment = NSTextAlignmentCenter;
    self.label2.text = message2;
    self.label2.numberOfLines = 0;
    self.label2.textAlignment = NSTextAlignmentCenter;
    self.label2.lineBreakMode = NSLineBreakByWordWrapping;

    
    // Label3
    self.label3 = [[UILabel alloc] initWithFrame:CGRectZero];
    self.label3.backgroundColor = [UIColor colorWithHexValue:@"F3F1EE"];
    self.label3.font = [UIFont fontWithName:@"APLetter-Light" size:19.f];
    self.label3.textColor = [UIColor colorWithHexValue:@"382F2D"];
    self.label3.text = message3;
    self.label3.numberOfLines = 0;
    self.label3.textAlignment = NSTextAlignmentCenter;
    self.label3.lineBreakMode = NSLineBreakByWordWrapping;
    
    // Images
    self.vanImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img-van"]];
    self.houseImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"img-house"]];
    
    
   // NSRange rangeOfSender = [message rangeOfString:@"ASOS"];
   // NSRange rangeOfAddress = [message rangeOfString:@"Home"];


    UIFont *mainFont = [UIFont fontWithName:@"APLetter-Regular" size:14.f];;
    //NSMutableAttributedString *aString = [[NSMutableAttributedString alloc]initWithString:message];

   // [aString addAttribute:NSFontAttributeName value:mainFont range:NSMakeRange(0, aString.length)];
 //   [aString addAttribute:NSFontAttributeName value:[UIFont boldHelveticaFontOfSize:14.f] range:rangeOfPin];
//    aString addAttribute:NSUnderlineStyleAttributeName value:<#(id)#> range:<#(NSRange)#>
//    [aString addAttribute:NSForegroundColorAttributeName  value:[UIColor colorWithHexValue:APColourTextFieldBorder] range:NSMakeRange(0, aString.length)];
//    self.helpInstructionsLabel.attributedText = aString;
  //  self.label.attributedText = aString;


 //   self.label.attributedText = @"Hi Sam!\n\n Your parcel from ASOS will be delivered to your Home address today between 12pm - 3pm.";






    // MEssage container
    self.messageContainer = [[UIView alloc] initWithFrame:CGRectZero];
    self.messageContainer.backgroundColor = [UIColor colorWithHexValue:@"F3F1EE"];
    

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
    [self.messageContainer addSubview:self.label];
    [self.messageContainer addSubview:self.label2];
    [self.messageContainer addSubview:self.label3];
    [self.messageContainer addSubview:self.vanImage];
    [self.messageContainer addSubview:self.houseImage];
    [self.view addSubview:self.messageContainer];
//
//    [self.buttonContainer addSubview:self.okButton];
//    [self.buttonContainer addSubview:self.waitMoreButton];
//    [self.view addSubview:self.buttonContainer];
//    
//    
    

}

- (void)viewWillLayoutSubviews {
    
    [super viewWillLayoutSubviews];
    CGRect frame = self.view.bounds;

    frame.size.height = 522.0f;
    self.messageContainer.frame = frame;
    
    
    CGFloat labelWidth = frame.size.width - 40.0f;
    
    CGSize label1Size = [self.label sizeThatFits:CGSizeMake(labelWidth, 0.f)];
    CGSize label2Size = [self.label2 sizeThatFits:CGSizeMake(labelWidth, 0.f)];
    CGSize label3Size = [self.label3 sizeThatFits:CGSizeMake(labelWidth, 0.f)];
   
    self.label.frame = CGRectIntegral(CGRectMake(20.0f, 80.0f, label1Size.width, label1Size.height));
    
    self.label2.frame = CGRectIntegral(CGRectMake(20.0f, CGRectGetMaxY(self.label.frame) + 20.0f, labelWidth, label2Size.height));
        
    self.label3.frame = CGRectIntegral(CGRectMake(20.0f, CGRectGetMaxY(self.label2.frame) + 20.0f, labelWidth, label3Size.height));
                                       
    CGSize vanSize = CGSizeMake(75.f, 50.f);
    CGSize houseSize = CGSizeMake(50.f, 35.f);
    
    self.vanImage.frame = CGRectIntegral(CGRectMake(20.f, CGRectGetMaxY(self.label3.frame) + 20.0f, vanSize.width, vanSize.height));
    self.houseImage.frame = CGRectIntegral(CGRectMake(frame.size.width - houseSize.width - 30.f, CGRectGetMaxY(self.vanImage.frame) - houseSize.height, houseSize.width, houseSize.height));
    
    CGRect messageFrame = self.messageContainer.frame;
    messageFrame.size.height = CGRectGetMaxY(self.vanImage.frame);
    self.messageContainer.frame = messageFrame;
    
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
