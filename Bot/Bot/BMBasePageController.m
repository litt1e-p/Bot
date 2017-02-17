//
//  BMBasePageController.m
//  Bot
//
//  Created by litt1e-p on 2017/2/16.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMBasePageController.h"
#import "BMMacro.h"

@interface BMBasePageController ()

@property (nonatomic, strong) UIButton *searchBtn;

@end

@implementation BMBasePageController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initViews];
    [self initControlEvents];
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)gotoSearchPage
{
    NSLog(@"gotoSearchPage");
}

- (void)initViews
{
    self.menuView.rightView = self.searchBtn;
}

- (void)initControlEvents
{
    @weakify(self);
    [[self.searchBtn rac_signalForControlEvents:UIControlEventTouchUpInside] subscribeNext:^(id x) {
        @strongify(self);
        [self gotoSearchPage];
    }];
}

- (UIButton *)searchBtn
{
    if (!_searchBtn) {
        _searchBtn                   = [UIButton buttonWithImage:[[UIImage imageNamed:@"search"] imageMaskedWithColor:kWhiteColor]];
        _searchBtn.frame             = CGRectMake(0, 0, 44, 44);
        _searchBtn.contentEdgeInsets = UIEdgeInsetsMake(5, 5, 5, 5);
    }
    return _searchBtn;
}

@end
