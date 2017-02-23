//
//  BMIPodPlaylistViewModel.h
//  Bot
//
//  Created by litt1e-p on 2017/2/22.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMBaseViewModel.h"

@interface BMIPodPlaylistViewModel : BMBaseViewModel

@property (nonatomic, strong) NSArray *playlists;
- (void)fetchPlaylists;

@end
