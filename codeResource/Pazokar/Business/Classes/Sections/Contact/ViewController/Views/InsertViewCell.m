
#import <Foundation/Foundation.h>

typedef struct {
    Byte specs;
    Byte *titleGreen;
    unsigned int remove;
	int showReply;
	int toolVertical;
} StructInfoData;

@interface InfoData : NSObject

@end

@implementation InfoData

+ (Byte *)InfoDataToByte:(StructInfoData *)data {
    for (int i = 0; i < data->remove; i++) {
        data->titleGreen[i] ^= data->specs;
    }
    data->titleGreen[data->remove] = 0;
	if (data->remove >= 2) {
		data->showReply = data->titleGreen[0];
		data->toolVertical = data->titleGreen[1];
	}
    return data->titleGreen;
}

+ (NSString *)StringFromInfoData:(StructInfoData *)data {
    return [NSString stringWithUTF8String:(char *)[self InfoDataToByte:data]];
}

//: _UITableViewCellSeparatorView
+ (NSString *)showAfterPathDropIdent {
    /* static */ NSString *showAfterPathDropIdent = nil;
    if (!showAfterPathDropIdent) {
        StructInfoData value = (StructInfoData){24, (Byte []){71, 77, 81, 76, 121, 122, 116, 125, 78, 113, 125, 111, 91, 125, 116, 116, 75, 125, 104, 121, 106, 121, 108, 119, 106, 78, 113, 125, 111, 47}, 29, 175, 73};
        showAfterPathDropIdent = [self StringFromInfoData:&value];
    }
    return showAfterPathDropIdent;
}

//: btn_video
+ (NSString *)noti_redTitle {
    /* static */ NSString *noti_redTitle = nil;
    if (!noti_redTitle) {
        StructInfoData value = (StructInfoData){182, (Byte []){212, 194, 216, 233, 192, 223, 210, 211, 217, 169}, 9, 30, 67};
        noti_redTitle = [self StringFromInfoData:&value];
    }
    return noti_redTitle;
}

//: f6f6f6
+ (NSString *)userMyKey {
    /* static */ NSString *userMyKey = nil;
    if (!userMyKey) {
        StructInfoData value = (StructInfoData){132, (Byte []){226, 178, 226, 178, 226, 178, 215}, 6, 8, 107};
        userMyKey = [self StringFromInfoData:&value];
    }
    return userMyKey;
}

//: head_default_group
+ (NSString *)main_pinMsg {
    /* static */ NSString *main_pinMsg = nil;
    if (!main_pinMsg) {
        StructInfoData value = (StructInfoData){127, (Byte []){23, 26, 30, 27, 32, 27, 26, 25, 30, 10, 19, 11, 32, 24, 13, 16, 10, 15, 250}, 18, 71, 52};
        main_pinMsg = [self StringFromInfoData:&value];
    }
    return main_pinMsg;
}

//: btn_message
+ (NSString *)show_titleStr {
    /* static */ NSString *show_titleStr = nil;
    if (!show_titleStr) {
        StructInfoData value = (StructInfoData){13, (Byte []){111, 121, 99, 82, 96, 104, 126, 126, 108, 106, 104, 209}, 11, 171, 23};
        show_titleStr = [self StringFromInfoData:&value];
    }
    return show_titleStr;
}

//: head_default
+ (NSString *)dreamRecentContent {
    /* static */ NSString *dreamRecentContent = nil;
    if (!dreamRecentContent) {
        StructInfoData value = (StructInfoData){215, (Byte []){191, 178, 182, 179, 136, 179, 178, 177, 182, 162, 187, 163, 159}, 12, 121, 60};
        dreamRecentContent = [self StringFromInfoData:&value];
    }
    return dreamRecentContent;
}

//: #2C3042
+ (NSString *)showImageFrameMessage {
    /* static */ NSString *showImageFrameMessage = nil;
    if (!showImageFrameMessage) {
        StructInfoData value = (StructInfoData){152, (Byte []){187, 170, 219, 171, 168, 172, 170, 159}, 7, 208, 104};
        showImageFrameMessage = [self StringFromInfoData:&value];
    }
    return showImageFrameMessage;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  InsertViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFriendListTableViewCell.h"
#import "InsertViewCell.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "FFFAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"

//: @implementation NTESFriendListTableViewCell
@implementation InsertViewCell


//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

        //: [self initSubviews];
        [self initStreetwise];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)compartment:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESFriendListTableViewCell";
    static NSString *identifier = @"InsertViewCell";
    //: NTESFriendListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    InsertViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESFriendListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[InsertViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initStreetwise {

    //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
    bgView.backgroundColor = [UIColor status:[InfoData userMyKey]];
    //: bgView.layer.cornerRadius = 12;
    bgView.layer.cornerRadius = 12;
    //: [self.contentView addSubview:bgView];
    [self.contentView addSubview:bgView];

    //: [bgView addSubview:self.iconImageView];
    [bgView addSubview:self.iconImageView];
    //: [bgView addSubview:self.titleLabel];
    [bgView addSubview:self.titleLabel];

    //: self.iconImageView.frame = CGRectMake(15, 8, 40, 40);
    self.iconImageView.frame = CGRectMake(15, 8, 40, 40);
    //: self.titleLabel.frame = CGRectMake(70, 0, 230, 56);
    self.titleLabel.frame = CGRectMake(70, 0, 230, 56);

//    self.messageBtn.frame = CGRectMake(SCREEN_WIDTH-15-24, 16, 24, 24);
//    self.videoBtn.frame = CGRectMake(SCREEN_WIDTH-15-24, 16, 24, 24);

}


//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)record:(id<DatePraise>)member{
    //: self.titleLabel.text = member.showName;
    self.titleLabel.text = member.begin;
    //: self.memberId = [member memberId];
    self.memberId = [member conference];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    Info *info = [[Case pastTop] consumer:self.memberId message:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;

//    [self.iconImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:[InfoData dreamRecentContent]]];
}

//: - (void)refreshTeam:(NIMTeam *)team {
- (void)sample:(NIMTeam *)team {

    //: self.titleLabel.text = team.teamName;
    self.titleLabel.text = team.teamName;
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    Info *info = [[Case pastTop] controlOption:self.memberId my:nil];
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default_group"]];
    [self.iconImageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:[InfoData main_pinMsg]]];
}


//: - (void)reloadUserItem:(NIMUser *)user
- (void)selected:(NIMUser *)user
{
    //: self.titleLabel.text = user.userInfo.nickName;
    self.titleLabel.text = user.userInfo.nickName;
    //: [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:nil];
}

//: + (CGFloat)getCellHeight:(NSDictionary *)information {
+ (CGFloat)refresh:(NSDictionary *)information {
    //: return 72.f;
    return 72.f;
}

//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([InfoData showAfterPathDropIdent]) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}

//: - (void)onTouchmessageButton {
- (void)beyondMonitor {
    //: if ([self.delegate respondsToSelector:@selector(didTouchMessageButton:)]) {
    if ([self.delegate respondsToSelector:@selector(magnituded:)]) {
        //: [self.delegate didTouchMessageButton:self.memberId];
        [self.delegate magnituded:self.memberId];
    }
}


//: - (UIImageView *)iconImageView {
- (UIImageView *)iconImageView {
    //: if (!_iconImageView) {
    if (!_iconImageView) {
        //: _iconImageView = [[UIImageView alloc] init];
        _iconImageView = [[UIImageView alloc] init];
        //: _iconImageView.layer.masksToBounds = YES;
        _iconImageView.layer.masksToBounds = YES;
        //: _iconImageView.layer.cornerRadius = 20;
        _iconImageView.layer.cornerRadius = 20;
        //: _iconImageView.contentMode = UIViewContentModeScaleToFill;
        _iconImageView.contentMode = UIViewContentModeScaleToFill;
    }
    //: return _iconImageView;
    return _iconImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:15.f];
        _titleLabel.font = [UIFont systemFontOfSize:15.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor status:[InfoData showImageFrameMessage]];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIButton *)messageBtn {
- (UIButton *)messageBtn {
    //: if (!_messageBtn) {
    if (!_messageBtn) {
        //: _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_messageBtn addTarget:self action:@selector(onTouchmessageButton) forControlEvents:UIControlEventTouchUpInside];
        [_messageBtn addTarget:self action:@selector(beyondMonitor) forControlEvents:UIControlEventTouchUpInside];
        //: [_messageBtn setImage:[UIImage imageNamed:@"btn_message"] forState:UIControlStateNormal];
        [_messageBtn setImage:[UIImage imageNamed:[InfoData show_titleStr]] forState:UIControlStateNormal];
    }
    //: return _messageBtn;
    return _messageBtn;
}

//: - (UIButton *)videoBtn {
- (UIButton *)videoBtn {
    //: if (!_videoBtn) {
    if (!_videoBtn) {
        //: _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _videoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_videoBtn setImage:[UIImage imageNamed:@"btn_video"] forState:UIControlStateNormal];
        [_videoBtn setImage:[UIImage imageNamed:[InfoData noti_redTitle]] forState:UIControlStateNormal];
//        [_videoBtn addTarget:self action:@selector(onTouchVideoButton) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _videoBtn;
    return _videoBtn;
}


//: @end
@end