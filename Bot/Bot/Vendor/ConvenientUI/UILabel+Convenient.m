//
//  UILabel+Convenient.m
//  litt1e-p
//
//  Created by litt1e-p on 2016/12/1.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "UILabel+Convenient.h"

@implementation UILabel (Convenient)

+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                       font:(UIFont *)font
{
    return [UILabel labelWithBackgroundColor:[UIColor clearColor] textColor:textColor textAlignment:NSTextAlignmentLeft numberOfLines:1 font:font text:nil];
    
}

+ (UILabel *)labelWithFont:(UIFont *)font
                      text:(NSString *)text
{
    return [UILabel labelWithBackgroundColor:[UIColor clearColor] textColor:[UIColor blackColor] textAlignment:NSTextAlignmentLeft numberOfLines:1 font:font text:text];
    
}

+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                       font:(UIFont *)font
                       text:(NSString *)text
{
    return [UILabel labelWithTextColor:textColor numberOfLines:1 font:font text:text];
}

+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                  numberOfLines:(NSInteger)numberOfLines
                           font:(UIFont *)font
                           text:(NSString *)text
{
    return [UILabel labelWithBackgroundColor:[UIColor clearColor] textColor:textColor textAlignment:NSTextAlignmentLeft numberOfLines:numberOfLines font:font text:text];
    
}

+ (UILabel *)labelWithBackgroundColor:(UIColor *)backgroundColor
                            textColor:(UIColor *)textColor
                        textAlignment:(NSTextAlignment)textAlignment
                        numberOfLines:(NSInteger)numberOfLines
                                 font:(UIFont *)font
                                 text:(NSString *)text
{
    
    UILabel *label        = [[UILabel alloc] init];
    label.backgroundColor = backgroundColor;
    label.textColor       = textColor;
    label.textAlignment   = textAlignment;
    label.numberOfLines   = numberOfLines;
    label.text            = text;
    label.font            = font;
    return label;
}

@end
