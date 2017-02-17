//
//  UILabel+Convenient.h
//  litt1e-p
//
//  Created by litt1e-p on 2016/12/1.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Convenient)

+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                       font:(UIFont *)font;

+ (UILabel *)labelWithFont:(UIFont *)font
                      text:(NSString *)text;

+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                       font:(UIFont *)font
                       text:(NSString *)text;

+ (UILabel *)labelWithTextColor:(UIColor *)textColor
                  numberOfLines:(NSInteger)numberOfLines
                           font:(UIFont *)font
                           text:(NSString *)text;

+ (UILabel *)labelWithBackgroundColor:(UIColor *)backgroundColor
                            textColor:(UIColor *)textColor
                        textAlignment:(NSTextAlignment)textAlignment
                        numberOfLines:(NSInteger)numberOfLines
                                 font:(UIFont *)font
                                 text:(NSString *)text;

@end
