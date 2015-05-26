//
//  APHackButton.m
//  APHackDayGreen
//
//  Created by David Delfouneso on 26/05/2015.
//  Copyright (c) 2015 ap. All rights reserved.
//

#import "APHackButton.h"

@implementation APHackButton

- (id)init {
    self = [super init];
    if (self) {
        [self setBackgroundColor : [UIColor whiteColor]];
        [self setTitleColor : [UIColor darkGrayColor] forState : UIControlStateNormal];
        [[self titleLabel] setFont : [UIFont fontWithName : @"APLetter-Regular" size : 15]];
        [[self titleLabel] setTextAlignment : NSTextAlignmentCenter];
        [[self titleLabel] setNumberOfLines : 1];
        [[self imageView] setContentMode : UIViewContentModeTop | UIViewContentModeScaleAspectFit];
    }
    return self;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    CGRect frame = self.imageView.frame;
    frame.origin.x = ([self bounds].size.width - frame.size.width) / 2;
    frame.origin.y = ([self bounds].size.height - frame.size.height) / 2;
    
    self.imageView.frame = frame;
    
    frame = self.titleLabel.frame;
    frame.origin.x = 4;
    frame.origin.y = [self bounds].size.height - frame.size.height - 10;
    frame.size.width = [self bounds].size.width - (frame.origin.x * 2);
    self.titleLabel.frame = frame;
}

@end
