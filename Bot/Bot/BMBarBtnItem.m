//
//  EPBarBtnItem.m
//  litt1e-p
//
//  Created by litt1e-p on 16/11/24.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "BMBarBtnItem.h"

@implementation BMBarBtnItem

+ (NSArray *)itemsWithImageName:(NSString *)itemImageName type:(NavBarBtnItemType)type target:(id)target action:(SEL)action
{
    return [BMBarBtnItem itemsWithImage:[UIImage imageNamed:itemImageName] type:type target:target action:action];
}

+ (NSArray *)itemsWithImage:(UIImage *)itemImage type:(NavBarBtnItemType)type target:(id)target action:(SEL)action
{
    UIButton *btn       = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor clearColor];
    [btn setImage:itemImage forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 0, 44, 44);
    btn.imageEdgeInsets = type == NavBarBtnItemTypeLeft ? UIEdgeInsetsMake(0, 0, 0, 15) : UIEdgeInsetsMake(0, 10, 0, 0);
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    BMBarBtnItem *customBtn = [[BMBarBtnItem alloc] initWithCustomView:btn];
    
    BMBarBtnItem *item = [[BMBarBtnItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:target action:action];
    item.width = -15;
    NSArray *itemArr = [NSArray arrayWithObjects:item, customBtn, nil];
    return itemArr;
}

+ (NSArray *)itemsWithTitle:(NSString *)title titleColor:(UIColor *)titleColor font:(UIFont *)font type:(NavBarBtnItemType)type target:(id)target action:(SEL)action
{
    UIButton *btn       = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor clearColor];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    btn.frame           = CGRectMake(0, 0, 44, 44);
    btn.imageEdgeInsets = type == NavBarBtnItemTypeLeft ? UIEdgeInsetsMake(0, 0, 0, 15) : UIEdgeInsetsMake(0, 10, 0, 0);
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    BMBarBtnItem *customBtn = [[BMBarBtnItem alloc] initWithCustomView:btn];
    
    BMBarBtnItem *item = [[BMBarBtnItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:target action:action];
    item.width = -15;
    NSArray *itemArr = [NSArray arrayWithObjects:item, customBtn, nil];
    return itemArr;
}

@end
