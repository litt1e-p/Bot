//
//  UIImage+Extension.h
//  yhxz
//
//  Created by xzc on 15/9/29.
//  Copyright (c) 2015年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)

+ (UIImage *)imageWithColor:(UIColor *)color andSize:(CGSize)imageSize;
+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageFromColor:(UIColor *)color forSize:(CGSize)size withCornerRadius:(CGFloat)radius;
+ (UIImage *)rotateImage:(UIImage *)src andOrientation:(UIImageOrientation)orientation;
- (UIImage *)imageWithTintColor:(UIColor *)color;

@end
