
/**
 * @brief     UIColor+Extensions.h
 *
 * @author    <Various>
 * @copyright 2012 - Deloitte Touche Tohmatsu. All rights reserved.
 */

#import <UIKit/UIKit.h>

@interface UIColor (Extensions)
+ (UIColor *)colorWithHexValue:(NSString *)hexValue;
+ (UIColor *)colorWithHexValue:(NSString *)hexValue withOpacity:(CGFloat) opacity;
@end

