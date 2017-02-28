//
//  BMIPodPlaylistCell.h
//  Bot
//
//  Created by litt1e-p on 2017/2/24.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMBaseTableViewCell.h"
#import "BMIPodPlaylistDTO.h"

@interface BMIPodPlaylistCell : BMBaseTableViewCell

- (void)assignCellWithDTO:(BMIPodPlaylistDTO *)dto;

@end
