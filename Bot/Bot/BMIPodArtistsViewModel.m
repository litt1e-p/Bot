//
//  BMIPodArtistsViewModel.m
//  Bot
//
//  Created by litt1e-p on 2017/2/24.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMIPodArtistsViewModel.h"
#import <MediaPlayer/MediaPlayer.h>
#import "BMHUD.h"
#import "BMIPodArtistsDTO.h"
#import "BMMacro.h"

@implementation BMIPodArtistsViewModel

- (void)fetchArtists
{
    [BMHUD showLoading];
    @weakify(self);
    NSMutableArray *tempList = [NSMutableArray array];
    dispatch_async(dispatch_get_global_queue( DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
        @strongify(self);
        NSArray<MPMediaItemCollection *> *collections = [[MPMediaQuery artistsQuery] collections];
        [collections enumerateObjectsUsingBlock:^(MPMediaItemCollection * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            BMIPodArtistsDTO *dto = [[BMIPodArtistsDTO alloc] init];
            NSString *property = [MPMediaItem titlePropertyForGroupingType:MPMediaGroupingArtist];
            dto.title             = [obj.representativeItem valueForProperty:property];
            dto.songsNum          = obj.items.count;
            dto.coverImg          = [self imageForArtists:obj];
            [tempList addObject:dto];
        }];
        dispatch_async(dispatch_get_main_queue(), ^(void){
            self.artists = [tempList copy];
            [BMHUD dismiss];
        });
    });
}

- (UIImage *)imageForArtists:(MPMediaItemCollection *)artists
{
    if (!IsEmptyArr(artists)) {
        MPMediaItem *item = [artists.items firstObject];
        MPMediaItemArtwork *propertyArtwork = [item valueForProperty:MPMediaItemPropertyArtwork];
        return propertyArtwork ? [propertyArtwork imageWithSize:CGSizeMake(150, 150)] : [UIImage imageNamed:@"microphone_icon"];
        
     }
    return [UIImage imageNamed:@"microphone_icon"];
}

@end
