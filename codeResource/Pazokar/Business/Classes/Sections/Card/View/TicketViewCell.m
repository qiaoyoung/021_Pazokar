
#import <Foundation/Foundation.h>

@interface SourceData : NSObject

@end

@implementation SourceData

+ (Byte *)SourceDataToCache:(Byte *)data {
    int objectContent = data[0];
    Byte toVoice = data[1];
    int stormCenter = data[2];
    for (int i = stormCenter; i < stormCenter + objectContent; i++) {
        int value = data[i] - toVoice;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[stormCenter + objectContent] = 0;
    return data + stormCenter;
}

+ (NSString *)StringFromSourceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SourceDataToCache:data]];
}

//: /user/detail
+ (NSString *)appWithModeFormat {
    /* static */ NSString *appWithModeFormat = nil;
    if (!appWithModeFormat) {
        Byte value[] = {12, 14, 9, 53, 195, 236, 235, 200, 183, 61, 131, 129, 115, 128, 61, 114, 115, 130, 111, 119, 122, 35};
        appWithModeFormat = [self StringFromSourceData:value];
    }
    return appWithModeFormat;
}

//: user_id
+ (NSString *)mLineMakePath {
    /* static */ NSString *mLineMakePath = nil;
    if (!mLineMakePath) {
        Byte value[] = {7, 30, 3, 147, 145, 131, 144, 125, 135, 130, 153};
        mLineMakePath = [self StringFromSourceData:value];
    }
    return mLineMakePath;
}

//: icon_gender_male
+ (NSString *)userModeFormat {
    /* static */ NSString *userModeFormat = nil;
    if (!userModeFormat) {
        Byte value[] = {16, 43, 5, 44, 119, 148, 142, 154, 153, 138, 146, 144, 153, 143, 144, 157, 138, 152, 140, 151, 144, 92};
        userModeFormat = [self StringFromSourceData:value];
    }
    return userModeFormat;
}

//: icon_gender_female
+ (NSString *)m_teamName {
    /* static */ NSString *m_teamName = nil;
    if (!m_teamName) {
        Byte value[] = {18, 32, 5, 69, 98, 137, 131, 143, 142, 127, 135, 133, 142, 132, 133, 146, 127, 134, 133, 141, 129, 140, 133, 146};
        m_teamName = [self StringFromSourceData:value];
    }
    return m_teamName;
}

//: register_avtivity_account
+ (NSString *)app_removeTitle {
    /* static */ NSString *app_removeTitle = nil;
    if (!app_removeTitle) {
        Byte value[] = {25, 28, 5, 137, 173, 142, 129, 131, 133, 143, 144, 129, 142, 123, 125, 146, 144, 133, 146, 133, 144, 149, 123, 125, 127, 127, 139, 145, 138, 144, 127};
        app_removeTitle = [self StringFromSourceData:value];
    }
    return app_removeTitle;
}

//: code
+ (NSString *)showMemberNameToUrl {
    /* static */ NSString *showMemberNameToUrl = nil;
    if (!showMemberNameToUrl) {
        Byte value[] = {4, 20, 9, 31, 97, 72, 110, 240, 35, 119, 131, 120, 121, 26};
        showMemberNameToUrl = [self StringFromSourceData:value];
    }
    return showMemberNameToUrl;
}

//: data
+ (NSString *)showOptionUrl {
    /* static */ NSString *showOptionUrl = nil;
    if (!showOptionUrl) {
        Byte value[] = {4, 88, 8, 4, 128, 178, 39, 215, 188, 185, 204, 185, 202};
        showOptionUrl = [self StringFromSourceData:value];
    }
    return showOptionUrl;
}

//: account
+ (NSString *)showRedMsg {
    /* static */ NSString *showRedMsg = nil;
    if (!showRedMsg) {
        Byte value[] = {7, 14, 4, 122, 111, 113, 113, 125, 131, 124, 130, 193};
        showRedMsg = [self StringFromSourceData:value];
    }
    return showRedMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TicketViewCell.m
//  NIM
//
//  Created by chris on 15/9/28.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCardPortraitCell.h"
#import "TicketViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"

//: @interface NTESCardPortraitCell()
@interface TicketViewCell()

//: @property (nonatomic,strong) FFFAvatarImageView *avatar;
@property (nonatomic,strong) CustomFormatView *avatar;

//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;

//: @property (nonatomic,strong) UILabel *nickNameLabel;
@property (nonatomic,strong) UILabel *nickNameLabel;

//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;

//: @property (nonatomic,strong) UIImageView *genderIcon;
@property (nonatomic,strong) UIImageView *genderIcon;

//: @end
@end

//: @implementation NTESCardPortraitCell
@implementation TicketViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: CGFloat avatarWidth = 55.f;
        CGFloat avatarWidth = 55.f;
        //: _avatar = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        _avatar = [[CustomFormatView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        //: [self.contentView addSubview:_avatar];
        [self.contentView addSubview:_avatar];
        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.font = [UIFont systemFontOfSize:18.f];
        _nameLabel.font = [UIFont systemFontOfSize:18.f];
        //: [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_nameLabel];
        //: _nickNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        //: _nickNameLabel.textColor = [UIColor grayColor];
        _nickNameLabel.textColor = [UIColor grayColor];
        //: [self.contentView addSubview:_nickNameLabel];
        [self.contentView addSubview:_nickNameLabel];
        //: _accountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _accountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _accountLabel.font = [UIFont systemFontOfSize:13.f];
        _accountLabel.font = [UIFont systemFontOfSize:13.f];
        //: _accountLabel.textColor = [UIColor grayColor];
        _accountLabel.textColor = [UIColor grayColor];
        //: [self.contentView addSubview:_accountLabel];
        [self.contentView addSubview:_accountLabel];
        //: _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        //: [self.contentView addSubview:_genderIcon];
        [self.contentView addSubview:_genderIcon];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)should:(PublicAppearRow *)rowData position_strong:(UITableView *)tableView{

    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: if ([uid isKindOfClass:[NSString class]]) {
    if ([uid isKindOfClass:[NSString class]]) {
        //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:uid option:nil];
        Info *info = [[Case pastTop] consumer:uid message:nil];
        //: self.nameLabel.text = info.showName ;
        self.nameLabel.text = info.showName ;
        //: NSString *register_avtivity_account = [FFFLanguageManager getTextWithKey:@"register_avtivity_account"];
        NSString *register_avtivity_account = [SendName streetSmart:[SourceData app_removeTitle]];
        //: self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        //: [self.accountLabel sizeToFit];
        [self.accountLabel sizeToFit];
        //: [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
        [self.avatar keyShared:[NSURL URLWithString:info.avatarUrlString] view:info.avatarImage extra:SDWebImageRetryFailed];
        //: if (user.userInfo.gender == NIMUserGenderMale) {
        if (user.userInfo.gender == NIMUserGenderMale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_male"];
            _genderIcon.image = [UIImage imageNamed:[SourceData userModeFormat]];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else if(user.userInfo.gender == NIMUserGenderFemale) {
        else if(user.userInfo.gender == NIMUserGenderFemale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_female"];
            _genderIcon.image = [UIImage imageNamed:[SourceData m_teamName]];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else {
        else {
            //: _genderIcon.hidden = YES;
            _genderIcon.hidden = YES;
        }
        //: NSString *nickName = user.userInfo.nickName ? user.userInfo.nickName : @"";
        NSString *nickName = user.userInfo.nickName ? user.userInfo.nickName : @"";
        //: _nickNameLabel.hidden = !user.alias.length;
        _nickNameLabel.hidden = !user.alias.length;

        //: _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        //: [_nickNameLabel sizeToFit];
        [_nickNameLabel sizeToFit];
    }
    //: self.accountLabel.hidden = YES;
    self.accountLabel.hidden = YES;
    //: [self refreshData:rowData account:@""];
    [self disable:rowData red_strong:@""];

}

//: -(void)refreshData:(NIMCommonTableRow *)rowData account:(NSString *)account{
-(void)disable:(PublicAppearRow *)rowData red_strong:(NSString *)account{

    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = uid;
    dict[[SourceData mLineMakePath]] = uid;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:YES success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[SourceData appWithModeFormat]] read:dict indicator:YES spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[SourceData showMemberNameToUrl]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict selected:[SourceData showOptionUrl]];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data tag:[SourceData showRedMsg]];
            //: self.accountLabel.hidden = NO;
            self.accountLabel.hidden = NO;
            //: NSString *register_avtivity_account = [FFFLanguageManager getTextWithKey:@"register_avtivity_account"];
            NSString *register_avtivity_account = [SendName streetSmart:[SourceData app_removeTitle]];

            //: self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            //: [self.accountLabel sizeToFit];
            [self.accountLabel sizeToFit];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];

}
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.left = 30;
    self.avatar.left = 30;
    //: self.avatar.centerY = self.height * .5f;
    self.avatar.centerY = self.height * .5f;

    //: CGFloat scale = self.width / 320;
    CGFloat scale = self.width / 320;
    //: CGFloat maxTextLabelWidth = 180 * scale;
    CGFloat maxTextLabelWidth = 180 * scale;
    //: [self.nameLabel sizeToFit];
    [self.nameLabel sizeToFit];
    //: self.nameLabel.width = ((self.nameLabel.width) < (maxTextLabelWidth) ? (self.nameLabel.width) : (maxTextLabelWidth));
    self.nameLabel.width = ((self.nameLabel.width) < (maxTextLabelWidth) ? (self.nameLabel.width) : (maxTextLabelWidth));
    //: self.nameLabel.left = self.avatar.right + 12;
    self.nameLabel.left = self.avatar.right + 12;
    //: self.nameLabel.top = 22;
    self.nameLabel.top = 22;

    //: if (self.nickNameLabel.hidden) {
    if (self.nickNameLabel.hidden) {
        //: self.accountLabel.left = self.nameLabel.left;
        self.accountLabel.left = self.nameLabel.left;
        //: self.accountLabel.bottom = self.height - 22;
        self.accountLabel.bottom = self.height - 22;
    //: }else{
    }else{
        //: self.nickNameLabel.left = self.nameLabel.left;
        self.nickNameLabel.left = self.nameLabel.left;
        //: self.nickNameLabel.bottom = self.height - 22;
        self.nickNameLabel.bottom = self.height - 22;
        //: self.accountLabel.left = self.nameLabel.left;
        self.accountLabel.left = self.nameLabel.left;
        //: self.accountLabel.centerY = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
        self.accountLabel.centerY = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
    }

    //: self.genderIcon.left = self.nameLabel.right + 12;
    self.genderIcon.left = self.nameLabel.right + 12;
    //: self.genderIcon.centerY = self.nameLabel.centerY;
    self.genderIcon.centerY = self.nameLabel.centerY;
}

//: @end
@end