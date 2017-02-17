//
//  UIImageView+Convenient.h
//  litt1e-p
//
//  Created by litt1e-p on 2016/12/1.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (Convenient)

/** ImageView 图片 */
+ (UIImageView *)imageViewWithImage:(UIImage *)image;

/** ImageView 图片 交互 */
+ (UIImageView *)imageViewWithImage:(UIImage *)image
             userInteractionEnabled:(BOOL)enabled;

/** ImageView 填充方式 图片 */
+ (UIImageView *)imageViewWithContentMode:(UIViewContentMode)mode
                                    image:(UIImage *)image;

/** ImageView 填充方式 交互 图片 */
+ (UIImageView *)imageViewWithContentMode:(UIViewContentMode)mode
                   userInteractionEnabled:(BOOL)enabled
                                    image:(UIImage *)image;

@end
