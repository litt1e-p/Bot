//
//  NSString+VersionCompare.m
//  litt1e-p
//
//  Created by litt1e-p on 16/9/20.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import "NSString+VersionCompare.h"
#import <UIKit/UIKit.h>

@implementation NSString (VersionCompare)

- (NSComparisonResult)compareVersion:(NSString *)checkingVersion
{
    NSString *currentVersion = self;
    if ([currentVersion isEqualToString:checkingVersion]) {
        return NSOrderedSame;
    }
    NSArray *currentArr  = [currentVersion componentsSeparatedByString:@"."];
    NSArray *checkingArr = [checkingVersion componentsSeparatedByString:@"."];
    NSInteger count      = ([currentArr count] > [checkingArr count]) ? [currentArr count] : [checkingArr count];
    NSComparisonResult res;
    for (int i = 0; i < count; i++) {
        NSString *currentString  = i < [currentArr count] ? [currentArr objectAtIndex:i] : @"0";
        NSString *checkingString = i < [checkingArr count] ? [checkingArr objectAtIndex:i] : @"0";
        if ([currentString intValue] > [checkingString intValue]) {
            res = NSOrderedDescending;
            break;
        } else if ([currentString intValue] < [checkingString intValue]){
            res = NSOrderedAscending;
            break;
        }
    }
    return res;
}

+ (NSComparisonResult)compareCurrentVersion:(NSString *)checkingVersion
{
    return [[[UIDevice currentDevice] systemVersion] compareVersion:checkingVersion];
}

@end
