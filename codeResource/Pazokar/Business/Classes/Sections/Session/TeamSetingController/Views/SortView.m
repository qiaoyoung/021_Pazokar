
#import <Foundation/Foundation.h>

typedef struct {
    Byte feel;
    Byte *antisubmarine;
    unsigned int anagrammatise;
	int bringOut;
} StructMigrationData;

@interface MigrationData : NSObject

+ (instancetype)sharedInstance;

//: group_remove
@property (nonatomic, copy) NSString *m_replyText;

//: #000000
@property (nonatomic, copy) NSString *notiWoodenCornerFormat;

//: #F6F6F6
@property (nonatomic, copy) NSString *userMigrationSizeStr;

//: group_mute
@property (nonatomic, copy) NSString *show_greenKey;

//: group_mute_no
@property (nonatomic, copy) NSString *user_inmateUrl;

//: 5D5F66
@property (nonatomic, copy) NSString *userManagerData;

@end

@implementation MigrationData

+ (instancetype)sharedInstance {
    static MigrationData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)MigrationDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)MigrationDataToByte:(StructMigrationData *)data {
    for (int i = 0; i < data->anagrammatise; i++) {
        data->antisubmarine[i] ^= data->feel;
    }
    data->antisubmarine[data->anagrammatise] = 0;
	if (data->anagrammatise >= 1) {
		data->bringOut = data->antisubmarine[0];
	}
    return data->antisubmarine;
}

- (NSString *)StringFromMigrationData:(StructMigrationData *)data {
    return [NSString stringWithUTF8String:(char *)[self MigrationDataToByte:data]];
}

//: group_mute_no
- (NSString *)user_inmateUrl {
    if (!_user_inmateUrl) {
		NSString *origin = @"1a0f12080d2210080918221312f9";
		NSData *data = [MigrationData MigrationDataToData:origin];
        StructMigrationData value = (StructMigrationData){125, (Byte *)data.bytes, 13, 106};
        _user_inmateUrl = [self StringFromMigrationData:&value];
    }
    return _user_inmateUrl;
}

//: 5D5F66
- (NSString *)userManagerData {
    if (!_userManagerData) {
		NSString *origin = @"9ced9cef9f9f94";
		NSData *data = [MigrationData MigrationDataToData:origin];
        StructMigrationData value = (StructMigrationData){169, (Byte *)data.bytes, 6, 154};
        _userManagerData = [self StringFromMigrationData:&value];
    }
    return _userManagerData;
}

//: #000000
- (NSString *)notiWoodenCornerFormat {
    if (!_notiWoodenCornerFormat) {
		NSString *origin = @"6172727272727206";
		NSData *data = [MigrationData MigrationDataToData:origin];
        StructMigrationData value = (StructMigrationData){66, (Byte *)data.bytes, 7, 166};
        _notiWoodenCornerFormat = [self StringFromMigrationData:&value];
    }
    return _notiWoodenCornerFormat;
}

//: #F6F6F6
- (NSString *)userMigrationSizeStr {
    if (!_userMigrationSizeStr) {
		NSString *origin = @"fc99e999e999e9f8";
		NSData *data = [MigrationData MigrationDataToData:origin];
        StructMigrationData value = (StructMigrationData){223, (Byte *)data.bytes, 7, 75};
        _userMigrationSizeStr = [self StringFromMigrationData:&value];
    }
    return _userMigrationSizeStr;
}

//: group_remove
- (NSString *)m_replyText {
    if (!_m_replyText) {
		NSString *origin = @"63766b71745b7661696b726167";
		NSData *data = [MigrationData MigrationDataToData:origin];
        StructMigrationData value = (StructMigrationData){4, (Byte *)data.bytes, 12, 249};
        _m_replyText = [self StringFromMigrationData:&value];
    }
    return _m_replyText;
}

//: group_mute
- (NSString *)show_greenKey {
    if (!_show_greenKey) {
		NSString *origin = @"0f1a071d1837051d1c0daf";
		NSData *data = [MigrationData MigrationDataToData:origin];
        StructMigrationData value = (StructMigrationData){104, (Byte *)data.bytes, 10, 145};
        _show_greenKey = [self StringFromMigrationData:&value];
    }
    return _show_greenKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SortView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyGroupMemberTableViewCell.h"
#import "SortView.h"
//: #import "BusyAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "BusyTeamHelper.h"
#import "EnvelopingTitle.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"

//: @interface BusyGroupMemberTableViewCell()
@interface SortView()

//: @property (nonatomic,strong) id<BusyKitCardHeaderData> data;
@property (nonatomic,strong) id<BusyKitCardHeaderData> data;

//: @end
@end

//: @implementation BusyGroupMemberTableViewCell
@implementation SortView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

//        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.selectionStyle = UITableViewCellSelectionStyleGray;
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;


        //: [self initSubviews];
        [self initClick];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)voice:(UITableView *)tableView
{
    //: static NSString *identifier = @"BusyGroupMemberTableViewCell";
    static NSString *identifier = @"SortView";
    //: BusyGroupMemberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    SortView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[BusyGroupMemberTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[SortView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        //: cell.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        cell.backgroundColor = [UIColor status:[MigrationData sharedInstance].userMigrationSizeStr];
        //: cell.layer.cornerRadius = 16;
        cell.layer.cornerRadius = 16;
//        cell.backgroundColor = [UIColor clearColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initClick {

    //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _roleImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _roleImageView.layer.masksToBounds = YES;
    _roleImageView.layer.masksToBounds = YES;
    //: _roleImageView.layer.cornerRadius = 24;
    _roleImageView.layer.cornerRadius = 24;
    //: [self.contentView addSubview:_roleImageView];
    [self.contentView addSubview:_roleImageView];

    //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(_roleImageView.right+15, 12, 150, 48)];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14.f];
    //: _titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    _titleLabel.textColor = [UIColor status:[MigrationData sharedInstance].notiWoodenCornerFormat];
    //: [self.contentView addSubview:_titleLabel];
    [self.contentView addSubview:_titleLabel];

    //: _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    _subtitleLabel = [[UILabel alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-45-100, 12, 100, 48)];
    //: _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    _subtitleLabel.font = [UIFont systemFontOfSize:12.f];
    //: _subtitleLabel.textColor = [UIColor colorWithHexString:@"5D5F66"];
    _subtitleLabel.textColor = [UIColor status:[MigrationData sharedInstance].userManagerData];
    //: _subtitleLabel.textAlignment = NSTextAlignmentRight;
    _subtitleLabel.textAlignment = NSTextAlignmentRight;
    //: _subtitleLabel.hidden = YES;
    _subtitleLabel.hidden = YES;
    //: [self.contentView addSubview:_subtitleLabel];
    [self.contentView addSubview:_subtitleLabel];

    //: [self.contentView addSubview:self.muteBtn];
    [self.contentView addSubview:self.muteBtn];
    //: [self.contentView addSubview:self.removeBtn];
    [self.contentView addSubview:self.removeBtn];

}

//: - (void)reloadWithUserId:(NSString *)UserId
- (void)device:(NSString *)UserId
{
    //: self.userId = UserId;
    self.userId = UserId;
}

//: - (void)setUserInfo:(BusyKitInfo *)userInfo
- (void)setUserInfo:(Info *)userInfo
{
    //: self.userInfo = userInfo;
    self.userInfo = userInfo;
}

//: - (void)onTouchRemoveBtn:(id)sender{
- (void)creamses:(id)sender{

    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(adheres:)]) {
        //: [self.delegate cellShouldBeRemoved:self.userId];
        [self.delegate adheres:self.userId];
    }
}
//: - (void)onTouchMuteBtn:(id)sender{
- (void)paths:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(cellShouldBeRemoved:)]) {
    if ([self.delegate respondsToSelector:@selector(adheres:)]) {
        //: [self.delegate cellShouldBeMute:self.userId mute:YES];
        [self.delegate language:self.userId trademark:YES];
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    self.muteBtn.frame = CGRectMake(self.width-64-25, 20, 32, 32);
    //: self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);
    self.removeBtn.frame = CGRectMake(self.width-32-15, 20, 32, 32);

}
//: - (UIButton *)removeBtn{
- (UIButton *)removeBtn{
    //: if (!_removeBtn) {
    if (!_removeBtn) {
        //: _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _removeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_removeBtn addTarget:self action:@selector(onTouchRemoveBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_removeBtn addTarget:self action:@selector(creamses:) forControlEvents:UIControlEventTouchUpInside];
        //: [_removeBtn setImage:[UIImage imageNamed:@"group_remove"] forState:UIControlStateNormal];
        [_removeBtn setImage:[UIImage imageNamed:[MigrationData sharedInstance].m_replyText] forState:UIControlStateNormal];

    }
    //: return _removeBtn;
    return _removeBtn;
}

//: - (UIButton *)muteBtn{
- (UIButton *)muteBtn{
    //: if (!_muteBtn) {
    if (!_muteBtn) {
        //: _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _muteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_muteBtn addTarget:self action:@selector(onTouchMuteBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_muteBtn addTarget:self action:@selector(paths:) forControlEvents:UIControlEventTouchUpInside];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute_no"] forState:UIControlStateNormal];
        [_muteBtn setImage:[UIImage imageNamed:[MigrationData sharedInstance].user_inmateUrl] forState:UIControlStateNormal];
        //: [_muteBtn setImage:[UIImage imageNamed:@"group_mute"] forState:UIControlStateSelected];
        [_muteBtn setImage:[UIImage imageNamed:[MigrationData sharedInstance].show_greenKey] forState:UIControlStateSelected];

    }
    //: return _muteBtn;
    return _muteBtn;
}


//: @end
@end
