//
//  BMIPodPlaylistCell.m
//  Bot
//
//  Created by litt1e-p on 2017/2/24.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMIPodPlaylistCell.h"
#import "BMMacro.h"

@interface BMIPodPlaylistCell()

@property (nonatomic, strong) UIImageView *coverImgView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *numLabel;

@end

@implementation BMIPodPlaylistCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initSubViews];
    }
    return self;
}

- (void)assignCellWithDTO:(BMIPodPlaylistDTO *)dto
{
    self.coverImgView.image = dto.coverImg;
    self.nameLabel.text     = dto.title;
    self.numLabel.text      = [NSString stringWithFormat:@"%zi首", dto.songsNum];
}

- (void)initSubViews
{
    self.coverImgView = [UIImageView imageViewWithImage:nil];
    [self.contentView addSubview:self.coverImgView];
    
    self.nameLabel = [UILabel labelWithTextColor:HEX_COLOR(0x333333) font:FontForChsSize(14) text:nil];
    [self.contentView addSubview:self.nameLabel];
    
    self.numLabel = [UILabel labelWithTextColor:HEX_COLOR(0x999999) font:FontForChsSize(12) text:nil];
    [self.contentView addSubview:self.numLabel];
    
    ///
    
    [self.coverImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(ScaleW(25));
        make.centerY.equalTo(self.contentView);
        make.width.equalTo(@ScaleW(88));
        make.height.equalTo(@ScaleW(88));
    }];
    
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.coverImgView.mas_trailing).offset(ScaleW(15));
        make.top.equalTo(self.coverImgView).offset(ScaleH(5));
        make.trailing.equalTo(self.contentView).offset(ScaleW(-25));
    }];
    
    [self.numLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.nameLabel);
        make.bottom.equalTo(self.coverImgView).offset(ScaleH(-5));
        make.trailing.equalTo(self.nameLabel);
    }];
}

@end
