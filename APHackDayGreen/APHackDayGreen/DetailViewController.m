//
//  DetailViewController.m
//  APHackDayGreen
//
//  Created by Maria La Porta on 26/05/2015.
//  Copyright (c) 2015 ap. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
- (void)alignTextforButton : (UIButton *)button;
@end

@implementation DetailViewController {
    UILabel *instructionLabel;
    UIButton *okButton;
    UIButton *addressButton;
    UIButton *postOfficeButton;
    UIButton *differentAddressButton;
    UIButton *myPostButton;
}

- (void)loadView {
    [super loadView];
}


- (void) setupInitialConstraints {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self view] setBackgroundColor : [UIColor whiteColor]];
    
    instructionLabel = [[UILabel alloc]init];
    okButton = [[UIButton alloc]init];
    addressButton = [[UIButton alloc]init];
    postOfficeButton = [[UIButton alloc]init];
    differentAddressButton = [[UIButton alloc]init];
    myPostButton = [[UIButton alloc]init];
    
    [instructionLabel setBackgroundColor : [UIColor redColor]];
    [okButton setBackgroundColor : [UIColor yellowColor]];
    [addressButton setBackgroundColor : [UIColor purpleColor]];
    [postOfficeButton setBackgroundColor : [UIColor purpleColor]];
    [differentAddressButton setBackgroundColor : [UIColor purpleColor]];
    [myPostButton setBackgroundColor : [UIColor purpleColor]];
    
    [[addressButton titleLabel] setFont : [UIFont systemFontOfSize : 12]];
    
    [[addressButton imageView] setContentMode : UIViewContentModeTop | UIViewContentModeScaleAspectFit];
    [[postOfficeButton imageView] setContentMode : UIViewContentModeTop | UIViewContentModeScaleAspectFit];
    [[differentAddressButton imageView] setContentMode : UIViewContentModeTop | UIViewContentModeScaleAspectFit];
    [[myPostButton imageView] setContentMode : UIViewContentModeTop | UIViewContentModeScaleAspectFit];

    [addressButton setImage : [UIImage imageNamed : @"img-address"] forState : UIControlStateNormal];
    [postOfficeButton setImage : [UIImage imageNamed : @"img-postoffice"] forState : UIControlStateNormal];
    [differentAddressButton setImage : [UIImage imageNamed : @"img-differentaddress"] forState : UIControlStateNormal];
    [myPostButton setImage : [UIImage imageNamed : @"img-mypost"] forState : UIControlStateNormal];
    
    [addressButton setTitle : @"Leave at the address" forState : UIControlStateNormal];
    [postOfficeButton setTitle : @"My local Post Office" forState :  UIControlStateNormal];
    [differentAddressButton setTitle : @"A different address" forState : UIControlStateNormal];
    [myPostButton setTitle : @"Want more options?\n Log in to MyPost" forState : UIControlStateNormal];

    
    [[self view] addSubview : instructionLabel];
    [[self view] addSubview : okButton];
    [[self view] addSubview : addressButton];
    [[self view] addSubview : postOfficeButton];
    [[self view] addSubview : differentAddressButton];
    [[self view] addSubview : myPostButton];
    
    // Do any additional setup after loading the view.
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGRect aRect = [[self view] bounds];
    aRect.origin.x = 10;
    aRect.size.width -= (aRect.origin.x * 2);
    aRect.size.height = 45;
    aRect.origin.y = [[self view] bounds].size.height - aRect.size.height - aRect.origin.x;
    [okButton setFrame : aRect];
  
    aRect = [okButton frame];
    aRect.origin.y = aRect.origin.x + 70;
    aRect.size.height = 100;
    [instructionLabel setFrame : aRect];
    
    CGRect aButtonRect = [[self view] bounds];
    aButtonRect.origin.x = [instructionLabel frame].origin.x;
    aButtonRect.size.width -= (aButtonRect.origin.x * 2);
    aButtonRect.origin.y = [instructionLabel frame].origin.y + [instructionLabel bounds].size.height + aButtonRect.origin.x;
    aButtonRect.size.height = [okButton frame].origin.y - [okButton frame].origin.x;
    aButtonRect.size.height -= aButtonRect.origin.y;
    
    NSInteger buttonCount = 4;
    aRect.size.width = (aButtonRect.size.width - aButtonRect.origin.x) / 2;
    aRect.size.height = (aButtonRect.size.height - aButtonRect.origin.x) / 2;
    aRect.origin.x = aButtonRect.origin.x;
    aRect.origin.y = aButtonRect.origin.y;
    [addressButton setFrame : aRect];

    aRect.origin.x += (aRect.size.width + aRect.origin.x);
    [postOfficeButton setFrame : aRect];
    
    aRect.origin.y += (aRect.size.height + [okButton frame].origin.x);
    [myPostButton setFrame : aRect];
    
    aRect.origin.x = [okButton frame].origin.x;
    [differentAddressButton setFrame : aRect];

    [self alignTextforButton : addressButton];

}


- (void)alignTextforButton:(UIButton *)button {
    button.titleEdgeInsets = UIEdgeInsetsMake(button.imageView.frame.origin.y + button.imageView.bounds.size.height, -button.imageView.frame.size.width, 0, button.imageView.frame.size.width);
//    button.imageEdgeInsets = UIEdgeInsetsMake(0, button.titleLabel.frame.size.width, 0, -button.titleLabel.frame.size.width);
}
@end
