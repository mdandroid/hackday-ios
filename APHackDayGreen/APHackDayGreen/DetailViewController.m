//
//  DetailViewController.m
//  APHackDayGreen
//
//  Created by Maria La Porta on 26/05/2015.
//  Copyright (c) 2015 ap. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController {
    UILabel *instructionLabel;
    UIButton *okButton;
    UIButton *parcelLockerButton;
    UIButton *homeButton;
    UIButton *officeButton;
    UIButton *otherButton;
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
    parcelLockerButton = [[UIButton alloc]init];
    homeButton = [[UIButton alloc]init];
    officeButton = [[UIButton alloc]init];
    otherButton = [[UIButton alloc]init];
    
    [instructionLabel setBackgroundColor : [UIColor redColor]];
    [okButton setBackgroundColor : [UIColor yellowColor]];
    [parcelLockerButton setBackgroundColor : [UIColor purpleColor]];
    [homeButton setBackgroundColor : [UIColor purpleColor]];
    [officeButton setBackgroundColor : [UIColor purpleColor]];
    [otherButton setBackgroundColor : [UIColor purpleColor]];
    
    [[self view] addSubview : instructionLabel];
    [[self view] addSubview : okButton];
    [[self view] addSubview : parcelLockerButton];
    [[self view] addSubview : homeButton];
    [[self view] addSubview : officeButton];
    [[self view] addSubview : otherButton];
    
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
    [parcelLockerButton setFrame : aRect];

    aRect.origin.x += (aRect.size.width + aRect.origin.x);
    [homeButton setFrame : aRect];
    
    aRect.origin.y += (aRect.size.height + [okButton frame].origin.x);
    [otherButton setFrame : aRect];
    
    aRect.origin.x = [okButton frame].origin.x;
    [officeButton setFrame : aRect];
}

- (void)setButtons : (NSArray *)value {
    
}


@end
