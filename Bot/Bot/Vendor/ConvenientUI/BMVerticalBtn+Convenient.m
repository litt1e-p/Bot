//
//  BMVerticalBtn+Convenient.m
//  litt1e-p
//
//  Created by litt1e-p on 2016/12/2.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "BMVerticalBtn+Convenient.h"
#import "UIButton+Convenient.h"

@implementation BMVerticalBtn (Convenient)

+ (BMVerticalBtn *)buttonWithImage:(UIImage *)image
{
    BMVerticalBtn *btn = [BMVerticalBtn buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    return btn;
}

+ (BMVerticalBtn *)buttonWithImage:(UIImage *)image
                             title:(NSString *)title
{
    BMVerticalBtn *btn = [BMVerticalBtn buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    return btn;
}

+ (BMVerticalBtn *)buttonWithImage:(UIImage *)image
                             title:(NSString *)title
                              font:(UIFont *)font
{
    BMVerticalBtn *btn = [BMVerticalBtn buttonWithType:UIButtonTypeCustom];
    btn.titleLabel.font = font;
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    return btn;
}

+ (BMVerticalBtn *)buttonWithImage:(UIImage *)image
                        titleColor:(UIColor *)titleColor
                             title:(NSString *)title
                              font:(UIFont *)font
{
    BMVerticalBtn *btn = [BMVerticalBtn buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    return btn;
}

+ (BMVerticalBtn *)buttonWithTitleColor:(UIColor *)titleColor
                             title:(NSString *)title
                              font:(UIFont *)font
{
    return [BMVerticalBtn buttonWithBackgroundColor:[UIColor clearColor] titleColor:titleColor title:title font:font];
}

+ (BMVerticalBtn *)buttonWithBackgroundColor:(UIColor *)backgroundColor
                             titleColor:(UIColor *)titleColor
                                  title:(NSString *)title
                                   font:(UIFont *)font
{
    
    return [BMVerticalBtn buttonWithBackgroundColor:backgroundColor titleColor:titleColor titleHighlightColor:titleColor title:title font:font];
}

+ (BMVerticalBtn *)buttonWithBackgroundColor:(UIColor *)backgroundColor
                             titleColor:(UIColor *)titleColor
                    titleHighlightColor:(UIColor *)titleHighlightColor
                                  title:(NSString *)title
                                   font:(UIFont *)font
{
    
    BMVerticalBtn *btn              = [BMVerticalBtn buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor             = backgroundColor;
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    [btn setTitleColor:titleHighlightColor forState:UIControlStateHighlighted];
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font             = font;
    btn.adjustsImageWhenHighlighted = NO;
    return btn;
}

@end
