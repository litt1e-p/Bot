//
//  BMIPodAlbumsCell.h
//  Bot
//
//  Created by litt1e-p on 2017/2/24.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMBaseTableViewCell.h"
#import "BMIPodAlbumsDTO.h"

@interface BMIPodAlbumsCell : BMBaseTableViewCell

- (void)assignCellWithDTO:(BMIPodAlbumsDTO *)dto;

@end
