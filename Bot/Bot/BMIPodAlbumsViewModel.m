//
//  BMIPodAlbumsViewModel.m
//  Bot
//
//  Created by litt1e-p on 2017/2/24.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMIPodAlbumsViewModel.h"
#import <MediaPlayer/MediaPlayer.h>
#import "BMHUD.h"
#import "BMIPodAlbumsDTO.h"
#import "BMMacro.h"

@implementation BMIPodAlbumsViewModel

- (void)fetchAlbums
{
    [BMHUD showLoading];
    @weakify(self);
    NSMutableArray *tempList = [NSMutableArray array];
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
        @strongify(self);
        NSArray<MPMediaItemCollection *> *collections = [[MPMediaQuery albumsQuery] collections];
        [collections enumerateObjectsUsingBlock:^(MPMediaItemCollection * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            BMIPodAlbumsDTO *dto = [[BMIPodAlbumsDTO alloc] init];
            dto.title            = [obj.representativeItem valueForProperty:[MPMediaItem titlePropertyForGroupingType:MPMediaGroupingAlbum]];
            dto.author           = [obj.representativeItem valueForKey:[MPMediaItem titlePropertyForGroupingType:MPMediaGroupingAlbumArtist]];
            dto.songsNum         = obj.items.count;
            dto.coverImg         = [self imageForAlbums:obj];
            [tempList addObject:dto];
        }];
        dispatch_async(dispatch_get_main_queue(), ^(void){
            self.albums = [tempList copy];
            [BMHUD dismiss];
        });
    });
}

- (UIImage *)imageForAlbums:(MPMediaItemCollection *)albums
{
    if (!IsEmptyArr(albums)) {
        MPMediaItem *item = [albums.items firstObject];
        MPMediaItemArtwork *propertyArtwork = [item valueForProperty:MPMediaItemPropertyArtwork];
        return propertyArtwork ? [propertyArtwork imageWithSize:CGSizeMake(150, 150)] : [UIImage imageNamed:@"album_icon"];
        
    }
    return [UIImage imageNamed:@"album_icon "];
}

@end
