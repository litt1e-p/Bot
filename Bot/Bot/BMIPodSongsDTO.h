//
//  BMIPodSongsDTO.h
//  Bot
//
//  Created by litt1e-p on 2017/2/27.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMBaseStaticDTO.h"

@interface BMIPodSongsDTO : BMBaseStaticDTO

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *author;
@property (nonatomic, copy) NSString *album;
@property (nonatomic, assign) NSURL *url;
@property (nonatomic, strong) UIImage *coverImg;
@property (nonatomic, assign) BOOL offline;

@end
