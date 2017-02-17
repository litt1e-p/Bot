//
//  UITextField+Convenient.h
//  litt1e-p
//
//  Created by litt1e-p on 2016/12/2.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Convenient)

+ (UITextField *)textField;

+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder;

+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder
                                 font:(UIFont *)font;

+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder
                                 font:(UIFont *)font
                                 text:(NSString *)text;

+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder
                                 font:(UIFont *)font
                                 text:(NSString *)text
                             editable:(BOOL)editable;

@end
