//
//  NSString+VersionCompare.h
//  litt1e-p
//
//  Created by litt1e-p on 16/9/20.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (VersionCompare)

+ (NSComparisonResult)compareCurrentVersion:(NSString *)checkingVersion;
- (NSComparisonResult)compareVersion:(NSString *)checkingVersion;

@end
