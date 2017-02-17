//
//  UIImageView+Convenient.m
//  litt1e-p
//
//  Created by litt1e-p on 2016/12/1.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "UIImageView+Convenient.h"

@implementation UIImageView (Convenient)

+ (UIImageView *)imageViewWithImage:(UIImage *)image
{
    
    return [UIImageView imageViewWithContentMode:UIViewContentModeScaleAspectFit userInteractionEnabled:NO image:image];
}

+ (UIImageView *)imageViewWithImage:(UIImage *)image
             userInteractionEnabled:(BOOL)enabled
{
    
    return [UIImageView imageViewWithContentMode:UIViewContentModeScaleAspectFit userInteractionEnabled:enabled image:image];
}

+ (UIImageView *)imageViewWithContentMode:(UIViewContentMode)mode
                                    image:(UIImage *)image
{
    
    return [UIImageView imageViewWithContentMode:mode userInteractionEnabled:NO image:image];
}

+ (UIImageView *)imageViewWithContentMode:(UIViewContentMode)mode
                   userInteractionEnabled:(BOOL)enabled
                                    image:(UIImage *)image
{
    
    UIImageView *imageView           = [[UIImageView alloc] init];
    imageView.contentMode            = mode;
    imageView.userInteractionEnabled = enabled;
    imageView.image                  = image;
    return imageView;
}

@end
