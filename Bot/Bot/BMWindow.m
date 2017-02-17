//
//  BMWindow.m
//  Bot
//
//  Created by litt1e-p on 2017/2/16.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMWindow.h"
#import "BMMacro.h"
#import "BMNavigationController.h"
#import "BMBasePageController.h"
#import "BMLibraryController.h"
#import "BMMineController.h"
#import "UINavigationBar+Awesome.h"

@implementation BMWindow

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self initSelf];
    }
    return self;
}

- (void)initSelf
{
    BMBasePageController *vc = [[BMBasePageController alloc] initWithViewControllerClasses:@[[BMLibraryController class], [BMMineController class]] andTheirTitles:@[Loc(@"音乐库"), Loc(@"我的")]];
    vc.showOnNavigationBar = YES;
    vc.pageAnimatable      = YES;
    vc.menuViewStyle       = WMMenuViewStyleDefault;
    vc.bounces             = YES;
    vc.menuHeight          = 44;
    vc.titleSizeNormal     = 18;
    vc.titleSizeSelected   = 18;
    vc.menuBGColor         = kClearColor;
    vc.titleColorNormal    = [kWhiteColor colorWithAlphaComponent:0.5];
    vc.titleColorSelected  = kWhiteColor;
    
    BMNavigationController *nav = [[BMNavigationController alloc] initWithRootViewController:vc];
    [nav.navigationBar lt_setBackgroundColor:kAppTintColor];
    self.rootViewController     = nav;
}

@end
