//
//  UIView+Convenient.m
//  litt1e-p
//
//  Created by litt1e-p on 2016/12/1.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "UIView+Convenient.h"

@implementation UIView (Convenient)

+ (UIView *)viewWithColor:(UIColor *)color
{
    UIView *v         = [[UIView alloc] init];
    v.backgroundColor = color;
    return v;
}

@end
