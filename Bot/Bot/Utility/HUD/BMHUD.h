//
//  BMHUD.h
//  litt1e-p
//
//  Created by litt1e-p on 16/10/19.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define kDefaultHUDDesc  @"loading"

typedef NS_ENUM(NSInteger, BMHUDStyle)
{
    BMHUDStyleCircle,
    BMHUDStyleShimmer
};

typedef NS_ENUM(NSInteger, BMHUDMaskType)
{
    BMHUDMaskTypeDefault, //allow user touch when hud display
    BMHUDMaskTypeClear, //dont allowed user touch
    BMHUDMaskTypeBlack, //dont allowed user touch
    BMHUDMaskTypeGradient //dont allowed user touch
};

@interface BMHUD : NSObject

+ (void)dismiss;

+ (void)showSuccess:(NSString *)msg;
+ (void)showError:(NSString *)msg;

+ (void)showLoading;//BMHUDMaskTypeBlack
+ (void)showSpecyLoading;
+ (void)showLoading:(NSString *)msg type:(BMHUDMaskType)type;
+ (void)showLoading:(NSString *)msg style:(BMHUDStyle)style;

+ (void)showMsg:(NSString *)msg;
+ (void)showProgress:(CGFloat)progress msg:(NSString *)msg;


@end
