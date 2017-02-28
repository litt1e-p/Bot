//
//  BMIPodArtistsDTO.h
//  Bot
//
//  Created by litt1e-p on 2017/2/24.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMBaseStaticDTO.h"

@interface BMIPodArtistsDTO : BMBaseStaticDTO

@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) NSUInteger songsNum;
@property (nonatomic, strong) UIImage *coverImg;

@end
