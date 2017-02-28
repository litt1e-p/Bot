//
//  BMIPodAlbumsViewModel.h
//  Bot
//
//  Created by litt1e-p on 2017/2/24.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMBaseViewModel.h"

@interface BMIPodAlbumsViewModel : BMBaseViewModel

@property (nonatomic, strong) NSArray *albums;
- (void)fetchAlbums;

@end
