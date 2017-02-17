//
//  UIButton+Convenient.m
//  litt1e-p
//
//  Created by litt1e-p on 2016/12/1.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "UIButton+Convenient.h"

@implementation UIButton (Convenient)

+ (UIButton *)buttonWithImage:(UIImage *)image
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    return btn;
}

+ (UIButton *)buttonWithImage:(UIImage *)image
                             title:(NSString *)title
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    return btn;
}

+ (UIButton *)buttonWithImage:(UIImage *)image
                             title:(NSString *)title
                              font:(UIFont *)font
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    return btn;
}

+ (UIButton *)buttonWithImage:(UIImage *)image
                   titleColor:(UIColor *)titleColor
                        title:(NSString *)title
                         font:(UIFont *)font
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    return btn;
}

+ (UIButton *)buttonWithTitleColor:(UIColor *)titleColor
                             title:(NSString *)title
                              font:(UIFont *)font
{
    return [UIButton buttonWithBackgroundColor:[UIColor clearColor] titleColor:titleColor title:title font:font];
}

+ (UIButton *)buttonWithBackgroundColor:(UIColor *)backgroundColor
                             titleColor:(UIColor *)titleColor
                                  title:(NSString *)title
                                   font:(UIFont *)font
{
    
    return [UIButton buttonWithBackgroundColor:backgroundColor titleColor:titleColor titleHighlightColor:titleColor title:title font:font];
}

+ (UIButton *)buttonWithBackgroundColor:(UIColor *)backgroundColor
                             titleColor:(UIColor *)titleColor
                    titleHighlightColor:(UIColor *)titleHighlightColor
                                  title:(NSString *)title
                                   font:(UIFont *)font
{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = backgroundColor;
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setTitleColor:titleHighlightColor forState:UIControlStateHighlighted];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    btn.adjustsImageWhenHighlighted = NO;
    return btn;
}

@end
