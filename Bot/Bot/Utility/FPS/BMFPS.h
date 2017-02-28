//
//  BMFPS.h
//  Bot
//
//  Created by litt1e-p on 2016/12/29.
//  Copyright © 2016年 litt1e-p. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BMFPS : NSObject

+ (BMFPS *)shareInstance;
- (void)start;
- (void)end;

@end
