//
//  BMLibraryController.m
//  Bot
//
//  Created by litt1e-p on 2017/2/16.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMLibraryController.h"
#import "BMMacro.h"
#import "BMPlaylistsController.h"
#import "BMArtistsController.h"
#import "BMAlbumsController.h"
#import "BMSongsController.h"

@interface BMLibraryController ()<WMPageControllerDataSource>

@end

@implementation BMLibraryController

- (instancetype)init
{
    if (self = [super init]) {
        [self initPageViews];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)initPageViews
{
    self.dataSource         = self;
    self.titleColorSelected = kAppTintColor;
    self.titleColorNormal   = HEX_COLOR(0x666666);
    self.titleFontName      = kAppChsFontName;
    self.titleSizeNormal    = 14;
    self.titleSizeSelected  = 14;
    self.menuViewStyle      = WMMenuViewStyleLine;
}

#pragma mark - WMPageControllerDataSource 📌

- (NSInteger)numbersOfChildControllersInPageController:(WMPageController *)pageController
{
    return 4;
}

- (UIViewController *)pageController:(WMPageController *)pageController viewControllerAtIndex:(NSInteger)index
{
    switch (index) {
        case 0:
            return [[BMSongsController alloc] init];
            break;
            
        case 1:
            return [[BMPlaylistsController alloc] init];
            break;
            
        case 2:
            return [[BMArtistsController alloc] init];
            break;
            
        case 3:
            return [[BMAlbumsController alloc] init];
            break;
            
        default:
            return nil;
            break;
    }
}

- (NSString *)pageController:(WMPageController *)pageController titleAtIndex:(NSInteger)index
{
    switch (index) {
        case 0:
            return Loc(@"歌曲");
            break;
            
        case 1:
            return Loc(@"播放列表");
            break;
            
        case 2:
            return Loc(@"歌手");
            break;
            
        case 3:
            return Loc(@"专辑");
            break;
            
        default:
            return nil;
            break;
    }
}

@end
