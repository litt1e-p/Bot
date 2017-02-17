//
//  UIButton+Convenient.h
//  litt1e-p
//
//  Created by litt1e-p on 2016/12/1.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Convenient)

+ (UIButton *)buttonWithImage:(UIImage *)image;

+ (UIButton *)buttonWithImage:(UIImage *)image
                        title:(NSString *)title;

+ (UIButton *)buttonWithImage:(UIImage *)image
                        title:(NSString *)title
                         font:(UIFont *)font;

+ (UIButton *)buttonWithImage:(UIImage *)image
                   titleColor:(UIColor *)titleColor
                        title:(NSString *)title
                         font:(UIFont *)font;

+ (UIButton *)buttonWithTitleColor:(UIColor *)titleColor
                                  title:(NSString *)title
                                   font:(UIFont *)font;

+ (UIButton *)buttonWithBackgroundColor:(UIColor *)backgroundColor
                             titleColor:(UIColor *)titleColor
                                  title:(NSString *)title
                                   font:(UIFont *)font;

+ (UIButton *)buttonWithBackgroundColor:(UIColor *)backgroundColor
                             titleColor:(UIColor *)titleColor
                    titleHighlightColor:(UIColor *)titleHighlightColor
                                  title:(NSString *)title
                                   font:(UIFont *)font;

@end
