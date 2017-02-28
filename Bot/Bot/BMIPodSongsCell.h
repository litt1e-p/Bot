//
//  BMIPodSongsCell.h
//  Bot
//
//  Created by litt1e-p on 2017/2/27.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMBaseTableViewCell.h"
#import "BMIPodSongsDTO.h"

@interface BMIPodSongsCell : BMBaseTableViewCell

- (void)assignCellWithDTO:(BMIPodSongsDTO *)dto;

@end
