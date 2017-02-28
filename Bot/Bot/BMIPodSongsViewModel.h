//
//  BMIPodSongsViewModel.h
//  Bot
//
//  Created by litt1e-p on 2017/2/27.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMBaseViewModel.h"
#import "BMIPodSongsDTO.h"
#import <MediaPlayer/MediaPlayer.h>

@interface BMIPodSongsViewModel : BMBaseViewModel

@property (nonatomic, strong) NSArray *songs;
- (void)fetchAllSongs;
- (BMIPodSongsDTO *)songWithMediaItem:(MPMediaItem *)item;
- (NSArray *)songsWithMediaItems:(NSArray<MPMediaItemCollection *> *)items;

@end
