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
#import "okViewController.h"

@interface HomeViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UILabel *label2;
@property (nonatomic, strong) UILabel *label3;
@property (nonatomic, strong) UIView *messageContainer;
@property (nonatomic, strong) UIButton *okButton;
@property (nonatomic, strong) UIButton *waitMoreButton;
@property (nonatomic, strong) UIImageView *vanImage;
@property (nonatomic, strong) UIImageView *houseImage;

@property (nonatomic, strong) AVAudioPlayer* audioPlayer;

@end

@implementation HomeViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    NSString* path = [[NSBundle mainBundle] pathForResource:@"ding" ofType:@"mp3"];
    NSURL* file = [[NSURL alloc]  initFileURLWithPath:path];
    self.audioPlayer = [[AVAudioPlayer alloc]
                                  initWithContentsOfURL:file error:nil];
    self.audioPlayer.delegate = self;
    
    [self.audioPlayer prepareToPlay];
    [self.audioPlayer play];
    

    
    
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
    
    
    NSRange range = [message rangeOfString:@"ASOS"];

    UIFont *mainFont = [UIFont fontWithName:@"APLetter-Regular" size:16.f];
    UIFont *boldFont = [UIFont fontWithName:@"APLetter-Bold" size:16.f];
    NSMutableAttributedString *aString = [[NSMutableAttributedString alloc]initWithString:message];

    [aString addAttribute:NSFontAttributeName value:mainFont range:NSMakeRange(0, aString.length)];
    [aString addAttribute:NSFontAttributeName value:boldFont range:range];
    [aString addAttribute:NSForegroundColorAttributeName  value:[UIColor colorWithHexValue:@"382F2D"] range:NSMakeRange(0, aString.length)];
    self.label.attributedText = aString;

    // MEssage container
    self.messageContainer = [[UIView alloc] initWithFrame:CGRectZero];
    self.messageContainer.backgroundColor = [UIColor colorWithHexValue:@"F3F1EE"];

//    // Buttons
    
    self.okButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.okButton setTitle:@"OK - I'm there!" forState:UIControlStateNormal];
    [self.okButton.titleLabel setFont:[UIFont fontWithName:@"APLetter-Regular" size:15.f]];
    [self.okButton setBackgroundColor:[UIColor colorWithHexValue:@"dc1928"]];
    [self.okButton.layer setCornerRadius:3.f];
    
    [self.okButton setTitleShadowColor:[UIColor clearColor] forState:UIControlStateNormal];
    [self.okButton addTarget:self action:@selector(okAction:) forControlEvents:UIControlEventTouchUpInside];
    

    // Other button
    self.waitMoreButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.waitMoreButton setTitle:@"Other delivery options" forState:UIControlStateNormal];
    [self.waitMoreButton.titleLabel setFont:[UIFont fontWithName:@"APLetter-Regular" size:15.f]];
    [self.waitMoreButton setBackgroundColor:[UIColor whiteColor]];
    [self.waitMoreButton.layer setCornerRadius:3.f];
    [self.waitMoreButton setTitleColor:[UIColor colorWithHexValue:@"dc1928"] forState:UIControlStateNormal];
    [self.waitMoreButton setTitleShadowColor:[UIColor clearColor] forState:UIControlStateNormal];
    [self.waitMoreButton addTarget:self action:@selector(nextPage:) forControlEvents:UIControlEventTouchUpInside];
    [self.waitMoreButton.layer setBorderColor:[UIColor colorWithHexValue:@"dc1928"].CGColor];
    [self.waitMoreButton.layer setBorderWidth:1.f];

    
    
    // Add everything.
    [self.messageContainer addSubview:self.label];
    [self.messageContainer addSubview:self.label2];
    [self.messageContainer addSubview:self.label3];
    [self.messageContainer addSubview:self.vanImage];
    [self.messageContainer addSubview:self.houseImage];
    [self.view addSubview:self.messageContainer];
    [self.view addSubview:self.okButton];
    [self.view addSubview:self.waitMoreButton];

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
    
    self.okButton.frame = CGRectIntegral(CGRectMake(20.f, CGRectGetMaxY(messageFrame) + 20.f, frame.size.width - 40.f, 42.f));
    
    self.waitMoreButton.frame = CGRectIntegral(CGRectMake(20.f, CGRectGetMaxY(self.okButton.frame) + 20.f, frame.size.width - 40.f, 42.f));

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) okAction:(id)sender {
    NSLog (@"ok!");
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil
                                                                             message:@"Thanks! We’ll notify you again when we’re close by."
                                                                     preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Don't notify" style:UIAlertActionStyleDefault handler : ^(UIAlertAction *action) {
        //
    }];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        okViewController *viewController = [[okViewController alloc]init];
        [[self navigationController] pushViewController : viewController animated : YES];
    }];
    
    //add the custom actions
    [alertController addAction : cancelAction];
    [alertController addAction : okAction];
    
    // show the view controller
    [self presentViewController : alertController animated : YES completion : nil];
}

- (void) nextPage:(id)sender {
    NSLog (@"Confirm");
    DetailViewController *det = [[DetailViewController alloc] init];
    [self.navigationController pushViewController:det animated:YES];
    
}

- (void) playDing {
    if (self.audioPlayer) {
        [self.audioPlayer prepareToPlay];
        [self.audioPlayer play];
        
    }
}

@end
