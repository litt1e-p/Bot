//
//  BMIPodSongsViewModel.m
//  Bot
//
//  Created by litt1e-p on 2017/2/27.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMIPodSongsViewModel.h"
#import "BMHUD.h"
#import "BMMacro.h"

@implementation BMIPodSongsViewModel

- (void)fetchAllSongs
{
    [BMHUD showLoading];
    @weakify(self);
    NSMutableArray *tempList = [NSMutableArray array];
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
        @strongify(self);
        NSArray<MPMediaItemCollection *> *collections = [[MPMediaQuery songsQuery] collections];
        [collections enumerateObjectsUsingBlock:^(MPMediaItemCollection * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            MPMediaItem *item   = obj.representativeItem;
            BMIPodSongsDTO *dto = [[BMIPodSongsDTO alloc] init];
            dto.title           = [item valueForProperty:MPMediaItemPropertyTitle];
            dto.author          = [item valueForKey:MPMediaItemPropertyArtist];
            dto.album           = [item valueForKey:MPMediaItemPropertyAlbumTitle];
            dto.coverImg        = [self imageForSongs:item];
            dto.url             = [item valueForProperty:MPMediaItemPropertyAssetURL];
            dto.offline         = YES;
            [tempList addObject:dto];
        }];
        dispatch_async(dispatch_get_main_queue(), ^(void){
            self.songs = [tempList copy];
            [BMHUD dismiss];
        });
    });
}

- (UIImage *)imageForSongs:(MPMediaItem *)item
{
    if (item) {
        MPMediaItemArtwork *propertyArtwork = [item valueForProperty:MPMediaItemPropertyArtwork];
        return propertyArtwork ? [propertyArtwork imageWithSize:CGSizeMake(150, 150)] : [UIImage imageNamed:@"song_icon"];
        
    }
    return [UIImage imageNamed:@"song_icon "];
}

- (BMIPodSongsDTO *)songWithMediaItem:(MPMediaItem *)item
{
    BMIPodSongsDTO *dto = [[BMIPodSongsDTO alloc] init];
    dto.title           = [item valueForProperty:MPMediaItemPropertyTitle];
    dto.author          = [item valueForKey:MPMediaItemPropertyArtist];
    dto.album           = [item valueForKey:MPMediaItemPropertyAlbumTitle];
    dto.coverImg        = [self imageForSongs:item];
    dto.url             = [item valueForProperty:MPMediaItemPropertyAssetURL];
    return dto;
}

- (NSArray *)songsWithMediaItems:(NSArray<MPMediaItemCollection *> *)items
{
    NSMutableArray *tempList = [NSMutableArray array];
    [items enumerateObjectsUsingBlock:^(MPMediaItemCollection * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [tempList addObject:[self songWithMediaItem:obj.representativeItem]];
    }];
    return tempList;
}

@end
