//
//  BMIPodSongsCell.m
//  Bot
//
//  Created by litt1e-p on 2017/2/27.
//  Copyright © 2017年 litt1e-p. All rights reserved.
//

#import "BMIPodSongsCell.h"
#import "BMMacro.h"

@interface BMIPodSongsCell()

@property (nonatomic, strong) UIImageView *coverImgView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *authorAlbumLabel;
@property (nonatomic, strong) UIButton *offlineImgBtn;
@property (nonatomic, strong) UIButton *menuBtn;

@end

@implementation BMIPodSongsCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initSubViews];
    }
    return self;
}

- (void)assignCellWithDTO:(BMIPodSongsDTO *)dto
{
    self.coverImgView.image = dto.coverImg;
    self.nameLabel.text     = dto.title;
    self.authorAlbumLabel.text = IsEmptyStr(dto.author) ? Loc(@"未知歌手") : [NSString stringWithFormat:@"%@ · %@", dto.author, dto.album];
    if (dto.offline) {
        self.offlineImgBtn.hidden = NO;
        self.offlineImgBtn.selected = YES;
        [self.offlineImgBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.nameLabel);
            make.bottom.equalTo(self.coverImgView).offset(ScaleH(-5));
            make.width.equalTo(@ScaleW(25));
            make.height.equalTo(@ScaleW(25));
        }];
        [self.authorAlbumLabel mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.offlineImgBtn.mas_trailing).offset(ScaleW(3));
            make.centerY.equalTo(self.offlineImgBtn                                                                                                                                                                                                                                                                                                                                                                         );
            make.trailing.equalTo(self.menuBtn.mas_leading).offset(ScaleW(-5));
        }];
    } else {
        [self.authorAlbumLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.nameLabel);
            make.bottom.equalTo(self.coverImgView).offset(ScaleH(-5));
            make.trailing.equalTo(self.menuBtn.mas_leading).offset(ScaleW(-5));
        }];
    }
}

- (void)initSubViews
{
    self.coverImgView = [UIImageView imageViewWithImage:nil];
    [self.contentView addSubview:self.coverImgView];
    
    self.nameLabel = [UILabel labelWithTextColor:HEX_COLOR(0x333333) font:FontForChsSize(14) text:nil];
    [self.contentView addSubview:self.nameLabel];
    
    self.authorAlbumLabel = [UILabel labelWithTextColor:HEX_COLOR(0x999999) font:FontForChsSize(12) text:nil];
    [self.contentView addSubview:self.authorAlbumLabel];
    
    self.offlineImgBtn = [UIButton buttonWithImage:[UIImage imageNamed:@"cell_checked_disable"]];
    [self.offlineImgBtn setImage:[UIImage imageNamed:@"cell_checked"] forState:UIControlStateSelected];
    self.offlineImgBtn.hidden = YES;
    [self.contentView addSubview:self.offlineImgBtn];
    
    self.menuBtn = [UIButton buttonWithImage:[UIImage imageNamed:@"more_menu_icon"]];
    [self.contentView addSubview:self.menuBtn];
    
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
        make.trailing.equalTo(self.menuBtn.mas_leading).offset(ScaleW(-5));
    }];
    
    [self.menuBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView);
        make.centerY.equalTo(self.contentView);
        make.width.equalTo(@ScaleW(100));
        make.height.equalTo(@ScaleW(100));
    }];
}

@end
