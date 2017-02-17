//
//  UIImage+Render.h
//
//  Created by litt1e-p on 16/11/22.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Render)

- (UIImage *)msgBubbleImageWithColor:(UIColor *)color flippedForIncoming:(BOOL)flippedForIncoming;
- (UIImage *)horizontallyFlipImage:(UIImage *)image;
- (UIImage *)imageMaskedWithColor:(UIColor *)maskColor;

@end
