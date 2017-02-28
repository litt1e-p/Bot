//
//  BMIPodAlbumsCell.m
//  Bot
//
//  Created by litt1e-p on 2017/2/24.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMIPodAlbumsCell.h"
#import "BMMacro.h"

@interface BMIPodAlbumsCell()

@property (nonatomic, strong) UIImageView *coverImgView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *authorLabel;
@property (nonatomic, strong) UILabel *numLabel;

@end

@implementation BMIPodAlbumsCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initSubViews];
    }
    return self;
}

- (void)assignCellWithDTO:(BMIPodAlbumsDTO *)dto
{
    self.coverImgView.image = dto.coverImg;
    self.nameLabel.text     = dto.title;
    self.authorLabel.text   = dto.author;
    self.numLabel.text      = [NSString stringWithFormat:@"%zi首", dto.songsNum];
}

- (void)initSubViews
{
    self.coverImgView = [UIImageView imageViewWithImage:nil];
    [self.contentView addSubview:self.coverImgView];
    
    self.nameLabel = [UILabel labelWithTextColor:HEX_COLOR(0x333333) font:FontForChsSize(14) text:nil];
    [self.contentView addSubview:self.nameLabel];
    
    self.authorLabel = [UILabel labelWithTextColor:HEX_COLOR(0x999999) font:FontForChsSize(12) text:nil];
    [self.contentView addSubview:self.authorLabel];
    
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
    }];
    
    [self.authorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.nameLabel);
        make.bottom.equalTo(self.coverImgView).offset(ScaleH(-5));
    }];
    
    [self.numLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(ScaleW(-25));
        make.centerY.equalTo(self.contentView);
    }];
}

@end
