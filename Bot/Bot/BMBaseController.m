//
//  BMBaseController.m
//  Bot
//
//  Created by litt1e-p on 2017/2/16.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMBaseController.h"
#import "BMMacro.h"
#import "BMBarBtnItem.h"

@interface BMBaseController ()

@end

@implementation BMBaseController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupBackBtnItem];
}

//- (void)viewDidDisappear:(BOOL)animated
//{
//    [super viewDidDisappear:animated];
//    self.hidesBottomBarWhenPushed = YES;
//}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)setupBackBtnItem
{
    if (self.navigationController.viewControllers.count <= 1) {
        return;
    }
    self.navigationItem.leftBarButtonItems = [BMBarBtnItem itemsWithImage:[[UIImage imageNamed:@"back"] imageMaskedWithColor:kWhiteColor] type:NavBarBtnItemTypeLeft target:self action:@selector(back)];
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
