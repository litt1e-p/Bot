//
//  BMIPodPlaylistViewModel.m
//  Bot
//
//  Created by litt1e-p on 2017/2/22.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMIPodPlaylistViewModel.h"
#import <MediaPlayer/MediaPlayer.h>
#import "BMHUD.h"
#import "BMIPodPlaylistDTO.h"
#import "BMMacro.h"

@implementation BMIPodPlaylistViewModel

- (void)fetchPlaylists
{
    [BMHUD showLoading];
    @weakify(self);
    NSMutableArray *tempList = [NSMutableArray array];
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
        @strongify(self);
        NSArray<MPMediaItemCollection *> *collections = [[MPMediaQuery playlistsQuery] collections];
        [collections enumerateObjectsUsingBlock:^(MPMediaItemCollection * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            BMIPodPlaylistDTO *dto = [[BMIPodPlaylistDTO alloc] init];
            dto.title              = [obj valueForProperty: MPMediaPlaylistPropertyName];
            dto.songsNum           = obj.items.count;
            dto.coverImg           = [self imageForPlaylist:obj];
            [tempList addObject:dto];
        }];
        dispatch_async(dispatch_get_main_queue(), ^(void){
            self.playlists = [tempList copy];
            [BMHUD dismiss];
        });
    });
}

- (UIImage *)imageForPlaylist:(MPMediaItemCollection *)playlist
{
    if (!IsEmptyArr(playlist)) {
        MPMediaItem *item = [playlist.items firstObject];
        MPMediaItemArtwork *propertyArtwork = [item valueForProperty:MPMediaItemPropertyArtwork];
        return propertyArtwork ? [propertyArtwork imageWithSize:CGSizeMake(150, 150)] : [UIImage imageNamed:@"playlist_icon"];
    }
    return [UIImage imageNamed:@"playlist_icon"];
}

@end
