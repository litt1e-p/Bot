//
//  BMIPodAlbumsDTO.h
//  Bot
//
//  Created by litt1e-p on 2017/2/24.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMBaseStaticDTO.h"

@interface BMIPodAlbumsDTO : BMBaseStaticDTO

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *author;
@property (nonatomic, assign) NSUInteger songsNum;
@property (nonatomic, strong) UIImage *coverImg;

@end
