//
//  BMNavigationController.m
//  Bot
//
//  Created by litt1e-p on 2017/2/16.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMNavigationController.h"
#import "BMMacro.h"

@interface BMNavigationController ()

@end

@implementation BMNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self layoutNav];
}

- (void)layoutNav
{
    [self.navigationBar setTitleTextAttributes:@{
                                                 NSForegroundColorAttributeName : kBlackColor,
                                                 NSFontAttributeName : [UIFont fontWithName:kAppChsFontName size:18.f]
                                                 }];
}

- (UIViewController *)childViewControllerForStatusBarStyle
{
    return self.topViewController;
}

@end
