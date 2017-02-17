//
//  EPHUD.m
//  litt1e-p
//
//  Created by litt1e-p on 16/10/19.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "BMHUD.h"
#import "WSProgressHUD.h"
#import "UIImage+Extension.h"

@implementation BMHUD

+ (void)dismiss
{
    [WSProgressHUD dismiss];
}

+ (void)showSuccess:(NSString *)msg
{
    [WSProgressHUD showImage:[self.class indicatorImage:YES] status:msg maskType:WSProgressHUDMaskTypeDefault maskWithout:WSProgressHUDMaskWithoutDefault];
}

+ (void)showError:(NSString *)msg
{
    [WSProgressHUD showImage:[self.class indicatorImage:NO] status:msg maskType:WSProgressHUDMaskTypeDefault maskWithout:WSProgressHUDMaskWithoutDefault];
}

+ (void)showLoading
{
    [self.class showLoading:nil type:BMHUDMaskTypeClear];
}

+ (void)showSpecyLoading
{
    [self.class showLoading:kDefaultHUDDesc style:BMHUDStyleShimmer];
}

+ (void)showLoading:(NSString *)msg type:(BMHUDMaskType)type
{
    [WSProgressHUD showWithStatus:msg maskType:(WSProgressHUDMaskType)type];
}

+ (void)showLoading:(NSString *)msg style:(BMHUDStyle)style
{
    if (style == BMHUDStyleCircle) {
        [WSProgressHUD showWithStatus:msg maskType:WSProgressHUDMaskTypeBlack maskWithout:WSProgressHUDMaskWithoutDefault];
    } else {
        [WSProgressHUD showShimmeringString:msg maskType:WSProgressHUDMaskTypeBlack maskWithout:WSProgressHUDMaskWithoutDefault];
    }
}

+ (void)showMsg:(NSString *)msg
{
    [WSProgressHUD showImage:nil status:msg];
}

+ (void)showProgress:(CGFloat)progress msg:(NSString *)msg
{
    [WSProgressHUD showProgress:progress status:msg];
}

+ (UIImage *)indicatorImage:(BOOL)successImage
{
    NSBundle *bundle = [NSBundle bundleForClass:[WSProgressHUD class]];
    NSURL *bundleUrl = [bundle URLForResource:@"WSProgressBundle" withExtension:@"bundle"];
    NSBundle *imageBundle = [NSBundle bundleWithURL:bundleUrl];
    UIImage *template = nil;
    if (successImage) {
        template = [UIImage imageWithContentsOfFile:[imageBundle pathForResource:@"success@2x" ofType:@"png"]];
    } else {
        template = [UIImage imageWithContentsOfFile:[imageBundle pathForResource:@"error@2x" ofType:@"png"]];
    }
    return [template imageWithTintColor:[UIColor whiteColor]];
}

@end
