//
//  BMMacro.h
//  litt1e-p
//
//  Created by litt1e-p on 16/11/24.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//
#import "BMCategory.h"
#import "ConvenientUI.h"
#import "BMEnums.h"
#import <Masonry.h>
#import <ReactiveCocoa.h>

#ifndef BMMacro_h
#define BMMacro_h

#if DEBUG
#define NSLog(FORMAT, ...) {\
NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];\
[dateFormatter setDateStyle:NSDateFormatterMediumStyle];\
[dateFormatter setTimeStyle:NSDateFormatterShortStyle];\
[dateFormatter setDateFormat:@"Y/m/d HH:mm:ss:SSSSSS"];\
NSString *str = [dateFormatter stringFromDate:[NSDate date]];\
fprintf(stderr,"\n%s 📌%s🎈%s\n", [str UTF8String], __FUNCTION__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);\
}
#else
#define NSLog(FORMAT, ...) nil
#endif

#define Loc(...) NSLocalizedString(__VA_ARGS__, @"")

#define IOS10_OR_LATER ([NSString compareCurrentVersion:@"10.0"] != NSOrderedAscending)
#define IOS9_OR_LATER ([NSString compareCurrentVersion:@"9.0"] != NSOrderedAscending)
#define IOS8_OR_LATER ([NSString compareCurrentVersion:@"8.0"] != NSOrderedAscending)
#define IOS7_OR_LATER ([NSString compareCurrentVersion:@"7.0"] != NSOrderedAscending)

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define ScreenInch3p5 ([UIScreen mainScreen].bounds.size.height == 480)
#define ScreenInch4p ([UIScreen mainScreen].bounds.size.height == 568)
#define ScreenInch4p7 ([UIScreen mainScreen].bounds.size.height == 667)
#define ScreenInch5p5 ([UIScreen mainScreen].bounds.size.height == 1104)
#define ScreenInch3p5_OR_Larger ([UIScreen mainScreen].bounds.size.height >= 480)
#define ScreenInch4p_OR_Larger ([UIScreen mainScreen].bounds.size.height >= 568)
#define ScreenInch4p7_OR_Larger ([UIScreen mainScreen].bounds.size.height >= 667)
#define ScreenInch5p5_OR_Larger ([UIScreen mainScreen].bounds.size.height >= 1104)

#define kDesignScreenH 1334.f
#define kDesignScreenW 750.f
#define ScaleH(v) (v * kScreenHeight / kDesignScreenH)
#define ScaleW(v) (v * kScreenWidth / kDesignScreenW)
#define MultiplyH(v) (v / kDesignScreenH)
#define MultiplyW(v) (v / kDesignScreenW)


#define IsEmptyStr(_ref) (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) || ([(_ref)isEqualToString:@""]))
#define IsEmptyArr(_ref) (((_ref) == nil) || ([(_ref) isKindOfClass:[NSNull class]]) || ((_ref).count == 0))
#define IsEmptyDict(_ref) ([(_ref) allKeys].count == 0)
#define IsEmptyRect(_ref) (CGRectIsEmpty(_ref) || CGRectIsNull(_ref) || (CGRectEqualToRect((_ref), CGRectZero)))
#define IsEmptyAttributeStr(_ref) (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]) || ((_ref).length == 0))

#define KeyWindow [UIApplication sharedApplication].keyWindow

#define kAppTintColorName 0xF8A9CC
#define kAppTintDarkerColorName 0xF78BBB
#define kAppTintColor HEX_COLOR(kAppTintColorName)
#define kAppTintDarkerColor HEX_COLOR(kAppTintDarkerColorName)
#define kAppViewTintBgColor HEX_COLOR(0xEBF0F6)

#define kAppTabbarNormalColorName 0x858585
#define kAppTabbarNormalColor HEX_COLOR(kAppTabbarNormalColorName)
#define kAppTabbarSelectedColor kAppTintOrangeColor

#define kAppSeparateLineColor HEX_COLOR(0xEEEEEE)
#define kAppSeparateLineDarkerColor HEX_COLOR(0xC5C5C5)

#define kClearColor [UIColor clearColor]
#define kWhiteColor [UIColor whiteColor]
#define kBlackColor [UIColor blackColor]
#define kYellowColor [UIColor yellowColor]
#define kGreenColor [UIColor greenColor]
#define kRedColor [UIColor redColor]

#define kGroupTableViewBgColor [UIColor groupTableViewBackgroundColor]

#define kAppChsFontName (IOS9_OR_LATER ? @"PingFang SC" : @"Helvetica Neue")
#define kAppEngFontName (IOS9_OR_LATER ? @"Arial" : @"Arial")

#define FontForChsSize(v) [UIFont fontWithName:kAppChsFontName size:v]
#define FontForEngSize(v) [UIFont fontWithName:kAppEngFontName size:v]

//#define kJLFilterViewContentSizeNotification @"kJLFilterViewContentSizeNotification"
//#define kJLFilterViewContentSizeNotiInfoKey @"kJLFilterViewContentSizeNotiInfoKey"
#define kEPSTPriceResultFilterCollectionViewSendToBackNotification @"kEPSTPriceResultFilterCollectionViewSendToBackNotification"
#define kEPSTPriceResultFilterCollectionViewBringToFrontNotification @"kEPSTPriceResultFilterCollectionViewBringToFrontNotification"



#endif /* BMMacro_h */
