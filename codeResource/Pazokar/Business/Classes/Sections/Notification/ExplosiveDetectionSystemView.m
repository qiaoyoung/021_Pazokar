
#import <Foundation/Foundation.h>

@interface AfterTextData : NSObject

+ (instancetype)sharedInstance;

//: 未知请求
@property (nonatomic, copy) NSString *mDismissFormat;

//: rejected_group_invitation
@property (nonatomic, copy) NSString *notiWithPath;

//: message_helper_already_time
@property (nonatomic, copy) NSString *dreamRedText;

//: apply_join_supergroup
@property (nonatomic, copy) NSString *main_factorKey;

//: message_helper_already_no
@property (nonatomic, copy) NSString *mLabelValue;

//: message_helper_refuse_group
@property (nonatomic, copy) NSString *show_barPath;

//: large_group
@property (nonatomic, copy) NSString *appChildData;

//: #F6F6F6
@property (nonatomic, copy) NSString *mainPathManagerKey;

//: message_helper_invite
@property (nonatomic, copy) NSString *appNamePath;

//: message_helper_already_ok
@property (nonatomic, copy) NSString *showTitleIdent;

//: %@ attach:%@
@property (nonatomic, copy) NSString *app_makePath;

//: message_helper_allow_you_apply
@property (nonatomic, copy) NSString *user_lineFrameText;

//: request_add_you_as_a_friend
@property (nonatomic, copy) NSString *kCenterUrl;

//: message_helper_refuse_you
@property (nonatomic, copy) NSString *userFrameMessage;

//: contact_fragment_group
@property (nonatomic, copy) NSString *main_messageTitle;

//: invite_you_join_us
@property (nonatomic, copy) NSString *show_bottomMessageTitle;

//: #02D8C9
@property (nonatomic, copy) NSString *m_lineValue;

//: message_helper_already_add
@property (nonatomic, copy) NSString *mToolRecordForName;

//: is_read
@property (nonatomic, copy) NSString *main_readStr;

//: ic_btn_disaccept
@property (nonatomic, copy) NSString *user_messageStr;

//: 000000
@property (nonatomic, copy) NSString *mFrameId;

//: message_helper_apply_to_group
@property (nonatomic, copy) NSString *mainLetterRangePath;

//: message_helper_refuse_you_apply
@property (nonatomic, copy) NSString *kFromIdent;

//: to_deny_entry
@property (nonatomic, copy) NSString *dream_modeId;

//: ic_btn_accept
@property (nonatomic, copy) NSString *k_afterId;

//: invite_you_group
@property (nonatomic, copy) NSString *app_fullText;

//: #999999
@property (nonatomic, copy) NSString *appBarStr;

@end

@implementation AfterTextData

+ (instancetype)sharedInstance {
    static AfterTextData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)AfterTextDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)AfterTextDataToCache:(Byte *)data {
    int count = data[0];
    Byte makeSource = data[1];
    int withVoice = data[2];
    for (int i = withVoice; i < withVoice + count; i++) {
        int value = data[i] + makeSource;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[withVoice + count] = 0;
    return data + withVoice;
}

- (NSString *)StringFromAfterTextData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AfterTextDataToCache:data]];
}

//: message_helper_already_add
- (NSString *)mToolRecordForName {
    if (!_mToolRecordForName) {
		NSArray<NSString *> *origin = @[@"26", @"98", @"3", @"11", @"3", @"17", @"17", @"255", @"5", @"3", @"253", @"6", @"3", @"10", @"14", @"3", @"16", @"253", @"255", @"10", @"16", @"3", @"255", @"2", @"23", @"253", @"255", @"2", @"2", @"148"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mToolRecordForName = [self StringFromAfterTextData:value];
    }
    return _mToolRecordForName;
}

//: 000000
- (NSString *)mFrameId {
    if (!_mFrameId) {
		NSArray<NSString *> *origin = @[@"6", @"35", @"11", @"49", @"236", @"187", @"62", @"56", @"149", @"241", @"220", @"13", @"13", @"13", @"13", @"13", @"13", @"155"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mFrameId = [self StringFromAfterTextData:value];
    }
    return _mFrameId;
}

//: to_deny_entry
- (NSString *)dream_modeId {
    if (!_dream_modeId) {
		NSArray<NSString *> *origin = @[@"13", @"52", @"10", @"31", @"169", @"169", @"227", @"104", @"134", @"176", @"64", @"59", @"43", @"48", @"49", @"58", @"69", @"43", @"49", @"58", @"64", @"62", @"69", @"191"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_modeId = [self StringFromAfterTextData:value];
    }
    return _dream_modeId;
}

//: apply_join_supergroup
- (NSString *)main_factorKey {
    if (!_main_factorKey) {
		NSArray<NSString *> *origin = @[@"21", @"41", @"9", @"42", @"146", @"252", @"214", @"99", @"47", @"56", @"71", @"71", @"67", @"80", @"54", @"65", @"70", @"64", @"69", @"54", @"74", @"76", @"71", @"60", @"73", @"62", @"73", @"70", @"76", @"71", @"5"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_factorKey = [self StringFromAfterTextData:value];
    }
    return _main_factorKey;
}

//: message_helper_refuse_group
- (NSString *)show_barPath {
    if (!_show_barPath) {
		NSArray<NSString *> *origin = @[@"27", @"50", @"11", @"205", @"65", @"58", @"96", @"188", @"181", @"99", @"135", @"59", @"51", @"65", @"65", @"47", @"53", @"51", @"45", @"54", @"51", @"58", @"62", @"51", @"64", @"45", @"64", @"51", @"52", @"67", @"65", @"51", @"45", @"53", @"64", @"61", @"67", @"62", @"17"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_barPath = [self StringFromAfterTextData:value];
    }
    return _show_barPath;
}

//: request_add_you_as_a_friend
- (NSString *)kCenterUrl {
    if (!_kCenterUrl) {
		NSArray<NSString *> *origin = @[@"27", @"8", @"7", @"252", @"185", @"59", @"181", @"106", @"93", @"105", @"109", @"93", @"107", @"108", @"87", @"89", @"92", @"92", @"87", @"113", @"103", @"109", @"87", @"89", @"107", @"87", @"89", @"87", @"94", @"106", @"97", @"93", @"102", @"92", @"38"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kCenterUrl = [self StringFromAfterTextData:value];
    }
    return _kCenterUrl;
}

//: message_helper_refuse_you_apply
- (NSString *)kFromIdent {
    if (!_kFromIdent) {
		NSArray<NSString *> *origin = @[@"31", @"60", @"4", @"94", @"49", @"41", @"55", @"55", @"37", @"43", @"41", @"35", @"44", @"41", @"48", @"52", @"41", @"54", @"35", @"54", @"41", @"42", @"57", @"55", @"41", @"35", @"61", @"51", @"57", @"35", @"37", @"52", @"52", @"48", @"61", @"21"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kFromIdent = [self StringFromAfterTextData:value];
    }
    return _kFromIdent;
}

//: contact_fragment_group
- (NSString *)main_messageTitle {
    if (!_main_messageTitle) {
		NSArray<NSString *> *origin = @[@"22", @"67", @"13", @"33", @"52", @"117", @"187", @"84", @"235", @"135", @"160", @"147", @"77", @"32", @"44", @"43", @"49", @"30", @"32", @"49", @"28", @"35", @"47", @"30", @"36", @"42", @"34", @"43", @"49", @"28", @"36", @"47", @"44", @"50", @"45", @"72"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_messageTitle = [self StringFromAfterTextData:value];
    }
    return _main_messageTitle;
}

//: large_group
- (NSString *)appChildData {
    if (!_appChildData) {
		NSArray<NSString *> *origin = @[@"11", @"1", @"9", @"204", @"37", @"194", @"250", @"138", @"150", @"107", @"96", @"113", @"102", @"100", @"94", @"102", @"113", @"110", @"116", @"111", @"24"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appChildData = [self StringFromAfterTextData:value];
    }
    return _appChildData;
}

//: 未知请求
- (NSString *)mDismissFormat {
    if (!_mDismissFormat) {
		NSArray<NSString *> *origin = @[@"12", @"87", @"7", @"127", @"189", @"235", @"31", @"143", @"69", @"83", @"144", @"72", @"78", @"145", @"88", @"96", @"143", @"90", @"43", @"76"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mDismissFormat = [self StringFromAfterTextData:value];
    }
    return _mDismissFormat;
}

//: is_read
- (NSString *)main_readStr {
    if (!_main_readStr) {
		NSArray<NSString *> *origin = @[@"7", @"95", @"7", @"47", @"4", @"161", @"57", @"10", @"20", @"0", @"19", @"6", @"2", @"5", @"166"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_readStr = [self StringFromAfterTextData:value];
    }
    return _main_readStr;
}

//: #999999
- (NSString *)appBarStr {
    if (!_appBarStr) {
		NSArray<NSString *> *origin = @[@"7", @"69", @"6", @"255", @"215", @"98", @"222", @"244", @"244", @"244", @"244", @"244", @"244", @"209"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appBarStr = [self StringFromAfterTextData:value];
    }
    return _appBarStr;
}

//: #F6F6F6
- (NSString *)mainPathManagerKey {
    if (!_mainPathManagerKey) {
		NSArray<NSString *> *origin = @[@"7", @"40", @"7", @"185", @"83", @"55", @"225", @"251", @"30", @"14", @"30", @"14", @"30", @"14", @"55"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainPathManagerKey = [self StringFromAfterTextData:value];
    }
    return _mainPathManagerKey;
}

//: message_helper_already_no
- (NSString *)mLabelValue {
    if (!_mLabelValue) {
		NSArray<NSString *> *origin = @[@"25", @"71", @"3", @"38", @"30", @"44", @"44", @"26", @"32", @"30", @"24", @"33", @"30", @"37", @"41", @"30", @"43", @"24", @"26", @"37", @"43", @"30", @"26", @"29", @"50", @"24", @"39", @"40", @"64"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mLabelValue = [self StringFromAfterTextData:value];
    }
    return _mLabelValue;
}

//: message_helper_invite
- (NSString *)appNamePath {
    if (!_appNamePath) {
		NSArray<NSString *> *origin = @[@"21", @"45", @"11", @"114", @"85", @"20", @"201", @"208", @"253", @"23", @"228", @"64", @"56", @"70", @"70", @"52", @"58", @"56", @"50", @"59", @"56", @"63", @"67", @"56", @"69", @"50", @"60", @"65", @"73", @"60", @"71", @"56", @"210"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appNamePath = [self StringFromAfterTextData:value];
    }
    return _appNamePath;
}

//: #02D8C9
- (NSString *)m_lineValue {
    if (!_m_lineValue) {
		NSArray<NSString *> *origin = @[@"7", @"66", @"6", @"84", @"114", @"145", @"225", @"238", @"240", @"2", @"246", @"1", @"247", @"195"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_lineValue = [self StringFromAfterTextData:value];
    }
    return _m_lineValue;
}

//: invite_you_join_us
- (NSString *)show_bottomMessageTitle {
    if (!_show_bottomMessageTitle) {
		NSArray<NSString *> *origin = @[@"18", @"18", @"10", @"114", @"76", @"103", @"199", @"242", @"233", @"235", @"87", @"92", @"100", @"87", @"98", @"83", @"77", @"103", @"93", @"99", @"77", @"88", @"93", @"87", @"92", @"77", @"99", @"97", @"55"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _show_bottomMessageTitle = [self StringFromAfterTextData:value];
    }
    return _show_bottomMessageTitle;
}

//: message_helper_already_ok
- (NSString *)showTitleIdent {
    if (!_showTitleIdent) {
		NSArray<NSString *> *origin = @[@"25", @"42", @"12", @"128", @"152", @"175", @"102", @"204", @"196", @"209", @"129", @"52", @"67", @"59", @"73", @"73", @"55", @"61", @"59", @"53", @"62", @"59", @"66", @"70", @"59", @"72", @"53", @"55", @"66", @"72", @"59", @"55", @"58", @"79", @"53", @"69", @"65", @"226"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showTitleIdent = [self StringFromAfterTextData:value];
    }
    return _showTitleIdent;
}

//: ic_btn_disaccept
- (NSString *)user_messageStr {
    if (!_user_messageStr) {
		NSArray<NSString *> *origin = @[@"16", @"43", @"5", @"221", @"46", @"62", @"56", @"52", @"55", @"73", @"67", @"52", @"57", @"62", @"72", @"54", @"56", @"56", @"58", @"69", @"73", @"255"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_messageStr = [self StringFromAfterTextData:value];
    }
    return _user_messageStr;
}

//: ic_btn_accept
- (NSString *)k_afterId {
    if (!_k_afterId) {
		NSArray<NSString *> *origin = @[@"13", @"69", @"8", @"96", @"195", @"33", @"132", @"25", @"36", @"30", @"26", @"29", @"47", @"41", @"26", @"28", @"30", @"30", @"32", @"43", @"47", @"147"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_afterId = [self StringFromAfterTextData:value];
    }
    return _k_afterId;
}

//: message_helper_refuse_you
- (NSString *)userFrameMessage {
    if (!_userFrameMessage) {
		NSArray<NSString *> *origin = @[@"25", @"17", @"8", @"116", @"235", @"133", @"137", @"158", @"92", @"84", @"98", @"98", @"80", @"86", @"84", @"78", @"87", @"84", @"91", @"95", @"84", @"97", @"78", @"97", @"84", @"85", @"100", @"98", @"84", @"78", @"104", @"94", @"100", @"232"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userFrameMessage = [self StringFromAfterTextData:value];
    }
    return _userFrameMessage;
}

//: message_helper_allow_you_apply
- (NSString *)user_lineFrameText {
    if (!_user_lineFrameText) {
		NSArray<NSString *> *origin = @[@"30", @"47", @"7", @"77", @"248", @"251", @"12", @"62", @"54", @"68", @"68", @"50", @"56", @"54", @"48", @"57", @"54", @"61", @"65", @"54", @"67", @"48", @"50", @"61", @"61", @"64", @"72", @"48", @"74", @"64", @"70", @"48", @"50", @"65", @"65", @"61", @"74", @"244"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_lineFrameText = [self StringFromAfterTextData:value];
    }
    return _user_lineFrameText;
}

//: rejected_group_invitation
- (NSString *)notiWithPath {
    if (!_notiWithPath) {
		NSArray<NSString *> *origin = @[@"25", @"41", @"5", @"15", @"97", @"73", @"60", @"65", @"60", @"58", @"75", @"60", @"59", @"54", @"62", @"73", @"70", @"76", @"71", @"54", @"64", @"69", @"77", @"64", @"75", @"56", @"75", @"64", @"70", @"69", @"175"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiWithPath = [self StringFromAfterTextData:value];
    }
    return _notiWithPath;
}

//: invite_you_group
- (NSString *)app_fullText {
    if (!_app_fullText) {
		NSArray<NSString *> *origin = @[@"16", @"41", @"10", @"18", @"49", @"75", @"218", @"72", @"91", @"244", @"64", @"69", @"77", @"64", @"75", @"60", @"54", @"80", @"70", @"76", @"54", @"62", @"73", @"70", @"76", @"71", @"212"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_fullText = [self StringFromAfterTextData:value];
    }
    return _app_fullText;
}

//: message_helper_already_time
- (NSString *)dreamRedText {
    if (!_dreamRedText) {
		NSArray<NSString *> *origin = @[@"27", @"90", @"6", @"157", @"208", @"164", @"19", @"11", @"25", @"25", @"7", @"13", @"11", @"5", @"14", @"11", @"18", @"22", @"11", @"24", @"5", @"7", @"18", @"24", @"11", @"7", @"10", @"31", @"5", @"26", @"15", @"19", @"11", @"132"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamRedText = [self StringFromAfterTextData:value];
    }
    return _dreamRedText;
}

//: %@ attach:%@
- (NSString *)app_makePath {
    if (!_app_makePath) {
		NSArray<NSString *> *origin = @[@"12", @"57", @"11", @"207", @"207", @"247", @"111", @"215", @"193", @"151", @"40", @"236", @"7", @"231", @"40", @"59", @"59", @"40", @"42", @"47", @"1", @"236", @"7", @"110"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_makePath = [self StringFromAfterTextData:value];
    }
    return _app_makePath;
}

//: message_helper_apply_to_group
- (NSString *)mainLetterRangePath {
    if (!_mainLetterRangePath) {
		NSArray<NSString *> *origin = @[@"29", @"26", @"12", @"42", @"128", @"171", @"27", @"38", @"19", @"64", @"44", @"66", @"83", @"75", @"89", @"89", @"71", @"77", @"75", @"69", @"78", @"75", @"82", @"86", @"75", @"88", @"69", @"71", @"86", @"86", @"82", @"95", @"69", @"90", @"85", @"69", @"77", @"88", @"85", @"91", @"86", @"121"];
		NSData *data = [AfterTextData AfterTextDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainLetterRangePath = [self StringFromAfterTextData:value];
    }
    return _mainLetterRangePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExplosiveDetectionSystemView.m
//  NIM
//
//  Created by amao on 3/17/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSystemNotificationCell.h"
#import "ExplosiveDetectionSystemView.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "BusyAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "BusyKitUtil.h"
#import "OffMore.h"

//: @interface NTESSystemNotificationCell ()
@interface ExplosiveDetectionSystemView ()

//: @property (nonatomic,strong) NIMSystemNotification *notification;
@property (nonatomic,strong) NIMSystemNotification *notification;
//@property (nonatomic,strong) IBOutlet CustomFormatView *avatarImageView;
//: @end
@end

//: @implementation NTESSystemNotificationCell
@implementation ExplosiveDetectionSystemView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.avatarImageView];
        [self.contentView addSubview:self.avatarImageView];
        //: [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.titleLabel];
        //: [self.contentView addSubview:self.timeLabel];
        [self.contentView addSubview:self.timeLabel];
        //: [self.contentView addSubview:self.messageLabel];
        [self.contentView addSubview:self.messageLabel];
        //: [self.contentView addSubview:self.handleInfoLabel];
        [self.contentView addSubview:self.handleInfoLabel];
        //: [self.contentView addSubview:self.acceptButton];
        [self.contentView addSubview:self.acceptButton];
        //: [self.contentView addSubview:self.refuseButton];
        [self.contentView addSubview:self.refuseButton];
//        [self.contentView addSubview:self.handleInfoLabel];

        //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        self.backgroundColor = [UIColor status:[AfterTextData sharedInstance].mainPathManagerKey];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;
    }
    //: return self;
    return self;
}

//: - (UIImageView *)avatarImageView {
- (UIImageView *)avatarImageView {
    //: if (!_avatarImageView) {
    if (!_avatarImageView) {
        //: _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 18, 50, 50)];
        _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 18, 50, 50)];
        //: _avatarImageView.contentMode = UIViewContentModeScaleToFill;
        _avatarImageView.contentMode = UIViewContentModeScaleToFill;
        //: _avatarImageView.layer.cornerRadius = 25;
        _avatarImageView.layer.cornerRadius = 25;
        //: _avatarImageView.layer.masksToBounds = YES;
        _avatarImageView.layer.masksToBounds = YES;

//        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTouchAvatar:)];
//        [_avatarImageView addGestureRecognizer:panGesture];
    }
    //: return _avatarImageView;
    return _avatarImageView;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.avatarImageView.right + 15, 18, 200 , 20)];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.avatarImageView.right + 15, 18, 200 , 20)];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"000000"];
        _titleLabel.textColor = [UIColor status:[AfterTextData sharedInstance].mFrameId];
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

//: - (UILabel *)timeLabel {
- (UILabel *)timeLabel {
    //: if (!_timeLabel) {
    if (!_timeLabel) {
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.titleLabel.bottom, self.titleLabel.width, 18)];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.titleLabel.bottom, self.titleLabel.width, 18)];
        //: _timeLabel.font = [UIFont systemFontOfSize:12.f];
        _timeLabel.font = [UIFont systemFontOfSize:12.f];
        //: _timeLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _timeLabel.textColor = [UIColor status:[AfterTextData sharedInstance].appBarStr];
        //: _timeLabel.textAlignment = NSTextAlignmentLeft;
        _timeLabel.textAlignment = NSTextAlignmentLeft;
        //: _timeLabel.numberOfLines = 1;
        _timeLabel.numberOfLines = 1;
        //: _timeLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _timeLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _timeLabel;
    return _timeLabel;
}

//: - (YYLabel *)messageLabel {
- (YYLabel *)messageLabel {
    //: if (!_messageLabel) {
    if (!_messageLabel) {
        //: _messageLabel = [[YYLabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.timeLabel.bottom, self.titleLabel.width, 20)];
        _messageLabel = [[YYLabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.timeLabel.bottom, self.titleLabel.width, 20)];
        //: _messageLabel.font = [UIFont systemFontOfSize:12.f];
        _messageLabel.font = [UIFont systemFontOfSize:12.f];
//        _messageLabel.textContainerInset = UIEdgeInsetsMake(5, 5, 5, 5);
        //: _messageLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _messageLabel.textColor = [UIColor status:[AfterTextData sharedInstance].appBarStr];
        //: _messageLabel.textAlignment = NSTextAlignmentLeft;
        _messageLabel.textAlignment = NSTextAlignmentLeft;
//        _messageLabel.numberOfLines = 3;
//        _messageLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//        _messageLabel.layer.cornerRadius = 6;
//        _messageLabel.layer.borderColor = TextColor_Subtitle.CGColor;
//        _messageLabel.layer.borderWidth = 1.f/[UIScreen mainScreen].scale;
//        _messageLabel.layer.masksToBounds = YES;
    }
    //: return _messageLabel;
    return _messageLabel;
}

//: - (UILabel *)handleInfoLabel {
- (UILabel *)handleInfoLabel {
    //: if (!_handleInfoLabel) {
    if (!_handleInfoLabel) {
        //: _handleInfoLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _handleInfoLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _handleInfoLabel.frame = CGRectMake(0, 0, 130, 20);
        _handleInfoLabel.frame = CGRectMake(0, 0, 130, 20);
        //: _handleInfoLabel.right = [[UIScreen mainScreen] bounds].size.width-30-15;
        _handleInfoLabel.right = [[UIScreen mainScreen] bounds].size.width-30-15;
        //: _handleInfoLabel.centerY = self.avatarImageView.centerY;
        _handleInfoLabel.centerY = self.avatarImageView.centerY;
        //: _handleInfoLabel.font = [UIFont systemFontOfSize:14.f];
        _handleInfoLabel.font = [UIFont systemFontOfSize:14.f];
        //: _handleInfoLabel.textColor = [UIColor colorWithHexString:@"#02D8C9"];
        _handleInfoLabel.textColor = [UIColor status:[AfterTextData sharedInstance].m_lineValue];
        //: _handleInfoLabel.textAlignment = NSTextAlignmentRight;
        _handleInfoLabel.textAlignment = NSTextAlignmentRight;
//        _handleInfoLabel.numberOfLines = 1;
//        _handleInfoLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _handleInfoLabel;
    return _handleInfoLabel;
}

//: - (UIButton *)acceptButton {
- (UIButton *)acceptButton {
    //: if (!_acceptButton) {
    if (!_acceptButton) {
        //: _acceptButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _acceptButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        //: _acceptButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-32, 21, 32, 32);
        _acceptButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-32, 21, 32, 32);
//        _acceptButton.titleLabel.font = [UIFont systemFontOfSize:15];
//        [_acceptButton setTitle:LangKey(@"request_add_accept") forState:(UIControlStateNormal)];
        //: [_acceptButton addTarget:self action:@selector(onAcceptBtn) forControlEvents:(UIControlEventTouchUpInside)];
        [_acceptButton addTarget:self action:@selector(topRead) forControlEvents:(UIControlEventTouchUpInside)];
//        [_acceptButton setTitleColor:[KEKESkinColorManager shareInstance].skinColor forState:(UIControlStateNormal)];
//        [_acceptButton setBackgroundColor:RGB_COLOR_String(@"#fffBusy")];
        //: [_acceptButton setImage:[UIImage imageNamed:@"ic_btn_accept"] forState:UIControlStateNormal];
        [_acceptButton setImage:[UIImage imageNamed:[AfterTextData sharedInstance].k_afterId] forState:UIControlStateNormal];
//        _acceptButton.layer.cornerRadius = 16;
//        _acceptButton.layer.masksToBounds = YES;
    }
    //: return _acceptButton;
    return _acceptButton;
}

//: - (UIButton *)refuseButton {
- (UIButton *)refuseButton {
    //: if (!_refuseButton) {
    if (!_refuseButton) {
        //: _refuseButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _refuseButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        //: _refuseButton.frame = CGRectMake(0, 0, 32, 32);
        _refuseButton.frame = CGRectMake(0, 0, 32, 32);
        //: _refuseButton.right = self.acceptButton.left - 10;
        _refuseButton.right = self.acceptButton.left - 10;
        //: _refuseButton.top = self.acceptButton.top;
        _refuseButton.top = self.acceptButton.top;
//        _refuseButton.titleLabel.font = [UIFont systemFontOfSize:15];
//        [_refuseButton setTitle:LangKey(@"request_add_reject") forState:(UIControlStateNormal)];
        //: [_refuseButton addTarget:self action:@selector(onRefusebtn) forControlEvents:(UIControlEventTouchUpInside)];
        [_refuseButton addTarget:self action:@selector(pressedInput) forControlEvents:(UIControlEventTouchUpInside)];
//        [_refuseButton setTitleColor:kTextColor_2c3042 forState:(UIControlStateNormal)];
//        [_refuseButton setBackgroundColor:RGB_COLOR_String(@"#fffBusy")];
        //: [_refuseButton setImage:[UIImage imageNamed:@"ic_btn_disaccept"] forState:UIControlStateNormal];
        [_refuseButton setImage:[UIImage imageNamed:[AfterTextData sharedInstance].user_messageStr] forState:UIControlStateNormal];
//        _refuseButton.layer.cornerRadius = 16;
//        _refuseButton.layer.masksToBounds = YES;
    }
    //: return _refuseButton;
    return _refuseButton;
}


//: - (void)update:(NIMSystemNotification *)notification{
- (void)button:(NIMSystemNotification *)notification{
    //: self.notification = notification;
    self.notification = notification;
    //: [self updateUI];
    [self lightIn];
}

//: - (void)updateUI{
- (void)lightIn{
    //: BOOL hideActionButton = [self shouldHideActionButton];
    BOOL hideActionButton = [self along];

    //: [self.acceptButton setHidden:hideActionButton];
    [self.acceptButton setHidden:hideActionButton];
    //: [self.refuseButton setHidden:hideActionButton];
    [self.refuseButton setHidden:hideActionButton];
    //: if(hideActionButton) {
    if(hideActionButton) {
        //: self.handleInfoLabel.hidden = NO;
        self.handleInfoLabel.hidden = NO;
        //: switch (self.notification.handleStatus) {
        switch (self.notification.handleStatus) {
            //: case NotificationHandleTypeOk:
            case NotificationHandleTypeOk:
                //: self.handleInfoLabel.text = [BusyLanguageManager getTextWithKey:@"message_helper_already_ok"];
                self.handleInfoLabel.text = [SendName streetSmart:[AfterTextData sharedInstance].showTitleIdent];//@"已同意".nim_localized;
                //: break;
                break;
            //: case NotificationHandleTypeNo:
            case NotificationHandleTypeNo:
                //: self.handleInfoLabel.text = [BusyLanguageManager getTextWithKey:@"message_helper_already_no"];
                self.handleInfoLabel.text = [SendName streetSmart:[AfterTextData sharedInstance].mLabelValue];//@"已拒绝".nim_localized;
                //: break;
                break;
            //: case NotificationHandleTypeOutOfDate:
            case NotificationHandleTypeOutOfDate:
                //: self.handleInfoLabel.text = [BusyLanguageManager getTextWithKey:@"message_helper_already_time"];
                self.handleInfoLabel.text = [SendName streetSmart:[AfterTextData sharedInstance].dreamRedText];//@"已过期".nim_localized;
                //: break;
                break;
            //: default:
            default:
                //: self.handleInfoLabel.text = [BusyLanguageManager getTextWithKey:@"is_read"];
                self.handleInfoLabel.text = [SendName streetSmart:[AfterTextData sharedInstance].main_readStr];
                //: break;
                break;
        }
    //: } else {
    } else {
        //: self.handleInfoLabel.hidden = YES;
        self.handleInfoLabel.hidden = YES;
    }


    //: self.timeLabel.text = [BusyKitUtil showTime:self.notification.timestamp showDetail:YES];
    self.timeLabel.text = [OffMore readShow:self.notification.timestamp voiceOver:YES];

    //: NSString *sourceID = self.notification.sourceID;
    NSString *sourceID = self.notification.sourceID;
    //: BusyKitInfo *sourceMember = [[MyUserKit sharedKit] infoByUser:sourceID option:nil];
    Info *sourceMember = [[Case pastTop] consumer:sourceID message:nil];
    //: [self updateSourceMember:sourceMember];
    [self along:sourceMember];
}

//: - (void)updateSourceMember:(BusyKitInfo *)sourceMember{
- (void)along:(Info *)sourceMember{

    //: NIMSystemNotificationType type = self.notification.type;
    NIMSystemNotificationType type = self.notification.type;
    //: NSString *avatarUrlString = sourceMember.avatarUrlString;
    NSString *avatarUrlString = sourceMember.avatarUrlString;
    //: NSURL *url;
    NSURL *url;
    //: if (avatarUrlString.length) {
    if (avatarUrlString.length) {
        //: url = [NSURL URLWithString:avatarUrlString];
        url = [NSURL URLWithString:avatarUrlString];
    }
//    [self.avatarImageView nim_setImageWithURL:url placeholderImage:sourceMember.avatarImage options:SDWebImageRetryFailed];
    //: [self.avatarImageView sd_setImageWithURL:url placeholderImage:sourceMember.avatarImage];
    [self.avatarImageView sd_setImageWithURL:url placeholderImage:sourceMember.avatarImage];
    //: self.titleLabel.text = sourceMember.showName;
    self.titleLabel.text = sourceMember.showName;
    //: switch (type) {
    switch (type) {
        //: case NIMSystemNotificationTypeTeamApply:
        case NIMSystemNotificationTypeTeamApply:
        {
            //: NSString *message_helper_apply_to_group = [BusyLanguageManager getTextWithKey:@"message_helper_apply_to_group"];
            NSString *message_helper_apply_to_group = [SendName streetSmart:[AfterTextData sharedInstance].mainLetterRangePath];//@"申请加入群".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamApplyReject:
        case NIMSystemNotificationTypeTeamApplyReject:
        {
            //: NSString *contact_fragment_group = [BusyLanguageManager getTextWithKey:@"contact_fragment_group"];
            NSString *contact_fragment_group = [SendName streetSmart:[AfterTextData sharedInstance].main_messageTitle];//@"群".nim_localized
            //: NSString *message_helper_refuse_you = [BusyLanguageManager getTextWithKey:@"message_helper_refuse_you"];
            NSString *message_helper_refuse_you = [SendName streetSmart:[AfterTextData sharedInstance].userFrameMessage];//@"拒绝你加入".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: contact_fragment_group,
                                         contact_fragment_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: message_helper_refuse_you];
                                         message_helper_refuse_you];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamInvite:
        case NIMSystemNotificationTypeTeamInvite:
        {
            //: NSString *contact_fragment_group = [BusyLanguageManager getTextWithKey:@"contact_fragment_group"];
            NSString *contact_fragment_group = [SendName streetSmart:[AfterTextData sharedInstance].main_messageTitle];//@"群".nim_localized
            //: NSString *invite_you_group = [BusyLanguageManager getTextWithKey:@"invite_you_group"];
            NSString *invite_you_group = [SendName streetSmart:[AfterTextData sharedInstance].app_fullText];//@"邀请你加入".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];

            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: contact_fragment_group,
                                         contact_fragment_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: invite_you_group];
                                         invite_you_group];

            //: if (self.notification.notifyExt.length>0) {
            if (self.notification.notifyExt.length>0) {
                //: self.messageLabel.text = [NSString stringWithFormat:@"%@ attach:%@",self.messageLabel.text , self.notification.notifyExt?:@""];
                self.messageLabel.text = [NSString stringWithFormat:[AfterTextData sharedInstance].app_makePath,self.messageLabel.text , self.notification.notifyExt?:@""];
            }

        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamIviteReject:
        case NIMSystemNotificationTypeTeamIviteReject:
        {
            //: NSString *message_helper_refuse_group = [BusyLanguageManager getTextWithKey:@"message_helper_refuse_group"];
            NSString *message_helper_refuse_group = [SendName streetSmart:[AfterTextData sharedInstance].show_barPath];
            //: NSString *message_helper_invite = [BusyLanguageManager getTextWithKey:@"message_helper_invite"];
            NSString *message_helper_invite = [SendName streetSmart:[AfterTextData sharedInstance].appNamePath];//@"邀请".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: message_helper_refuse_group,
                                         message_helper_refuse_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: message_helper_invite];
                                         message_helper_invite];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeSuperTeamApply:
        case NIMSystemNotificationTypeSuperTeamApply:
        {
            //: NSString *apply_join_supergroup = [BusyLanguageManager getTextWithKey:@"apply_join_supergroup"];
            NSString *apply_join_supergroup = [SendName streetSmart:[AfterTextData sharedInstance].main_factorKey];//@"申请加入超大群 %@".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamApplyReject:
        case NIMSystemNotificationTypeSuperTeamApplyReject:
        {
            //: NSString *large_group = [BusyLanguageManager getTextWithKey:@"large_group"];
            NSString *large_group = [SendName streetSmart:[AfterTextData sharedInstance].appChildData];//超大群
            //: NSString *to_deny_entry = [BusyLanguageManager getTextWithKey:@"to_deny_entry"];
            NSString *to_deny_entry = [SendName streetSmart:[AfterTextData sharedInstance].dream_modeId];//拒绝你加入
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamInvite:
        case NIMSystemNotificationTypeSuperTeamInvite:
        {
            //: NSString *large_group = [BusyLanguageManager getTextWithKey:@"large_group"];
            NSString *large_group = [SendName streetSmart:[AfterTextData sharedInstance].appChildData];//超大群
            //: NSString *invite_you_join_us = [BusyLanguageManager getTextWithKey:@"invite_you_join_us"];
            NSString *invite_you_join_us = [SendName streetSmart:[AfterTextData sharedInstance].show_bottomMessageTitle];//邀请你加入
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamIviteReject:
        case NIMSystemNotificationTypeSuperTeamIviteReject:
        {
            //: NSString *rejected_group_invitation = [BusyLanguageManager getTextWithKey:@"rejected_group_invitation"];
            NSString *rejected_group_invitation = [SendName streetSmart:[AfterTextData sharedInstance].notiWithPath];
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeFriendAdd:
        case NIMSystemNotificationTypeFriendAdd:
        {
            //: NSString *text = @"未知请求".nim_localized;
            NSString *text = [AfterTextData sharedInstance].mDismissFormat.maxColor;
            //: id object = self.notification.attachment;
            id object = self.notification.attachment;
            //: if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
            if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
                //: NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
                NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
                //: NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];
                NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];

                //: switch (operation) {
                switch (operation) {
                    //: case NIMUserOperationAdd:
                    case NIMUserOperationAdd:
                        //: text = [BusyLanguageManager getTextWithKey:@"message_helper_already_add"];
                        text = [SendName streetSmart:[AfterTextData sharedInstance].mToolRecordForName];//@"已添加你为好友".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationRequest:
                    case NIMUserOperationRequest:
                        //: text = [BusyLanguageManager getTextWithKey:@"request_add_you_as_a_friend"];
                        text = [SendName streetSmart:[AfterTextData sharedInstance].kCenterUrl];//@"请求添加你为好友".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationVerify:
                    case NIMUserOperationVerify:
                        //: text = [BusyLanguageManager getTextWithKey:@"message_helper_allow_you_apply"];
                        text = [SendName streetSmart:[AfterTextData sharedInstance].user_lineFrameText];//@"通过了你的好友请求".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationReject:
                    case NIMUserOperationReject:
                        //: text = [BusyLanguageManager getTextWithKey:@"message_helper_refuse_you_apply"];
                        text = [SendName streetSmart:[AfterTextData sharedInstance].kFromIdent];//@"拒绝了你的好友请求".nim_localized;
                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
                }

                //: if (serverExt && [serverExt length]) {
                if (serverExt && [serverExt length]) {
                    //: text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
                    text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
                }
            }

            //: self.messageLabel.text = text;
            self.messageLabel.text = text;
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

//    if (self.notification.postscript.length > 0) {
//        self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",self.notification.postscript, self.messageLabel.text];
//    }

//    CGSize contentSize = [self.messageLabel.text boundingRectWithSize:CGSizeMake(SCREEN_WIDTH-48-15-12-15, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:13]} context:nil].size;
//
//    self.messageLabel.height = contentSize.height + 10;

//    _refuseButton.top = _handleInfoLabel.top = _acceptButton.top = self.messageLabel.bottom + 8;
}

//: - (void)onAcceptBtn{
- (void)topRead{
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onAccept:)]){
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(quantitativeRelation:)]){
        //: [_actionDelegate onAccept:self.notification];
        [_actionDelegate quantitativeRelation:self.notification];
    }
}
//: - (void)onRefusebtn {
- (void)pressedInput {
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onRefuse:)]){
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(occurrents:)]){
        //: [_actionDelegate onRefuse:self.notification];
        [_actionDelegate occurrents:self.notification];
    }
}

//: - (BOOL)shouldHideActionButton
- (BOOL)along
{
    //: NIMSystemNotificationType type = self.notification.type;
    NIMSystemNotificationType type = self.notification.type;
    //: BOOL handled = self.notification.handleStatus != 0;
    BOOL handled = self.notification.handleStatus != 0;
    //: BOOL needHandle = NO;
    BOOL needHandle = NO;
    //: if (type == NIMSystemNotificationTypeTeamApply ||
    if (type == NIMSystemNotificationTypeTeamApply ||
        //: type == NIMSystemNotificationTypeTeamInvite ||
        type == NIMSystemNotificationTypeTeamInvite ||
        //: type == NIMSystemNotificationTypeSuperTeamApply ||
        type == NIMSystemNotificationTypeSuperTeamApply ||
        //: type == NIMSystemNotificationTypeSuperTeamInvite) {
        type == NIMSystemNotificationTypeSuperTeamInvite) {
        //: needHandle = YES;
        needHandle = YES;
    }
    //: if (type == NIMSystemNotificationTypeFriendAdd) {
    if (type == NIMSystemNotificationTypeFriendAdd) {
        //: id object = self.notification.attachment;
        id object = self.notification.attachment;
        //: if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
        if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
            //: NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
            NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
            //: needHandle = operation == NIMUserOperationRequest;
            needHandle = operation == NIMUserOperationRequest;
        }
    }
    //: return !(!handled && needHandle);
    return !(!handled && needHandle);

}
//- (void)awakeFromNib{
//    [super awakeFromNib];
//    self.textLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//    self.detailTextLabel.backgroundColor = [UIColor clearColor];
//    self.detailTextLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//    self.avatarImageView = [[CustomFormatView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
//    [self.contentView addSubview:self.avatarImageView];
//
////    UIButton *a = (UIButton *)self.acceptButton;
////    UIButton *b = (UIButton *)self.refuseButton;
////    [a setTitle:LangKey(@"request_add_accept") forState:UIControlStateNormal];
////    [b setTitle:LangKey(@"request_add_reject") forState:UIControlStateNormal];
//
//}
//
//- (void)update:(NIMSystemNotification *)notification{
//    self.notification = notification;
//    [self updateUI];
//}
//
//- (void)updateUI{
//    BOOL hideActionButton = [self shouldHideActionButton];
//
//    [self.acceptButton setHidden:hideActionButton];
//    [self.refuseButton setHidden:hideActionButton];
//    if(hideActionButton) {
//        self.handleInfoLabel.hidden = NO;
//        switch (self.notification.handleStatus) {
//            case NotificationHandleTypeOk:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_ok");//@"已同意".ntes_localized;
//                break;
//            case NotificationHandleTypeNo:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_no");//@"已拒绝".ntes_localized;
//                break;
//            case NotificationHandleTypeOutOfDate:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_time");//@"已过期".ntes_localized;
//                break;
//            default:
//                self.handleInfoLabel.text = nil;
//                break;
//        }
//    } else {
//        self.handleInfoLabel.hidden = YES;
//    }
//
//
//    NSString *sourceID = self.notification.sourceID;
//    Info *sourceMember = [[Case sharedKit] infoByUser:sourceID option:nil];
//    [self updateSourceMember:sourceMember];
//}
//
//- (void)updateSourceMember:(Info *)sourceMember{
//    NIMSystemNotificationType type = self.notification.type;
//    NSString *avatarUrlString = sourceMember.avatarUrlString;
//    NSURL *url;
//    if (avatarUrlString.length) {
//        url = [NSURL URLWithString:avatarUrlString];
//    }
//    [self.avatarImageView nim_setImageWithURL:url placeholderImage:sourceMember.avatarImage options:SDWebImageRetryFailed];
//    self.textLabel.text        = sourceMember.showName;
//    [self.textLabel sizeToFit];
//    switch (type) {
//        case NIMSystemNotificationTypeTeamApply:
//        {
//            NSString *message_helper_apply_to_group = LangKey(@"message_helper_apply_to_group");//@"申请加入群".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamApplyReject:
//        {
//            NSString *contact_fragment_group = LangKey(@"contact_fragment_group");//@"群".ntes_localized
//            NSString *message_helper_refuse_you = LangKey(@"message_helper_refuse_you");//@"拒绝你加入".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
//                                         contact_fragment_group,
//                                         team.teamName,
//                                         message_helper_refuse_you];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamInvite:
//        {
//            NSString *contact_fragment_group = LangKey(@"contact_fragment_group");//@"群".ntes_localized
//            NSString *invite_you_group = LangKey(@"invite_you_group");//@"邀请你加入".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@ attach:%@",
//                                         contact_fragment_group,
//                                         team.teamName,
//                                         invite_you_group,
//                                         self.notification.notifyExt ? : @""];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamIviteReject:
//        {
//            NSString *message_helper_refuse_group = LangKey(@"message_helper_refuse_group");
//            NSString *message_helper_invite = LangKey(@"message_helper_invite");//@"邀请".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
//                                         message_helper_refuse_group,
//                                         team.teamName,
//                                         message_helper_invite];
//        }
//            break;
//        case NIMSystemNotificationTypeSuperTeamApply:
//        {
//            NSString *apply_join_supergroup = LangKey(@"apply_join_supergroup");//@"申请加入超大群 %@".ntes_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamApplyReject:
//        {
//            NSString *large_group = LangKey(@"large_group");//超大群
//            NSString *to_deny_entry = LangKey(@"to_deny_entry");//拒绝你加入
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamInvite:
//        {
//            NSString *large_group = LangKey(@"large_group");//超大群
//            NSString *invite_you_join_us = LangKey(@"invite_you_join_us");//邀请你加入
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamIviteReject:
//        {
//            NSString *rejected_group_invitation = LangKey(@"rejected_group_invitation");
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
//            break;
//        }
//        case NIMSystemNotificationTypeFriendAdd:
//        {
//            NSString *text = @"未知请求".ntes_localized;
//            id object = self.notification.attachment;
//            if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
//                NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
//                NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];
//
//                switch (operation) {
//                    case NIMUserOperationAdd:
//                        text = LangKey(@"message_helper_already_add");//@"已添加你为好友".ntes_localized;
//                        break;
//                    case NIMUserOperationRequest:
//                        text = LangKey(@"request_add_you_as_a_friend");//@"请求添加你为好友".ntes_localized;
//                        break;
//                    case NIMUserOperationVerify:
//                        text = LangKey(@"message_helper_allow_you_apply");//@"通过了你的好友请求".ntes_localized;
//                        break;
//                    case NIMUserOperationReject:
//                        text = LangKey(@"message_helper_refuse_you_apply");//@"拒绝了你的好友请求".ntes_localized;
//                        break;
//                    default:
//                        break;
//                }
//
//                if (serverExt && [serverExt length]) {
//                    text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
//                }
//            }
//
//            self.detailTextLabel.text = text;
//        }
//            break;
//        default:
//            break;
//    }
//    [self.detailTextLabel sizeToFit];
//    self.messageLabel.text = self.notification.postscript;
//    [self.messageLabel sizeToFit];
//    [self setNeedsLayout];
//}
//
//- (IBAction)onAccept:(id)sender {
//    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onAccept:)]){
//        [_actionDelegate onAccept:self.notification];
//    }
//}
//- (IBAction)onRefuse:(id)sender {
//    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onRefuse:)]){
//        [_actionDelegate onRefuse:self.notification];
//    }
//}
//
//- (BOOL)shouldHideActionButton
//{
//    NIMSystemNotificationType type = self.notification.type;
//    BOOL handled = self.notification.handleStatus != 0;
//    BOOL needHandle = NO;
//    if (type == NIMSystemNotificationTypeTeamApply ||
//        type == NIMSystemNotificationTypeTeamInvite ||
//        type == NIMSystemNotificationTypeSuperTeamApply ||
//        type == NIMSystemNotificationTypeSuperTeamInvite) {
//        needHandle = YES;
//    }
//    if (type == NIMSystemNotificationTypeFriendAdd) {
//        id object = self.notification.attachment;
//        if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
//            NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
//            needHandle = operation == NIMUserOperationRequest;
//        }
//    }
//    return !(!handled && needHandle);
//
//}
//
//#define MaxTextLabelWidth 120.0 * UISreenWidthScale
//#define MaxDetailLabelWidth 160.0 * UISreenWidthScale
//#define MaxMessageLabelWidth 150.0 * UISreenWidthScale
//#define TextLabelAndMessageLabelSpacing 20.f
//#define AvatarImageViewLeft 15.f
//#define MessageAndAvatarSpacing 15.f
//- (void)layoutSubviews{
//    [super layoutSubviews];
//    self.avatarImageView.centerY = self.height * .5f;
//    self.avatarImageView.left = AvatarImageViewLeft;
//    if (self.textLabel.width > MaxTextLabelWidth) {
//        self.textLabel.width = MaxTextLabelWidth;
//    }
//    if (self.detailTextLabel.width > MaxDetailLabelWidth) {
//        self.detailTextLabel.width = MaxDetailLabelWidth;
//    }
//    self.textLabel.left = self.avatarImageView.right + MessageAndAvatarSpacing;
//    self.detailTextLabel.left = self.textLabel.left;
//    self.detailTextLabel.bottom = self.avatarImageView.bottom;
//
////    if (self.messageLabel.width > MaxMessageLabelWidth) {
////        self.messageLabel.width = MaxMessageLabelWidth;
////    }
////    self.messageLabel.left = self.textLabel.right + TextLabelAndMessageLabelSpacing;
//
//}

//: @end
@end
