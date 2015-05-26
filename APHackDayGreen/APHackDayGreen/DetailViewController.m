//
//  DetailViewController.m
//  APHackDayGreen
//
//  Created by Maria La Porta on 26/05/2015.
//  Copyright (c) 2015 ap. All rights reserved.
//

#import "DetailViewController.h"
#import "APHackButton.h"
#import "selectAPostOfficeViewController.h"

@interface DetailViewController ()
- (void)alignTextforButton : (UIButton *)button;
- (void)doPostOffice : (id)sender;
@end

@implementation DetailViewController {
    UILabel *instructionLabel;
    APHackButton *okButton;
    APHackButton *addressButton;
    APHackButton *postOfficeButton;
    APHackButton *differentAddressButton;
    APHackButton *myPostButton;
}

- (void)loadView {
    [super loadView];
}


- (void) setupInitialConstraints {
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [[self view] setBackgroundColor : [UIColor redColor]];
    [[self view] setBackgroundColor : [UIColor colorWithRed : 240/255.0 green : 242/255.0 blue : 238/255.0 alpha : 1.0]];
    
    instructionLabel = [[UILabel alloc]init];
    okButton = [[APHackButton alloc]init];
    addressButton = [[APHackButton alloc]init];
    postOfficeButton = [[APHackButton alloc]init];
    differentAddressButton = [[APHackButton alloc]init];
    myPostButton = [[APHackButton alloc]init];
    
    [instructionLabel setTextColor : [UIColor darkGrayColor]];
    [instructionLabel setFont : [UIFont fontWithName : @"APLetter-Regular" size : 15]];
    
    [instructionLabel setBackgroundColor : [UIColor clearColor]];
    [okButton setBackgroundColor : [UIColor yellowColor]];

    [addressButton setImage : [UIImage imageNamed : @"img-address"] forState : UIControlStateNormal];
    [postOfficeButton setImage : [UIImage imageNamed : @"img-postoffice"] forState : UIControlStateNormal];
    [differentAddressButton setImage : [UIImage imageNamed : @"img-differentaddress"] forState : UIControlStateNormal];
    [myPostButton setImage : [UIImage imageNamed : @"img-mypost"] forState : UIControlStateNormal];
    
    [addressButton setTitle : @"Leave at the\naddress" forState : UIControlStateNormal];
    [postOfficeButton setTitle : @"My local\nPost Office" forState :  UIControlStateNormal];
    [differentAddressButton setTitle : @"A different\naddress" forState : UIControlStateNormal];
    [myPostButton setTitle : @"Parcel Locker" forState : UIControlStateNormal];

    [instructionLabel setNumberOfLines : 3];
    [instructionLabel setLineBreakMode : NSLineBreakByWordWrapping];
    [instructionLabel setTextAlignment : NSTextAlignmentCenter];
    [instructionLabel setText : @"Where would you like your parcel from ASOS delivered instead?"];

    [postOfficeButton addTarget : self action : @selector(doPostOffice:) forControlEvents : UIControlEventTouchUpInside];
    [[self view] addSubview : instructionLabel];
//    [[self view] addSubview : okButton];
    [[self view] addSubview : addressButton];
    [[self view] addSubview : postOfficeButton];
    [[self view] addSubview : differentAddressButton];
    [[self view] addSubview : myPostButton];
    
    // Do any additional setup after loading the view.
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGRect aRect = [[self view] bounds];
    aRect.origin.x = 2;
    aRect.size.width -= (aRect.origin.x * 2);
    aRect.size.height = 45;
    aRect.origin.y = [[self view] bounds].size.height - aRect.size.height - aRect.origin.x;
    [okButton setFrame : aRect];
  
    aRect = [okButton frame];
    aRect.origin.x = 10;
    aRect.size.width = [[self view] bounds].size.width - (aRect.origin.x * 2);
    aRect.origin.y = aRect.origin.x + 70;
    aRect.size.height = 80;
    [instructionLabel setFrame : aRect];
    
    CGRect aButtonRect = [[self view] bounds];
    aButtonRect.origin.x = 2;
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

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear : animated];
    [self setTitle : @"Redirect delivery"];
    [[[self navigationController] navigationBar] setTintColor : [UIColor redColor]];
}

- (void)doPostOffice:(id)sender {
    selectAPostOfficeViewController *viewController = [[selectAPostOfficeViewController alloc]init];
    [[self navigationController] pushViewController : viewController animated : YES];
}

@end
