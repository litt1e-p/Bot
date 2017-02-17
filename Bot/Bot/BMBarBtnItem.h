//
//  EPBarBtnItem.h
//  litt1e-p
//
//  Created by litt1e-p on 16/11/24.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, NavItemStyle) {
    
    NavItemStyleBack,
    NavItemStyleDone,
};

typedef NS_ENUM(NSInteger, NavBarBtnItemType)
{
    NavBarBtnItemTypeLeft,
    NavBarBtnItemTypeRight
};

@interface BMBarBtnItem : UIBarButtonItem

+ (NSArray *)itemsWithImageName:(NSString *)itemImageName type:(NavBarBtnItemType)type target:(id)target action:(SEL)action;
+ (NSArray *)itemsWithImage:(UIImage *)itemImage type:(NavBarBtnItemType)type target:(id)target action:(SEL)action;
+ (NSArray *)itemsWithTitle:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font type:(NavBarBtnItemType)type target:(id)target action:(SEL)action;

@end
