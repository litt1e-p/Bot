//
//  BMVerticalBtn+Convenient.h
//  litt1e-p
//
//  Created by litt1e-p on 2016/12/2.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "BMVerticalBtn.h"

@interface BMVerticalBtn (Convenient)

+ (BMVerticalBtn *)buttonWithImage:(UIImage *)image;

+ (BMVerticalBtn *)buttonWithImage:(UIImage *)image
                             title:(NSString *)title;

+ (BMVerticalBtn *)buttonWithImage:(UIImage *)image
                             title:(NSString *)title
                              font:(UIFont *)font;

+ (BMVerticalBtn *)buttonWithImage:(UIImage *)image
                   titleColor:(UIColor *)titleColor
                        title:(NSString *)title
                         font:(UIFont *)font;

+ (BMVerticalBtn *)buttonWithTitleColor:(UIColor *)titleColor
                             title:(NSString *)title
                              font:(UIFont *)font;

+ (BMVerticalBtn *)buttonWithBackgroundColor:(UIColor *)backgroundColor
                             titleColor:(UIColor *)titleColor
                                  title:(NSString *)title
                                   font:(UIFont *)font;

+ (BMVerticalBtn *)buttonWithBackgroundColor:(UIColor *)backgroundColor
                             titleColor:(UIColor *)titleColor
                    titleHighlightColor:(UIColor *)titleHighlightColor
                                  title:(NSString *)title
                                   font:(UIFont *)font;

@end
