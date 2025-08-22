// __DEBUG__
// __CLOSE_PRINT__
//
//  ContentViewCell.m
//  NIM
//
//  Created by chris on 15/7/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//font

// __M_A_C_R_O__
//: #import "NTESSearchMessageContentCell.h"
#import "ContentViewCell.h"
//: #import "NTESSearchLocalHistoryObject.h"
#import "ComponentPartObject.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "BusyAvatarImageView.h"
#import "CustomFormatView.h"

//: CGFloat SearchCellTitleFontSize = 13.f;
CGFloat appHalfTitle = 13.f;
//: CGFloat SearchCellContentFontSize = 12.f;
CGFloat userTopVersionValue = 12.f;
//: CGFloat SearchCellTimeFontSize = 12.f;
CGFloat appStyleMsg = 12.f;

//layout
//: CGFloat SearchCellAvatarLeft = 15.f;
CGFloat appImageMsg = 15.f;
//: CGFloat SearchCellAvatarAndTitleSpacing = 10.f;
CGFloat userFrameStr = 10.f;
//: CGFloat SearchCellTitleTop = 10.f;
CGFloat userInfoUrl = 10.f;
//: CGFloat SearchCellTimeRight = 15.f;
CGFloat main_layerMsg = 15.f;
//: CGFloat SearchCellTimeTop = 10.f;
CGFloat user_phaseFormat = 10.f;
//: CGFloat SearchCellContentTop = 30.f;
CGFloat kVersionTitleStr = 30.f;
//: CGFloat SearchCellContentBottom = 8.f;
CGFloat show_scaleUserMsg = 8.f;
//: CGFloat SearchCellContentMaxWidth = 260.f;
CGFloat showQueryIdent = 260.f;
//: CGFloat SearchCellContentMinHeight = 15.f; 
CGFloat dream_kitId = 15.f; //cell的高度是由文本高度决定的。防止没有文本的情况，导致cell的高度过小。

//: @interface NTESSearchMessageContentCell()
@interface ContentViewCell()

//: @property (nonatomic,strong) BusyAvatarImageView *avatar;
@property (nonatomic,strong) CustomFormatView *avatar;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UILabel *contentLabel;
@property (nonatomic,strong) UILabel *contentLabel;

//: @property (nonatomic,strong) UILabel *timeLabel;
@property (nonatomic,strong) UILabel *timeLabel;

//: @property (nonatomic,strong) NTESSearchLocalHistoryObject *object;
@property (nonatomic,strong) ComponentPartObject *object;

//: @end
@end

//: @implementation NTESSearchMessageContentCell
@implementation ContentViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _avatar = [[BusyAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        _avatar = [[CustomFormatView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        //: [self.contentView addSubview:_avatar];
        [self.contentView addSubview:_avatar];
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.font = [UIFont systemFontOfSize:13.f];
        _titleLabel.font = [UIFont systemFontOfSize:13.f];
        //: [self.contentView addSubview:_titleLabel];
        [self.contentView addSubview:_titleLabel];
        //: _contentLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _contentLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _contentLabel.font = [UIFont systemFontOfSize:12.f];
        _contentLabel.font = [UIFont systemFontOfSize:12.f];
        //: _contentLabel.textColor = [UIColor grayColor];
        _contentLabel.textColor = [UIColor grayColor];
        //: _contentLabel.numberOfLines = 0;
        _contentLabel.numberOfLines = 0;
        //: [self.contentView addSubview:_contentLabel];
        [self.contentView addSubview:_contentLabel];
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.font = [UIFont systemFontOfSize:12.f];
        _timeLabel.font = [UIFont systemFontOfSize:12.f];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(NTESSearchLocalHistoryObject *)object{
- (void)roundRecent:(ComponentPartObject *)object{
    //: self.object = object;
    self.object = object;
    //: NIMMessage *message = object.message;
    NIMMessage *message = object.message;
    //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:message.from option:nil];
    Info *info = [[Case pastTop] consumer:message.from message:nil];
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (info.avatarUrlString.length) {
    if (info.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:info.avatarUrlString];
        avatarURL = [NSURL URLWithString:info.avatarUrlString];
    }
    //: [self.avatar nim_setImageWithURL:avatarURL placeholderImage:info.avatarImage];
    [self.avatar anyOn:avatarURL model:info.avatarImage];
    //: self.titleLabel.text = info.showName;
    self.titleLabel.text = info.showName;
    //: self.contentLabel.text = message.text;
    self.contentLabel.text = message.text;
    //: self.timeLabel.text = [NTESSessionUtil showTime:message.timestamp showDetail:YES];
    self.timeLabel.text = [DeviceDate close:message.timestamp view:YES];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
    //: self.contentLabel.size = [self.contentLabel sizeThatFits:CGSizeMake(SearchCellContentMaxWidth * [UIScreen mainScreen].bounds.size.width / 320, 1.7976931348623157e+308)];
    self.contentLabel.size = [self.contentLabel sizeThatFits:CGSizeMake(showQueryIdent * [UIScreen mainScreen].bounds.size.width / 320, 1.7976931348623157e+308)];
    //: self.contentLabel.height = ((SearchCellContentMinHeight) > (self.contentLabel.height) ? (SearchCellContentMinHeight) : (self.contentLabel.height));
    self.contentLabel.height = ((dream_kitId) > (self.contentLabel.height) ? (dream_kitId) : (self.contentLabel.height));
    //: [self.timeLabel sizeToFit];
    [self.timeLabel sizeToFit];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.top = SearchCellTitleTop;
    self.avatar.top = userInfoUrl;
    //: self.avatar.left = SearchCellAvatarLeft;
    self.avatar.left = appImageMsg;
    //: self.titleLabel.left = self.avatar.right + SearchCellAvatarAndTitleSpacing;
    self.titleLabel.left = self.avatar.right + userFrameStr;
    //: self.contentLabel.left = self.titleLabel.left;
    self.contentLabel.left = self.titleLabel.left;
    //: self.titleLabel.top = SearchCellTitleTop;
    self.titleLabel.top = userInfoUrl;
    //: self.contentLabel.bottom = self.height - SearchCellContentBottom;
    self.contentLabel.bottom = self.height - show_scaleUserMsg;
    //: self.timeLabel.right = self.width - SearchCellTimeRight;
    self.timeLabel.right = self.width - main_layerMsg;
    //: self.timeLabel.top = SearchCellTimeTop;
    self.timeLabel.top = user_phaseFormat;
}


//: @end
@end
