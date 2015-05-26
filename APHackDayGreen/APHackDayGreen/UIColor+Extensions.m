
/**
 * @brief     UIColor+Extensions.m
 *
 * @author    <Various>
 * @copyright 2012 - Deloitte Touche Tohmatsu. All rights reserved.
 */

#import <UIKit/UIKit.h>
#import "UIColor+Extensions.h"


@implementation UIColor (Extensions)


#pragma mark -
#pragma mark UIColor Extension Class Methods
+ (UIColor *)colorWithHexValue:(NSString *)hexValue
{
    return [self colorWithHexValue:hexValue withOpacity:1.0f];
}

+ (UIColor *)colorWithHexValue:(NSString *)hexValue withOpacity:(CGFloat) opacity {
	NSString *cleanedHexValue = [hexValue stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"#"]];
	unsigned long rgbColorValue = strtoul([[cleanedHexValue substringToIndex:6] cStringUsingEncoding:NSASCIIStringEncoding], NULL, 16);
    
	NSUInteger redValue   = (rgbColorValue >> 16) & 0xFF;
	NSUInteger greenValue = (rgbColorValue >>  8) & 0xFF;
	NSUInteger blueValue  = (rgbColorValue >>  0) & 0xFF;
    
	return [UIColor colorWithRed:(redValue / 255.0) green:(greenValue / 255.0) blue:(blueValue / 255.0) alpha:opacity];
}
@end

