//
//  UITextField+Convenient.m
//  litt1e-p
//
//  Created by litt1e-p on 2016/12/2.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "UITextField+Convenient.h"

@implementation UITextField (Convenient)

+ (UITextField *)textField
{
    return [UITextField textFieldWithPlaceholder:nil];
}

+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder
{
    return [UITextField textFieldWithPlaceholder:placeholder font:[UIFont systemFontOfSize:16]];
}

+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder
                                 font:(UIFont *)font
{
    return [UITextField textFieldWithPlaceholder:placeholder font:font text:nil];
}

+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder
                                 font:(UIFont *)font
                                 text:(NSString *)text
{
    return [UITextField textFieldWithPlaceholder:placeholder font:font text:text editable:YES];
}

+ (UITextField *)textFieldWithPlaceholder:(NSString *)placeholder
                                 font:(UIFont *)font
                                 text:(NSString *)text
                             editable:(BOOL)editable
{
    UITextField *tf    = [[UITextField alloc] init];
    tf.placeholder     = placeholder;
    tf.font            = font;
    tf.text            = text;
    tf.clearButtonMode = UITextFieldViewModeWhileEditing;
    tf.enabled         = editable;
    return tf;
}

@end
