
#import <Foundation/Foundation.h>

@interface ManagerMakeData : NSObject

+ (instancetype)sharedInstance;

//: ic_create_chat
@property (nonatomic, copy) NSString *showHandleUrl;

//: setting_privacy_camera
@property (nonatomic, copy) NSString *notiBarMinUrl;

//: code
@property (nonatomic, copy) NSString *m_sizeName;

//: /team/create
@property (nonatomic, copy) NSString *showMyStr;

//: ic_delete
@property (nonatomic, copy) NSString *m_enableSearchInfoName;

//: name
@property (nonatomic, copy) NSString *kTextIdent;

//: tname
@property (nonatomic, copy) NSString *notiClickData;

//: tid
@property (nonatomic, copy) NSString *k_nextNameFormat;

//: ic_topno
@property (nonatomic, copy) NSString *dreamTitleMessageValue;

//: ic_add_fiend
@property (nonatomic, copy) NSString *dream_managerId;

//: please_contact_your_administrator
@property (nonatomic, copy) NSString *app_dismissListData;

//: globalsign
@property (nonatomic, copy) NSString *dreamReplyUrl;

//: home_notice
@property (nonatomic, copy) NSString *app_enableId;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *dreamFileRedPath;

//: ic_scan
@property (nonatomic, copy) NSString *main_controlUrl;

//: #875FFA
@property (nonatomic, copy) NSString *mRemoveIdent;

//: fragment_contact_new_scan
@property (nonatomic, copy) NSString *noti_nextTitle;

//: ic_top
@property (nonatomic, copy) NSString *showLabelSuccessUrl;

//: team_create_helper_create_failed
@property (nonatomic, copy) NSString *m_titleMessage;

//: [有人@你]
@property (nonatomic, copy) NSString *m_factorMessage;

//: jpg
@property (nonatomic, copy) NSString *appRedListName;

//: (同步数据)
@property (nonatomic, copy) NSString *noti_lineKey;

//: ic_distrub
@property (nonatomic, copy) NSString *m_popTitle;

//: (连接中)
@property (nonatomic, copy) NSString *dream_withTitle;

//: activity_user_profile_chat
@property (nonatomic, copy) NSString *mainMessageData;

//: #999999
@property (nonatomic, copy) NSString *showOptionMessage;

//: warm_prompt
@property (nonatomic, copy) NSString *dreamInfoData;

//: no_conversation
@property (nonatomic, copy) NSString *user_textPath;

//: quickchat
@property (nonatomic, copy) NSString *k_redBottomTitle;

//: home_create_group
@property (nonatomic, copy) NSString *showFactorValue;

//: ic_nodistrub
@property (nonatomic, copy) NSString *user_managerPath;

//: /user/checkcreateteam
@property (nonatomic, copy) NSString *k_voiceMessage;

//: notification
@property (nonatomic, copy) NSString *showRangeIdent;

//: my_computer
@property (nonatomic, copy) NSString *main_infoIdent;

//: owner
@property (nonatomic, copy) NSString *dreamTitleData;

//: type
@property (nonatomic, copy) NSString *app_centerUrl;

//: tag_activity_set
@property (nonatomic, copy) NSString *m_afterText;

//: quick_icon
@property (nonatomic, copy) NSString *appVoicePathRedText;

//: #ffffff
@property (nonatomic, copy) NSString *showAfterRedFullValue;

//: user_info_avtivity_upload_avatar_failed
@property (nonatomic, copy) NSString *app_shouldMessage;

//: activity_create_group_name_create_group
@property (nonatomic, copy) NSString *k_controlRecordListStr;

//: retracted_message
@property (nonatomic, copy) NSString *k_successKey;

//: (未连接)
@property (nonatomic, copy) NSString *main_managerObjectFormat;

//: add_friend_activity_add_friend
@property (nonatomic, copy) NSString *dream_toData;

//: #5D5F66
@property (nonatomic, copy) NSString *main_handleFullMessage;

//: icon_session_list_empty
@property (nonatomic, copy) NSString *dreamReadUrl;

//: invite_you_group
@property (nonatomic, copy) NSString *userMemberId;

//: home_add_friend
@property (nonatomic, copy) NSString *main_recentTitle;

@end

@implementation ManagerMakeData

+ (instancetype)sharedInstance {
    static ManagerMakeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ManagerMakeDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ManagerMakeDataToCache:(Byte *)data {
    int imageMember = data[0];
    Byte collection = data[1];
    int onCell = data[2];
    for (int i = onCell; i < onCell + imageMember; i++) {
        int value = data[i] + collection;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[onCell + imageMember] = 0;
    return data + onCell;
}

- (NSString *)StringFromManagerMakeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ManagerMakeDataToCache:data]];
}

//: jpg
- (NSString *)appRedListName {
    if (!_appRedListName) {
		NSArray<NSString *> *origin = @[@"3", @"92", @"11", @"71", @"108", @"171", @"71", @"149", @"123", @"165", @"80", @"14", @"20", @"11", @"231"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appRedListName = [self StringFromManagerMakeData:value];
    }
    return _appRedListName;
}

//: globalsign
- (NSString *)dreamReplyUrl {
    if (!_dreamReplyUrl) {
		NSArray<NSString *> *origin = @[@"10", @"53", @"7", @"198", @"148", @"251", @"151", @"50", @"55", @"58", @"45", @"44", @"55", @"62", @"52", @"50", @"57", @"81"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamReplyUrl = [self StringFromManagerMakeData:value];
    }
    return _dreamReplyUrl;
}

//: home_create_group
- (NSString *)showFactorValue {
    if (!_showFactorValue) {
		NSArray<NSString *> *origin = @[@"17", @"63", @"13", @"145", @"201", @"50", @"32", @"10", @"51", @"66", @"154", @"19", @"194", @"41", @"48", @"46", @"38", @"32", @"36", @"51", @"38", @"34", @"53", @"38", @"32", @"40", @"51", @"48", @"54", @"49", @"95"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showFactorValue = [self StringFromManagerMakeData:value];
    }
    return _showFactorValue;
}

//: activity_user_profile_chat
- (NSString *)mainMessageData {
    if (!_mainMessageData) {
		NSArray<NSString *> *origin = @[@"26", @"36", @"13", @"176", @"145", @"239", @"223", @"234", @"73", @"115", @"86", @"79", @"152", @"61", @"63", @"80", @"69", @"82", @"69", @"80", @"85", @"59", @"81", @"79", @"65", @"78", @"59", @"76", @"78", @"75", @"66", @"69", @"72", @"65", @"59", @"63", @"68", @"61", @"80", @"61"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainMessageData = [self StringFromManagerMakeData:value];
    }
    return _mainMessageData;
}

//: ic_top
- (NSString *)showLabelSuccessUrl {
    if (!_showLabelSuccessUrl) {
		NSArray<NSString *> *origin = @[@"6", @"97", @"4", @"201", @"8", @"2", @"254", @"19", @"14", @"15", @"215"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showLabelSuccessUrl = [self StringFromManagerMakeData:value];
    }
    return _showLabelSuccessUrl;
}

//: tag_activity_set
- (NSString *)m_afterText {
    if (!_m_afterText) {
		NSArray<NSString *> *origin = @[@"16", @"8", @"5", @"24", @"47", @"108", @"89", @"95", @"87", @"89", @"91", @"108", @"97", @"110", @"97", @"108", @"113", @"87", @"107", @"93", @"108", @"35"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_afterText = [self StringFromManagerMakeData:value];
    }
    return _m_afterText;
}

//: quick_icon
- (NSString *)appVoicePathRedText {
    if (!_appVoicePathRedText) {
		NSArray<NSString *> *origin = @[@"10", @"75", @"4", @"131", @"38", @"42", @"30", @"24", @"32", @"20", @"30", @"24", @"36", @"35", @"85"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appVoicePathRedText = [self StringFromManagerMakeData:value];
    }
    return _appVoicePathRedText;
}

//: tname
- (NSString *)notiClickData {
    if (!_notiClickData) {
		NSArray<NSString *> *origin = @[@"5", @"80", @"6", @"205", @"139", @"114", @"36", @"30", @"17", @"29", @"21", @"210"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiClickData = [self StringFromManagerMakeData:value];
    }
    return _notiClickData;
}

//: (同步数据)
- (NSString *)noti_lineKey {
    if (!_noti_lineKey) {
		NSArray<NSString *> *origin = @[@"14", @"86", @"5", @"96", @"166", @"210", @"143", @"58", @"54", @"144", @"87", @"79", @"144", @"63", @"90", @"144", @"55", @"88", @"211", @"137"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_lineKey = [self StringFromManagerMakeData:value];
    }
    return _noti_lineKey;
}

//: #875FFA
- (NSString *)mRemoveIdent {
    if (!_mRemoveIdent) {
		NSArray<NSString *> *origin = @[@"7", @"98", @"4", @"221", @"193", @"214", @"213", @"211", @"228", @"228", @"223", @"168"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mRemoveIdent = [self StringFromManagerMakeData:value];
    }
    return _mRemoveIdent;
}

//: (连接中)
- (NSString *)dream_withTitle {
    if (!_dream_withTitle) {
		NSArray<NSString *> *origin = @[@"11", @"65", @"3", @"231", @"167", @"126", @"93", @"165", @"77", @"100", @"163", @"119", @"108", @"232", @"172"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_withTitle = [self StringFromManagerMakeData:value];
    }
    return _dream_withTitle;
}

//: quickchat
- (NSString *)k_redBottomTitle {
    if (!_k_redBottomTitle) {
		NSArray<NSString *> *origin = @[@"9", @"25", @"3", @"88", @"92", @"80", @"74", @"82", @"74", @"79", @"72", @"91", @"159"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_redBottomTitle = [self StringFromManagerMakeData:value];
    }
    return _k_redBottomTitle;
}

//: please_contact_your_administrator
- (NSString *)app_dismissListData {
    if (!_app_dismissListData) {
		NSArray<NSString *> *origin = @[@"33", @"53", @"12", @"154", @"208", @"176", @"144", @"117", @"237", @"108", @"253", @"29", @"59", @"55", @"48", @"44", @"62", @"48", @"42", @"46", @"58", @"57", @"63", @"44", @"46", @"63", @"42", @"68", @"58", @"64", @"61", @"42", @"44", @"47", @"56", @"52", @"57", @"52", @"62", @"63", @"61", @"44", @"63", @"58", @"61", @"100"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_dismissListData = [self StringFromManagerMakeData:value];
    }
    return _app_dismissListData;
}

//: #5D5F66
- (NSString *)main_handleFullMessage {
    if (!_main_handleFullMessage) {
		NSArray<NSString *> *origin = @[@"7", @"31", @"9", @"109", @"203", @"184", @"228", @"165", @"30", @"4", @"22", @"37", @"22", @"39", @"23", @"23", @"240"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_handleFullMessage = [self StringFromManagerMakeData:value];
    }
    return _main_handleFullMessage;
}

//: retracted_message
- (NSString *)k_successKey {
    if (!_k_successKey) {
		NSArray<NSString *> *origin = @[@"17", @"73", @"3", @"41", @"28", @"43", @"41", @"24", @"26", @"43", @"28", @"27", @"22", @"36", @"28", @"42", @"42", @"24", @"30", @"28", @"222"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_successKey = [self StringFromManagerMakeData:value];
    }
    return _k_successKey;
}

//: my_computer
- (NSString *)main_infoIdent {
    if (!_main_infoIdent) {
		NSArray<NSString *> *origin = @[@"11", @"45", @"8", @"50", @"57", @"235", @"48", @"112", @"64", @"76", @"50", @"54", @"66", @"64", @"67", @"72", @"71", @"56", @"69", @"107"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_infoIdent = [self StringFromManagerMakeData:value];
    }
    return _main_infoIdent;
}

//: tid
- (NSString *)k_nextNameFormat {
    if (!_k_nextNameFormat) {
		NSArray<NSString *> *origin = @[@"3", @"46", @"9", @"109", @"19", @"131", @"215", @"40", @"212", @"70", @"59", @"54", @"126"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_nextNameFormat = [self StringFromManagerMakeData:value];
    }
    return _k_nextNameFormat;
}

//: ic_topno
- (NSString *)dreamTitleMessageValue {
    if (!_dreamTitleMessageValue) {
		NSArray<NSString *> *origin = @[@"8", @"92", @"12", @"28", @"235", @"224", @"216", @"190", @"78", @"9", @"52", @"212", @"13", @"7", @"3", @"24", @"19", @"20", @"18", @"19", @"173"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamTitleMessageValue = [self StringFromManagerMakeData:value];
    }
    return _dreamTitleMessageValue;
}

//: fragment_contact_new_scan
- (NSString *)noti_nextTitle {
    if (!_noti_nextTitle) {
		NSArray<NSString *> *origin = @[@"25", @"15", @"4", @"129", @"87", @"99", @"82", @"88", @"94", @"86", @"95", @"101", @"80", @"84", @"96", @"95", @"101", @"82", @"84", @"101", @"80", @"95", @"86", @"104", @"80", @"100", @"84", @"82", @"95", @"97"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _noti_nextTitle = [self StringFromManagerMakeData:value];
    }
    return _noti_nextTitle;
}

//: home_notice
- (NSString *)app_enableId {
    if (!_app_enableId) {
		NSArray<NSString *> *origin = @[@"11", @"61", @"3", @"43", @"50", @"48", @"40", @"34", @"49", @"50", @"55", @"44", @"38", @"40", @"222"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_enableId = [self StringFromManagerMakeData:value];
    }
    return _app_enableId;
}

//: ic_add_fiend
- (NSString *)dream_managerId {
    if (!_dream_managerId) {
		NSArray<NSString *> *origin = @[@"12", @"37", @"8", @"112", @"32", @"89", @"25", @"163", @"68", @"62", @"58", @"60", @"63", @"63", @"58", @"65", @"68", @"64", @"73", @"63", @"245"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_managerId = [self StringFromManagerMakeData:value];
    }
    return _dream_managerId;
}

//: user_info_avtivity_upload_avatar_failed
- (NSString *)app_shouldMessage {
    if (!_app_shouldMessage) {
		NSArray<NSString *> *origin = @[@"39", @"3", @"12", @"114", @"51", @"224", @"74", @"199", @"166", @"118", @"207", @"235", @"114", @"112", @"98", @"111", @"92", @"102", @"107", @"99", @"108", @"92", @"94", @"115", @"113", @"102", @"115", @"102", @"113", @"118", @"92", @"114", @"109", @"105", @"108", @"94", @"97", @"92", @"94", @"115", @"94", @"113", @"94", @"111", @"92", @"99", @"94", @"102", @"105", @"98", @"97", @"2"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_shouldMessage = [self StringFromManagerMakeData:value];
    }
    return _app_shouldMessage;
}

//: no_conversation
- (NSString *)user_textPath {
    if (!_user_textPath) {
		NSArray<NSString *> *origin = @[@"15", @"55", @"7", @"68", @"166", @"154", @"255", @"55", @"56", @"40", @"44", @"56", @"55", @"63", @"46", @"59", @"60", @"42", @"61", @"50", @"56", @"55", @"168"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_textPath = [self StringFromManagerMakeData:value];
    }
    return _user_textPath;
}

//: contact_tag_fragment_cancel
- (NSString *)dreamFileRedPath {
    if (!_dreamFileRedPath) {
		NSArray<NSString *> *origin = @[@"27", @"75", @"6", @"185", @"108", @"119", @"24", @"36", @"35", @"41", @"22", @"24", @"41", @"20", @"41", @"22", @"28", @"20", @"27", @"39", @"22", @"28", @"34", @"26", @"35", @"41", @"20", @"24", @"22", @"35", @"24", @"26", @"33", @"186"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamFileRedPath = [self StringFromManagerMakeData:value];
    }
    return _dreamFileRedPath;
}

//: /team/create
- (NSString *)showMyStr {
    if (!_showMyStr) {
		NSArray<NSString *> *origin = @[@"12", @"86", @"6", @"142", @"158", @"171", @"217", @"30", @"15", @"11", @"23", @"217", @"13", @"28", @"15", @"11", @"30", @"15", @"36"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showMyStr = [self StringFromManagerMakeData:value];
    }
    return _showMyStr;
}

//: ic_distrub
- (NSString *)m_popTitle {
    if (!_m_popTitle) {
		NSArray<NSString *> *origin = @[@"10", @"15", @"10", @"242", @"235", @"118", @"223", @"85", @"228", @"198", @"90", @"84", @"80", @"85", @"90", @"100", @"101", @"99", @"102", @"83", @"239"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_popTitle = [self StringFromManagerMakeData:value];
    }
    return _m_popTitle;
}

//: team_create_helper_create_failed
- (NSString *)m_titleMessage {
    if (!_m_titleMessage) {
		NSArray<NSString *> *origin = @[@"32", @"83", @"10", @"86", @"230", @"179", @"137", @"253", @"184", @"141", @"33", @"18", @"14", @"26", @"12", @"16", @"31", @"18", @"14", @"33", @"18", @"12", @"21", @"18", @"25", @"29", @"18", @"31", @"12", @"16", @"31", @"18", @"14", @"33", @"18", @"12", @"19", @"14", @"22", @"25", @"18", @"17", @"232"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_titleMessage = [self StringFromManagerMakeData:value];
    }
    return _m_titleMessage;
}

//: ic_delete
- (NSString *)m_enableSearchInfoName {
    if (!_m_enableSearchInfoName) {
		NSArray<NSString *> *origin = @[@"9", @"13", @"13", @"112", @"24", @"85", @"59", @"218", @"62", @"83", @"16", @"37", @"109", @"92", @"86", @"82", @"87", @"88", @"95", @"88", @"103", @"88", @"13"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_enableSearchInfoName = [self StringFromManagerMakeData:value];
    }
    return _m_enableSearchInfoName;
}

//: home_add_friend
- (NSString *)main_recentTitle {
    if (!_main_recentTitle) {
		NSArray<NSString *> *origin = @[@"15", @"82", @"6", @"186", @"116", @"242", @"22", @"29", @"27", @"19", @"13", @"15", @"18", @"18", @"13", @"20", @"32", @"23", @"19", @"28", @"18", @"171"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_recentTitle = [self StringFromManagerMakeData:value];
    }
    return _main_recentTitle;
}

//: code
- (NSString *)m_sizeName {
    if (!_m_sizeName) {
		NSArray<NSString *> *origin = @[@"4", @"1", @"9", @"208", @"16", @"168", @"220", @"231", @"97", @"98", @"110", @"99", @"100", @"75"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_sizeName = [self StringFromManagerMakeData:value];
    }
    return _m_sizeName;
}

//: [有人@你]
- (NSString *)m_factorMessage {
    if (!_m_factorMessage) {
		NSArray<NSString *> *origin = @[@"12", @"3", @"11", @"137", @"173", @"24", @"86", @"224", @"196", @"133", @"23", @"88", @"227", @"153", @"134", @"225", @"183", @"183", @"61", @"225", @"186", @"157", @"90", @"170"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_factorMessage = [self StringFromManagerMakeData:value];
    }
    return _m_factorMessage;
}

//: name
- (NSString *)kTextIdent {
    if (!_kTextIdent) {
		NSArray<NSString *> *origin = @[@"4", @"49", @"9", @"250", @"19", @"128", @"194", @"199", @"101", @"61", @"48", @"60", @"52", @"135"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextIdent = [self StringFromManagerMakeData:value];
    }
    return _kTextIdent;
}

//: (未连接)
- (NSString *)main_managerObjectFormat {
    if (!_main_managerObjectFormat) {
		NSArray<NSString *> *origin = @[@"11", @"98", @"9", @"244", @"157", @"200", @"241", @"13", @"175", @"198", @"132", @"58", @"72", @"134", @"93", @"60", @"132", @"44", @"67", @"199", @"36"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_managerObjectFormat = [self StringFromManagerMakeData:value];
    }
    return _main_managerObjectFormat;
}

//: add_friend_activity_add_friend
- (NSString *)dream_toData {
    if (!_dream_toData) {
		NSArray<NSString *> *origin = @[@"30", @"13", @"6", @"79", @"30", @"52", @"84", @"87", @"87", @"82", @"89", @"101", @"92", @"88", @"97", @"87", @"82", @"84", @"86", @"103", @"92", @"105", @"92", @"103", @"108", @"82", @"84", @"87", @"87", @"82", @"89", @"101", @"92", @"88", @"97", @"87", @"64"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_toData = [self StringFromManagerMakeData:value];
    }
    return _dream_toData;
}

//: invite_you_group
- (NSString *)userMemberId {
    if (!_userMemberId) {
		NSArray<NSString *> *origin = @[@"16", @"50", @"13", @"46", @"76", @"202", @"253", @"50", @"158", @"188", @"34", @"23", @"38", @"55", @"60", @"68", @"55", @"66", @"51", @"45", @"71", @"61", @"67", @"45", @"53", @"64", @"61", @"67", @"62", @"198"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userMemberId = [self StringFromManagerMakeData:value];
    }
    return _userMemberId;
}

//: setting_privacy_camera
- (NSString *)notiBarMinUrl {
    if (!_notiBarMinUrl) {
		NSArray<NSString *> *origin = @[@"22", @"68", @"11", @"98", @"187", @"135", @"75", @"86", @"239", @"167", @"107", @"47", @"33", @"48", @"48", @"37", @"42", @"35", @"27", @"44", @"46", @"37", @"50", @"29", @"31", @"53", @"27", @"31", @"29", @"41", @"33", @"46", @"29", @"199"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiBarMinUrl = [self StringFromManagerMakeData:value];
    }
    return _notiBarMinUrl;
}

//: #999999
- (NSString *)showOptionMessage {
    if (!_showOptionMessage) {
		NSArray<NSString *> *origin = @[@"7", @"59", @"12", @"103", @"168", @"140", @"101", @"93", @"162", @"82", @"169", @"72", @"232", @"254", @"254", @"254", @"254", @"254", @"254", @"128"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showOptionMessage = [self StringFromManagerMakeData:value];
    }
    return _showOptionMessage;
}

//: ic_nodistrub
- (NSString *)user_managerPath {
    if (!_user_managerPath) {
		NSArray<NSString *> *origin = @[@"12", @"73", @"5", @"244", @"43", @"32", @"26", @"22", @"37", @"38", @"27", @"32", @"42", @"43", @"41", @"44", @"25", @"11"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_managerPath = [self StringFromManagerMakeData:value];
    }
    return _user_managerPath;
}

//: warm_prompt
- (NSString *)dreamInfoData {
    if (!_dreamInfoData) {
		NSArray<NSString *> *origin = @[@"11", @"38", @"7", @"37", @"239", @"212", @"72", @"81", @"59", @"76", @"71", @"57", @"74", @"76", @"73", @"71", @"74", @"78", @"170"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamInfoData = [self StringFromManagerMakeData:value];
    }
    return _dreamInfoData;
}

//: icon_session_list_empty
- (NSString *)dreamReadUrl {
    if (!_dreamReadUrl) {
		NSArray<NSString *> *origin = @[@"23", @"52", @"9", @"114", @"230", @"252", @"119", @"78", @"142", @"53", @"47", @"59", @"58", @"43", @"63", @"49", @"63", @"63", @"53", @"59", @"58", @"43", @"56", @"53", @"63", @"64", @"43", @"49", @"57", @"60", @"64", @"69", @"38"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamReadUrl = [self StringFromManagerMakeData:value];
    }
    return _dreamReadUrl;
}

//: owner
- (NSString *)dreamTitleData {
    if (!_dreamTitleData) {
		NSArray<NSString *> *origin = @[@"5", @"62", @"5", @"247", @"238", @"49", @"57", @"48", @"39", @"52", @"128"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamTitleData = [self StringFromManagerMakeData:value];
    }
    return _dreamTitleData;
}

//: ic_create_chat
- (NSString *)showHandleUrl {
    if (!_showHandleUrl) {
		NSArray<NSString *> *origin = @[@"14", @"18", @"9", @"2", @"146", @"142", @"69", @"48", @"108", @"87", @"81", @"77", @"81", @"96", @"83", @"79", @"98", @"83", @"77", @"81", @"86", @"79", @"98", @"184"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showHandleUrl = [self StringFromManagerMakeData:value];
    }
    return _showHandleUrl;
}

//: notification
- (NSString *)showRangeIdent {
    if (!_showRangeIdent) {
		NSArray<NSString *> *origin = @[@"12", @"67", @"8", @"218", @"115", @"197", @"29", @"173", @"43", @"44", @"49", @"38", @"35", @"38", @"32", @"30", @"49", @"38", @"44", @"43", @"207"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showRangeIdent = [self StringFromManagerMakeData:value];
    }
    return _showRangeIdent;
}

//: type
- (NSString *)app_centerUrl {
    if (!_app_centerUrl) {
		NSArray<NSString *> *origin = @[@"4", @"62", @"12", @"230", @"225", @"17", @"77", @"143", @"148", @"251", @"19", @"128", @"54", @"59", @"50", @"39", @"38"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_centerUrl = [self StringFromManagerMakeData:value];
    }
    return _app_centerUrl;
}

//: ic_scan
- (NSString *)main_controlUrl {
    if (!_main_controlUrl) {
		NSArray<NSString *> *origin = @[@"7", @"69", @"13", @"45", @"5", @"129", @"112", @"76", @"252", @"8", @"13", @"27", @"231", @"36", @"30", @"26", @"46", @"30", @"28", @"41", @"234"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_controlUrl = [self StringFromManagerMakeData:value];
    }
    return _main_controlUrl;
}

//: #ffffff
- (NSString *)showAfterRedFullValue {
    if (!_showAfterRedFullValue) {
		NSArray<NSString *> *origin = @[@"7", @"80", @"7", @"203", @"49", @"78", @"74", @"211", @"22", @"22", @"22", @"22", @"22", @"22", @"21"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showAfterRedFullValue = [self StringFromManagerMakeData:value];
    }
    return _showAfterRedFullValue;
}

//: /user/checkcreateteam
- (NSString *)k_voiceMessage {
    if (!_k_voiceMessage) {
		NSArray<NSString *> *origin = @[@"21", @"47", @"8", @"70", @"119", @"75", @"58", @"4", @"0", @"70", @"68", @"54", @"67", @"0", @"52", @"57", @"54", @"52", @"60", @"52", @"67", @"54", @"50", @"69", @"54", @"69", @"54", @"50", @"62", @"129"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_voiceMessage = [self StringFromManagerMakeData:value];
    }
    return _k_voiceMessage;
}

//: activity_create_group_name_create_group
- (NSString *)k_controlRecordListStr {
    if (!_k_controlRecordListStr) {
		NSArray<NSString *> *origin = @[@"39", @"2", @"3", @"95", @"97", @"114", @"103", @"116", @"103", @"114", @"119", @"93", @"97", @"112", @"99", @"95", @"114", @"99", @"93", @"101", @"112", @"109", @"115", @"110", @"93", @"108", @"95", @"107", @"99", @"93", @"97", @"112", @"99", @"95", @"114", @"99", @"93", @"101", @"112", @"109", @"115", @"110", @"44"];
		NSData *data = [ManagerMakeData ManagerMakeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _k_controlRecordListStr = [self StringFromManagerMakeData:value];
    }
    return _k_controlRecordListStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ExecutiveSessionViewController.m
//  NIMDemo
//
//  Created by chris on 15/2/2.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionListViewController.h"
#import "ExecutiveSessionViewController.h"
//: #import "NTESSessionViewController.h"
#import "TopViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"
//: #import "NTESListHeader.h"
#import "DateView.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "NTESPersonalCardViewController.h"
#import "SharedViewController.h"
//: #import "NTESMessageUtil.h"
#import "WithUtil.h"
//: #import "NSString+NTES.h"
#import "NSString+Date.h"
//: #import <SVProgressHUD/SVProgressHUD.h>
#import <SVProgressHUD/SVProgressHUD.h>
//: #import <Toast/UIView+Toast.h>
#import <Toast/UIView+Toast.h>
//: #import <FFDropDownMenu/FFDropDownMenu.h>
#import <FFDropDownMenu/FFDropDownMenu.h>
//: #import <FFDropDownMenu/FFDropDownMenuView.h>
#import <FFDropDownMenu/FFDropDownMenuView.h>
//: #import "NTESContactAddFriendViewController.h"
#import "BubbleViewController.h"
//: #import "CCCContactScanViewController.h"
#import "AppViewController.h"
//: #import "FFFContactSelectViewController.h"
#import "BrandViewController.h"
//: #import "NTESSystemSignNotificationSheet.h"
#import "DataView.h"
//: #import "ZCHttpInterfacedConst.h"
#import "ZCHttpInterfacedConst.h"
//: #import <YYText.h>
#import <YYText.h>
//: #import "FFFTextHighlight.h"
#import "MediaNameContentHighlight.h"
//: #import "FFFInputEmoticonParser.h"
#import "ViewApp.h"
//: #import "FFFInputEmoticonManager.h"
#import "DeviceManager.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import "FFFKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "NTESSystemNotificationViewController.h"
#import "NotificationViewController.h"
//: #import "NTESNotificationView.h"
#import "NotificationView.h"
//: #import "UIButton+Badge.h"
#import "UIButton+Mutual.h"
//: #import "CCCContactsViewController.h"
#import "OffViewController.h"
//: #import "NTESMainTabController.h"
#import "LightGreenViewController.h"
//: #import "FFFKitFileLocationHelper.h"
#import "LocationHelper.h"
//: #import "ZMONPrivacyPolicyView.h"
#import "ImageUltramontanismView.h"

//: @interface NTESSessionListViewController ()<NIMLoginManagerDelegate,NTESListHeaderDelegate,NIMEventSubscribeManagerDelegate,UIViewControllerPreviewingDelegate,NIMChatExtendManagerDelegate, NIMConversationManagerDelegate,NTESSystemSignNotificationDelegate,NIMSystemNotificationManagerDelegate>
@interface ExecutiveSessionViewController ()<NIMLoginManagerDelegate,PraiseFind,NIMEventSubscribeManagerDelegate,UIViewControllerPreviewingDelegate,NIMChatExtendManagerDelegate, NIMConversationManagerDelegate,MediaDelegate,NIMSystemNotificationManagerDelegate>

//: @property (nonatomic,strong) NTESListHeader *header;
@property (nonatomic,strong) DateView *header;
//: @property (nonatomic,assign) BOOL supportsForceTouch;
@property (nonatomic,assign) BOOL supportsForceTouch;
//: @property (nonatomic,strong) NSMutableDictionary *previews;
@property (nonatomic,strong) NSMutableDictionary *previews;

//: @property (nonatomic,strong) NSMutableDictionary<NIMSession *,NIMStickTopSessionInfo *> *stickTopInfos;
@property (nonatomic,strong) NSMutableDictionary<NIMSession *,NIMStickTopSessionInfo *> *stickTopInfos;

@property (nonatomic, strong) FFDropDownMenuView *dropdownMenu;/** 下拉菜单 */

//: @property (nonatomic, strong) NSString *creatTeam;
@property (nonatomic, strong) NSString *creatTeam;

//: @property (nonatomic, strong) NTESNotificationView *noticeView;
@property (nonatomic, strong) NotificationView *noticeView;

//: @property (nonatomic, strong) UIButton *QuickChatBtn;
@property (nonatomic, strong) UIButton *QuickChatBtn;

//: @property (nonatomic, strong) UIButton *mesBtn;
@property (nonatomic, strong) UIButton *mesBtn;
//: @property (nonatomic, strong) UIButton *resqBtn;
@property (nonatomic, strong) UIButton *resqBtn;

//: @property (nonatomic, strong) UIView *reqView;
@property (nonatomic, strong) UIView *reqView;
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) MoreView *loadingView;

//: @property (nonatomic, strong) ZMONPrivacyPolicyView *policyView;
@property (nonatomic, strong) ImageUltramontanismView *policyView;


//: @end
@end

//: @implementation NTESSessionListViewController
@implementation ExecutiveSessionViewController

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {
        //: _previews = [[NSMutableDictionary alloc] init];
        _previews = [[NSMutableDictionary alloc] init];
        //: self.stickTopInfos = NSMutableDictionary.dictionary;
        self.stickTopInfos = NSMutableDictionary.dictionary;
        //: self.autoRemoveRemoteSession = [[NTESBundleSetting sharedConfig] autoRemoveRemoteSession];
        self.autoRemoveRemoteSession = [[EnvironmentSetting configLocation] blunt];
    }
    //: return self;
    return self;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    [[NIMSDK sharedSDK].loginManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
- (void)onSystemNotificationCountChanged:(NSInteger)unreadCount
{
    //: _resqBtn.badgeValue = [NSString stringWithFormat:@"%ld",(long)unreadCount];
    _resqBtn.badgeValue = [NSString stringWithFormat:@"%ld",(long)unreadCount];
//    CGFloat width = SCREEN_WIDTH/4;
//    _resqBtn.badgeOriginX = width/2+20;
    //: _resqBtn.badgeOriginY = -5;
    _resqBtn.badgeOriginY = -5;
}

//: - (void)viewDidLoad{
- (void)viewDidLoad{
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: self.supportsForceTouch = [self.traitCollection respondsToSelector:@selector(forceTouchCapability)] && self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable;
    self.supportsForceTouch = [self.traitCollection respondsToSelector:@selector(forceTouchCapability)] && self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable;

    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];
    //: [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];

    //: self.definesPresentationContext = YES;
    self.definesPresentationContext = YES;
    //: [self setUpNavItem];
    [self viewItem];

    /** 初始化下拉菜单 */
//    [self setupDropDownMenu];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+190, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-190)];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice statusOrLevel]+190, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice statusOrLevel]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-190)];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    contentView.backgroundColor = [UIColor status:[ManagerMakeData sharedInstance].showAfterRedFullValue];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: self.tableView.frame = CGRectMake(15,15, [[UIScreen mainScreen] bounds].size.width-30, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-210);
    self.tableView.frame = CGRectMake(15,15, [[UIScreen mainScreen] bounds].size.width-30, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice statusOrLevel]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-210);
    //: [contentView addSubview:self.tableView];
    [contentView addSubview:self.tableView];

    //: [self.view addSubview:self.QuickChatBtn];
    [self.view addSubview:self.QuickChatBtn];
    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];

    //: self.header = [[NTESListHeader alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 0)];
    self.header = [[DateView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 0)];
    //: self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    //: self.header.delegate = self;
    self.header.delegate = self;
    //: [self.view addSubview:self.header];
    [self.view addSubview:self.header];

    //: self.emptyImageView = [[UIImageView alloc] init];
    self.emptyImageView = [[UIImageView alloc] init];
    //: self.emptyImageView.hidden = YES;
    self.emptyImageView.hidden = YES;
    //: self.emptyImageView.image = [UIImage imageNamed:@"icon_session_list_empty"];
    self.emptyImageView.image = [UIImage imageNamed:[ManagerMakeData sharedInstance].dreamReadUrl];
    //: [self.view addSubview:self.emptyImageView];
    [self.view addSubview:self.emptyImageView];
    //: [self.emptyImageView mas_makeConstraints:^(MASConstraintMaker *make) {
    [self.emptyImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_offset(0);
        make.centerX.mas_offset(0);
        //: make.centerY.mas_offset(0).mas_offset(-50);
        make.centerY.mas_offset(0).mas_offset(-50);
        //: make.width.mas_equalTo(213);
        make.width.mas_equalTo(213);
        //: make.height.mas_offset(148);
        make.height.mas_offset(148);
    //: }];
    }];

    //: self.emptyTipLabel = [[UILabel alloc] init];
    self.emptyTipLabel = [[UILabel alloc] init];
    //: self.emptyTipLabel.hidden = YES;
    self.emptyTipLabel.hidden = YES;
    //: self.emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"no_conversation"];
    self.emptyTipLabel.text = [SendName streetSmart:[ManagerMakeData sharedInstance].user_textPath];//@"还没有会话，在通讯录中找个人聊聊吧".ntes_localized;
    //: self.emptyTipLabel.numberOfLines = 0;
    self.emptyTipLabel.numberOfLines = 0;
    //: self.emptyTipLabel.font = [UIFont systemFontOfSize:12];
    self.emptyTipLabel.font = [UIFont systemFontOfSize:12];
    //: self.emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
    self.emptyTipLabel.textColor = [UIColor status:[ManagerMakeData sharedInstance].showOptionMessage];
    //: self.emptyTipLabel.textAlignment = NSTextAlignmentCenter;
    self.emptyTipLabel.textAlignment = NSTextAlignmentCenter;
    //: [self.view addSubview:self.emptyTipLabel];
    [self.view addSubview:self.emptyTipLabel];
    //: [self.emptyTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [self.emptyTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(self.emptyImageView);
        make.centerX.mas_equalTo(self.emptyImageView);
        //: make.top.mas_equalTo(self.emptyImageView.mas_bottom).mas_offset(15);
        make.top.mas_equalTo(self.emptyImageView.mas_bottom).mas_offset(15);
        //: make.height.mas_equalTo(60);
        make.height.mas_equalTo(60);
        //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width-40);
        make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width-40);
    //: }];
    }];

    //: if(![[NIMUserDefaults standardUserDefaults].yspop isEqualToString:@"1"]){
    if(![[DataMaxDefaults max].yspop isEqualToString:@"1"]){
        //: UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
        UIWindow *window = [[[UIApplication sharedApplication] windows] objectAtIndex:0];
        //: [window addSubview:self.policyView];
        [window addSubview:self.policyView];
    }


    //: [ZCHttpManager refreshGlobalConfig:^(NSDictionary * _Nonnull configDict) {
    [TitleManageressManager compartment:^(NSDictionary * _Nonnull configDict) {
        //: if (configDict.allKeys.count > 0) {
        if (configDict.allKeys.count > 0) {
            //: NSString *globalsign = [configDict newStringValueForKey:@"globalsign"];
            NSString *globalsign = [configDict tag:[ManagerMakeData sharedInstance].dreamReplyUrl];
            //: if (globalsign.integerValue > 0) {
            if (globalsign.integerValue > 0) {
                //: NTESSystemSignNotificationSheet *sheet = [[NTESSystemSignNotificationSheet alloc] initWithFrame:self.view.bounds dictionary:@{}];
                DataView *sheet = [[DataView alloc] initWithRow:self.view.bounds recordAcross_strong:@{}];
                //: sheet.delegate = self;
                sheet.delegate = self;
                //: [sheet show];
                [sheet sendView];
            }
        }
    //: }];
    }];

    //: dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(1 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
            //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            NIMPushNotificationSetting *setting = [apnsManager currentSetting];
            //: setting.type = NIMPushNotificationDisplayTypeNoDetail;
            setting.type = NIMPushNotificationDisplayTypeNoDetail;
            //: [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            [[NIMSDK sharedSDK].apnsManager updateApnsSetting:setting completion:^(NSError * _Nullable error) {
            //: }];
            }];
        //: });
        });
}

//: - (void)addfriends {
- (void)low {
    //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    BubbleViewController *vc = [[BubbleViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)leftAction {
- (void)imageText {
    //: [self requestAuthorizationForVideo];
    [self easyLay];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self loadStickTopSessions];
    [self stateLabel];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self checkCreateTeam];
    [self add];
}

//: -(void)viewWillDisappear:(BOOL)animated{
-(void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: -(void)checkCreateTeam{
-(void)add{
    //: __weak typeof(self) weakself = self;
    __weak typeof(self) weakself = self;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkcreateteam"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[ManagerMakeData sharedInstance].k_voiceMessage] read:nil indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[ManagerMakeData sharedInstance].m_sizeName];
        //: weakself.creatTeam = code;
        weakself.creatTeam = code;
    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)reloadUnreadCount{
-(void)pull{
    //: NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];
    NSInteger unreadCount = [[NIMSDK sharedSDK].conversationManager allUnreadCount:YES];

    //: UINavigationController *nav = self.navigationController.viewControllers[0];
    UINavigationController *nav = self.navigationController.viewControllers[0];
    //: nav.tabBarItem.badgeValue = unreadCount ? @(unreadCount).stringValue : nil;
    nav.tabBarItem.badgeValue = unreadCount ? @(unreadCount).stringValue : nil;
}

//: - (void)setUpNavItem{
- (void)viewItem{

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 180)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice statusOrLevel], [[UIScreen mainScreen] bounds].size.width, 180)];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, 200, 50)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 5, 200, 50)];
    //: labtitle.textColor = [UIColor whiteColor];
    labtitle.textColor = [UIColor whiteColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:18];
    labtitle.font = [UIFont boldSystemFontOfSize:18];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"activity_user_profile_chat"];
    labtitle.text = [SendName streetSmart:[ManagerMakeData sharedInstance].mainMessageData];
    //: [topview addSubview:labtitle];
    [topview addSubview:labtitle];

    //: UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: moreBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-32-15, 10, 32, 32);
    moreBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-32-15, 10, 32, 32);
    //: [moreBtn addTarget:self action:@selector(requestAuthorizationForVideo) forControlEvents:UIControlEventTouchUpInside];
    [moreBtn addTarget:self action:@selector(easyLay) forControlEvents:UIControlEventTouchUpInside];
    //: [moreBtn setImage:[UIImage imageNamed:@"ic_scan"] forState:UIControlStateNormal];
    [moreBtn setImage:[UIImage imageNamed:[ManagerMakeData sharedInstance].main_controlUrl] forState:UIControlStateNormal];
    //: moreBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    moreBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: moreBtn.layer.cornerRadius = 16;
    moreBtn.layer.cornerRadius = 16;
    //: moreBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    moreBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: moreBtn.layer.shadowOffset = CGSizeMake(0,4);
    moreBtn.layer.shadowOffset = CGSizeMake(0,4);
    //: moreBtn.layer.shadowOpacity = 1;
    moreBtn.layer.shadowOpacity = 1;
    //: moreBtn.layer.shadowRadius = 12;
    moreBtn.layer.shadowRadius = 12;
    //: [topview addSubview:moreBtn];
    [topview addSubview:moreBtn];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-25)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-25)/2;
    //: UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(12, 60, width+5, 116)];
    UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(12, 60, width+5, 116)];
    //: [topview addSubview:box1];
    [topview addSubview:box1];
    //: box1.userInteractionEnabled = YES;
    box1.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handlerAddfriend)];
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handlerEvent)];
    //: [box1 addGestureRecognizer:singleTap1];
    [box1 addGestureRecognizer:singleTap1];
    //: UIImageView *image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home_add_friend"]];
    UIImageView *image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[ManagerMakeData sharedInstance].main_recentTitle]];
    //: image1.frame = CGRectMake(0, 0, width+5, 116);
    image1.frame = CGRectMake(0, 0, width+5, 116);
    //: image1.contentMode = UIViewContentModeScaleAspectFill;
    image1.contentMode = UIViewContentModeScaleAspectFill;
    //: [box1 addSubview:image1];
    [box1 addSubview:image1];
    //: UILabel *label12 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-10, 116)];
    UILabel *label12 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-10, 116)];
    //: label12.font = [UIFont systemFontOfSize:16.f];
    label12.font = [UIFont systemFontOfSize:16.f];
//    label12.textAlignment = NSTextAlignmentCenter;
    //: label12.textColor = [UIColor whiteColor];
    label12.textColor = [UIColor whiteColor];
    //: label12.text = [FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
    label12.text = [SendName streetSmart:[ManagerMakeData sharedInstance].dream_toData];
    //: label12.numberOfLines = 0;
    label12.numberOfLines = 0;
    //: [box1 addSubview:label12];
    [box1 addSubview:label12];

    //: UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(12+width+10, 60, width-10, 52)];
    UIView *box2 = [[UIView alloc]initWithFrame:CGRectMake(12+width+10, 60, width-10, 52)];
    //: [topview addSubview:box2];
    [topview addSubview:box2];
    //: box2.userInteractionEnabled = YES;
    box2.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handlerAddgroup)];
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(changeImage)];
    //: [box2 addGestureRecognizer:singleTap2];
    [box2 addGestureRecognizer:singleTap2];

    //: UIImageView *image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home_notice"]];
    UIImageView *image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[ManagerMakeData sharedInstance].app_enableId]];
    //: image2.frame = CGRectMake(0, 0, width-10, 52);
    image2.frame = CGRectMake(0, 0, width-10, 52);
    //: image2.contentMode = UIViewContentModeScaleAspectFill;
    image2.contentMode = UIViewContentModeScaleAspectFill;
    //: [box2 addSubview:image2];
    [box2 addSubview:image2];
    //: UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    //: label2.font = [UIFont systemFontOfSize:16.f];
    label2.font = [UIFont systemFontOfSize:16.f];
//    label2.textAlignment = NSTextAlignmentCenter;
    //: label2.textColor = [UIColor whiteColor];
    label2.textColor = [UIColor whiteColor];
    //: label2.text = [FFFLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
    label2.text = [SendName streetSmart:[ManagerMakeData sharedInstance].k_controlRecordListStr];
    //: [box2 addSubview:label2];
    [box2 addSubview:label2];

    //: UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(12+width+5, 60+52+12, width-5, 52)];
    UIView *box4 = [[UIView alloc]initWithFrame:CGRectMake(12+width+5, 60+52+12, width-5, 52)];
    //: [topview addSubview:box4];
    [topview addSubview:box4];

    //: UIImageView *image3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"home_create_group"]];
    UIImageView *image3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[ManagerMakeData sharedInstance].showFactorValue]];
    //: image3.frame = CGRectMake(0, 0, width-5, 52);
    image3.frame = CGRectMake(0, 0, width-5, 52);
    //: image3.contentMode = UIViewContentModeScaleAspectFill;
    image3.contentMode = UIViewContentModeScaleAspectFill;
    //: [box4 addSubview:image3];
    [box4 addSubview:image3];

    //: _resqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _resqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _resqBtn.frame = CGRectMake(0, 0, width-5, 52);
    _resqBtn.frame = CGRectMake(0, 0, width-5, 52);
//    [_resqBtn setImage:[UIImage imageNamed:@"home_create_group"] forState:UIControlStateNormal];
    //: [_resqBtn addTarget:self action:@selector(handlerNotice) forControlEvents:UIControlEventTouchUpInside];
    [_resqBtn addTarget:self action:@selector(maxSession) forControlEvents:UIControlEventTouchUpInside];
     //: [box4 addSubview:_resqBtn];
     [box4 addSubview:_resqBtn];

    //: UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, width-15, 52)];
    //: label3.font = [UIFont systemFontOfSize:16.f];
    label3.font = [UIFont systemFontOfSize:16.f];
//    label2.textAlignment = NSTextAlignmentCenter;
    //: label3.textColor = [UIColor whiteColor];
    label3.textColor = [UIColor whiteColor];
    //: label3.text = [FFFLanguageManager getTextWithKey:@"notification"];
    label3.text = [SendName streetSmart:[ManagerMakeData sharedInstance].showRangeIdent];
    //: [box4 addSubview:label3];
    [box4 addSubview:label3];

    //: NSInteger systemUnreadCount = [NIMSDK sharedSDK].systemNotificationManager.allUnreadCount;
    NSInteger systemUnreadCount = [NIMSDK sharedSDK].systemNotificationManager.allUnreadCount;
    //: _resqBtn.badgeValue = [NSString stringWithFormat:@"%ld",(long)systemUnreadCount];
    _resqBtn.badgeValue = [NSString stringWithFormat:@"%ld",(long)systemUnreadCount];
//    _resqBtn.badgeOriginX = width/2+20;
    //: _resqBtn.badgeOriginY = -5;
    _resqBtn.badgeOriginY = -5;

}

//: - (void)handlerMessage {
- (void)record {
    //: [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: _mesBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
    _mesBtn.backgroundColor = [UIColor status:[ManagerMakeData sharedInstance].mRemoveIdent];
    //: [_resqBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_resqBtn setTitleColor:[UIColor status:[ManagerMakeData sharedInstance].main_handleFullMessage] forState:UIControlStateNormal];
    //: _resqBtn.backgroundColor = [UIColor clearColor];
    _resqBtn.backgroundColor = [UIColor clearColor];
    //: self.noticeView.hidden = YES;
    self.noticeView.hidden = YES;
    //: self.tableView.hidden = NO;
    self.tableView.hidden = NO;
}
//: - (void)handlerRequests {
- (void)range {
    //: [_resqBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_resqBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: _resqBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
    _resqBtn.backgroundColor = [UIColor status:[ManagerMakeData sharedInstance].mRemoveIdent];
    //: [_mesBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_mesBtn setTitleColor:[UIColor status:[ManagerMakeData sharedInstance].main_handleFullMessage] forState:UIControlStateNormal];
    //: _mesBtn.backgroundColor = [UIColor clearColor];
    _mesBtn.backgroundColor = [UIColor clearColor];
    //: self.noticeView.hidden = NO;
    self.noticeView.hidden = NO;
    //: self.tableView.hidden = YES;
    self.tableView.hidden = YES;
}
//: - (void)handlerAddfriend {
- (void)handlerEvent {
    //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
    BubbleViewController *vc = [[BubbleViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: - (void)handlerAddgroup {
- (void)changeImage {
    //: [self creatTeamGroup];
    [self objectLength];
}

//: - (void)handlerNotice {
- (void)maxSession {
    //: NTESSystemNotificationViewController *vc = [[NTESSystemNotificationViewController alloc] initWithNibName:nil bundle:nil];
    NotificationViewController *vc = [[NotificationViewController alloc] initWithNibName:nil bundle:nil];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (void)refresh{
- (void)successMore{
    //: [super refresh];
    [super successMore];
    //: self.emptyTipLabel.hidden = self.recentSessions.count;
    self.emptyTipLabel.hidden = self.recentSessions.count;
    //: self.emptyImageView.hidden = self.recentSessions.count;
    self.emptyImageView.hidden = self.recentSessions.count;
    //: self.addBtn.hidden = self.recentSessions.count;
    self.addBtn.hidden = self.recentSessions.count;

}

//: - (void)onSelectedRecent:(NIMRecentSession *)recent atIndexPath:(NSIndexPath *)indexPath{
- (void)tapSession:(NIMRecentSession *)recent image:(NSIndexPath *)indexPath{
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:recent.session];
    TopViewController *vc = [[TopViewController alloc] initWithMedia:recent.session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onSelectedAvatar:(NIMRecentSession *)recent
- (void)chromaticPath:(NIMRecentSession *)recent
             //: atIndexPath:(NSIndexPath *)indexPath{
             viewPath:(NSIndexPath *)indexPath{
    //: if (recent.session.sessionType == NIMSessionTypeP2P) {
    if (recent.session.sessionType == NIMSessionTypeP2P) {
        //: UIViewController *vc;
        UIViewController *vc;
        //: vc = [[NTESPersonalCardViewController alloc] initWithUserId:recent.session.sessionId];
        vc = [[SharedViewController alloc] initWithByFullId:recent.session.sessionId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)onDeleteRecentAtIndexPath:(NIMRecentSession *)recent atIndexPath:(NSIndexPath *)indexPath
- (void)messagePath:(NIMRecentSession *)recent orphan:(NSIndexPath *)indexPath
{
    //: id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
    NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
    //: option.isDeleteRoamMessage = self.autoRemoveRemoteSession;
    option.isDeleteRoamMessage = self.autoRemoveRemoteSession;
    //: [manager deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
    [manager deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: NSLog(@"deleteRecentSessionError:%@",error);
        //: if (!error) {
        if (!error) {
            //清理本地数据
            //: [self.recentSessions removeObject:recent];
            [self.recentSessions removeObject:recent];
            //: self.recentSessions = [self customSortRecents:self.recentSessions];
            self.recentSessions = [self variety:self.recentSessions];
            //: [self refresh];
            [self successMore];
        }
    //: }];
    }];

//    [manager deleteRecentSession:recent];

}

//: - (void)onTopRecentAtIndexPath:(NIMRecentSession *)recent
- (void)pathAcross:(NIMRecentSession *)recent
                   //: atIndexPath:(NSIndexPath *)indexPath
                   trademark:(NSIndexPath *)indexPath
                         //: isTop:(BOOL)isTop
                         path:(BOOL)isTop
{
    //: if (isTop)
    if (isTop)
    {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:self.stickTopInfos[recent.session] completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable removedInfo) {
        [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:self.stickTopInfos[recent.session] completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable removedInfo) {
            //: __weak typeof(self) sself = wself;
            __weak typeof(self) sself = wself;
            //: if (!sself) return;
            if (!sself) return;
            //: if (error) {
            if (error) {
                //: [SVProgressHUD showErrorWithStatus:error.localizedDescription];
                [SVProgressHUD showErrorWithStatus:error.localizedDescription];
                //: return;
                return;
            }
            //: self.stickTopInfos[recent.session] = nil;
            self.stickTopInfos[recent.session] = nil;
            //: [self refresh];
            [self successMore];
        //: }];
        }];
    //: } else {
    } else {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:recent.session];
        NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:recent.session];
        //: [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable newInfo) {
        [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable newInfo) {
            //: __weak typeof(self) sself = wself;
            __weak typeof(self) sself = wself;
            //: if (!sself) return;
            if (!sself) return;
            //: if (error) {
            if (error) {
                //: [SVProgressHUD showErrorWithStatus:error.localizedDescription];
                [SVProgressHUD showErrorWithStatus:error.localizedDescription];
                //: return;
                return;
            }
            //: self.stickTopInfos[newInfo.session] = newInfo;
            self.stickTopInfos[newInfo.session] = newInfo;
            //: [self refresh];
            [self successMore];
        //: }];
        }];
    }
}

//: - (void)onDisnodistrubRecentAtIndexPath:(NIMRecentSession *)recent isDis:(BOOL)isDis
- (void)event:(NIMRecentSession *)recent sign:(BOOL)isDis
{
    //: FFFKitInfo *info = nil;
    Info *info = nil;
    //: if (recent.session.sessionType == NIMSessionTypeTeam) {
    if (recent.session.sessionType == NIMSessionTypeTeam) {
        //: info = [[MyUserKit sharedKit] infoByTeam:recent.session.sessionId option:nil];
        info = [[Case pastTop] controlOption:recent.session.sessionId my:nil];
        //: NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        //: notifyState = notifyState == NIMTeamNotifyStateAll ? NIMTeamNotifyStateNone: NIMTeamNotifyStateAll;
        notifyState = notifyState == NIMTeamNotifyStateAll ? NIMTeamNotifyStateNone: NIMTeamNotifyStateAll;

        //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:notifyState inTeam:info.infoId completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] teamManager] updateNotifyState:notifyState inTeam:info.infoId completion:^(NSError * _Nullable error) {
            //: [self refresh];
            [self successMore];
        //: }];
        }];
    //: } else if (recent.session.sessionType == NIMSessionTypeP2P) {
    } else if (recent.session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        InfoGreenImage *option = [[InfoGreenImage alloc] init];
        //: option.session = recent.session;
        option.session = recent.session;
        //: info = [[MyUserKit sharedKit] infoByUser:recent.session.sessionId option:option];
        info = [[Case pastTop] consumer:recent.session.sessionId message:option];
//        isDisnodistrub = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];//判断消息是否勿扰

        //: [[NIMSDK sharedSDK].userManager updateNotifyState:!isDis forUser:info.infoId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager updateNotifyState:!isDis forUser:info.infoId completion:^(NSError *error) {
            //: [self refresh];
            [self successMore];
        //: }];
        }];
    }
//
//    if(!isDis){
//        [self reloadUnreadCount];
//    }


}

///置顶会话的cell
//: - (BOOL)isTopWithNIMRecentSession:(NIMRecentSession *)recentSession; {
- (BOOL)tool:(NIMRecentSession *)recentSession; {
    //: BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    //: return isTop;
    return isTop;
}

//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
    //: [self refreshSubview];
    [self sovietSocialistRepublic];
}


//: - (NSString *)nameForRecentSession:(NIMRecentSession *)recent{
- (NSString *)recent:(NIMRecentSession *)recent{
    //: if ([recent.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
    if ([recent.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]]) {
        //: return [FFFLanguageManager getTextWithKey:@"my_computer"];
        return [SendName streetSmart:[ManagerMakeData sharedInstance].main_infoIdent];
    }
    //: return [super nameForRecentSession:recent];
    return [super recent:recent];
}

//: - (NSMutableArray *)customSortRecents:(NSMutableArray *)recentSessions
- (NSMutableArray *)variety:(NSMutableArray *)recentSessions
{
    //: [NIMSDK.sharedSDK.chatExtendManager sortRecentSessions:recentSessions withStickTopInfos:self.stickTopInfos];
    [NIMSDK.sharedSDK.chatExtendManager sortRecentSessions:recentSessions withStickTopInfos:self.stickTopInfos];
    //: return recentSessions;
    return recentSessions;
}


//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step {
- (void)onLogin:(NIMLoginStep)step {

    //: ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep = step;
    ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep = step;

    //: [super onLogin:step];
    [super onLogin:step];
    //: switch (step) {
    switch (step) {
        //: case NIMLoginStepLinkFailed:
        case NIMLoginStepLinkFailed:
            //: self.navigationItem.title = @"(未连接)".ntes_localized;
            self.navigationItem.title = [ManagerMakeData sharedInstance].main_managerObjectFormat.untilNtes;
            //: break;
            break;
        //: case NIMLoginStepLinking:
        case NIMLoginStepLinking:
            //: self.navigationItem.title = @"(连接中)".ntes_localized;
            self.navigationItem.title = [ManagerMakeData sharedInstance].dream_withTitle.untilNtes;
            //: break;
            break;
        //: case NIMLoginStepLinkOK:
        case NIMLoginStepLinkOK:
        //: case NIMLoginStepSyncOK:
        case NIMLoginStepSyncOK:
            //: self.navigationItem.title = @"";
            self.navigationItem.title = @"";
            //: break;
            break;
        //: case NIMLoginStepSyncing:
        case NIMLoginStepSyncing:
            //: self.navigationItem.title = @"(同步数据)".ntes_localized;
            self.navigationItem.title = [ManagerMakeData sharedInstance].noti_lineKey.untilNtes;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header will:ListHeaderTypeNetStauts maxImage:@(step)];
    //: [self refreshSubview];
    [self sovietSocialistRepublic];
}

//: - (void)onMultiLoginClientsChanged
- (void)onMultiLoginClientsChanged
{
//    [self.header refreshWithType:ListHeaderTypeLoginClients value:[NIMSDK sharedSDK].loginManager.currentLoginClients];
//    [self refreshSubview];
}

//: - (void)onTeamUsersSyncFinished:(BOOL)success
- (void)onTeamUsersSyncFinished:(BOOL)success
{
}


//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if (self.supportsForceTouch) {
    if (self.supportsForceTouch) {
        //: id<UIViewControllerPreviewing> preview = [self registerForPreviewingWithDelegate:self sourceView:cell];
        id<UIViewControllerPreviewing> preview = [self registerForPreviewingWithDelegate:self sourceView:cell];
        //: [self.previews setObject:preview forKey:@(indexPath.section)];
        [self.previews setObject:preview forKey:@(indexPath.section)];
    }
}

//: - (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: if (self.supportsForceTouch) {
    if (self.supportsForceTouch) {
        //: id<UIViewControllerPreviewing> preview = [self.previews objectForKey:@(indexPath.row)];
        id<UIViewControllerPreviewing> preview = [self.previews objectForKey:@(indexPath.row)];
        //: [self unregisterForPreviewingWithContext:preview];
        [self unregisterForPreviewingWithContext:preview];
        //: [self.previews removeObjectForKey:@(indexPath.section)];
        [self.previews removeObjectForKey:@(indexPath.section)];
    }
}


//: - (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint)point {
- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint)point {
    //: UITableViewCell *touchCell = (UITableViewCell *)context.sourceView;
    UITableViewCell *touchCell = (UITableViewCell *)context.sourceView;

    //: return nil;
    return nil;
}

//: - (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
{
    //: UITableViewCell *touchCell = (UITableViewCell *)previewingContext.sourceView;
    UITableViewCell *touchCell = (UITableViewCell *)previewingContext.sourceView;
    //: if ([touchCell isKindOfClass:[UITableViewCell class]]) {
    if ([touchCell isKindOfClass:[UITableViewCell class]]) {
        //: NSIndexPath *indexPath = [self.tableView indexPathForCell:touchCell];
        NSIndexPath *indexPath = [self.tableView indexPathForCell:touchCell];
        //: NIMRecentSession *recent = self.recentSessions[indexPath.row];
        NIMRecentSession *recent = self.recentSessions[indexPath.row];
        //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:recent.session];
        TopViewController *vc = [[TopViewController alloc] initWithMedia:recent.session];
        //: [self.navigationController showViewController:vc sender:nil];
        [self.navigationController showViewController:vc sender:nil];
    }
}

//: - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 偶现侧滑数组越界，但并没有发现并发问题，暂且防护
    //: return indexPath.section < self.recentSessions.count;
    return indexPath.section < self.recentSessions.count;
}

//: - (UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {
- (UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: UIContextualAction *deleteAction1 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
    UIContextualAction *deleteAction1 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {

        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [tableView setEditing:NO animated:YES]; 
        [tableView setEditing:NO animated:YES]; // 这句很重要，退出编辑模式，隐藏左滑菜单

        //: NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
        NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
        //: [self onDeleteRecentAtIndexPath:recentSession atIndexPath:indexPath];
        [self messagePath:recentSession orphan:indexPath];
        //: [tableView setEditing:NO animated:YES];
        [tableView setEditing:NO animated:YES];

        // 删除置顶
        //: NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:recentSession.session];
        NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:recentSession.session];
        //: if (stickTopInfo) {
        if (stickTopInfo) {
            //: [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable removedInfo) {
            [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:^(NSError * _Nullable error, NIMStickTopSessionInfo * _Nullable removedInfo) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;

                //: if (!self) return;
                if (!self) return;
                //: if (!error) {
                if (!error) {
                    //: self.stickTopInfos[recentSession.session] = nil;
                    self.stickTopInfos[recentSession.session] = nil;
                }
            //: }];
            }];
        }
    //: }];
    }];

    //: NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
    NIMRecentSession *recentSession = self.recentSessions[indexPath.section];
    //: BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    BOOL isTop = self.stickTopInfos[recentSession.session] != nil;
    //: UIContextualAction *deleteAction2 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
    UIContextualAction *deleteAction2 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [tableView setEditing:NO animated:YES];
        [tableView setEditing:NO animated:YES];
        //: [self onTopRecentAtIndexPath:recentSession atIndexPath:indexPath isTop:isTop];
        [self pathAcross:recentSession trademark:indexPath path:isTop];
    //: }];
    }];

    //: BOOL isDisnodistrub = NO;
    BOOL isDisnodistrub = NO;
    //: FFFKitInfo *info = nil;
    Info *info = nil;
    //: if (recentSession.session.sessionType == NIMSessionTypeTeam) {
    if (recentSession.session.sessionType == NIMSessionTypeTeam) {
        //: info = [[MyUserKit sharedKit] infoByTeam:recentSession.session.sessionId option:nil];
        info = [[Case pastTop] controlOption:recentSession.session.sessionId my:nil];
        //: NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
        //: isDisnodistrub = notifyState == NIMTeamNotifyStateAll ? YES: NO ;
        isDisnodistrub = notifyState == NIMTeamNotifyStateAll ? YES: NO ;

    //: } else if (recentSession.session.sessionType == NIMSessionTypeP2P) {
    } else if (recentSession.session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        InfoGreenImage *option = [[InfoGreenImage alloc] init];
        //: option.session = recentSession.session;
        option.session = recentSession.session;
        //: info = [[MyUserKit sharedKit] infoByUser:recentSession.session.sessionId option:option];
        info = [[Case pastTop] consumer:recentSession.session.sessionId message:option];
        //: isDisnodistrub = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];
        isDisnodistrub = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];//判断消息是否勿扰
    }
    //: UIContextualAction *deleteAction3 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
    UIContextualAction *deleteAction3 = [UIContextualAction contextualActionWithStyle:UIContextualActionStyleNormal title:nil handler:^(UIContextualAction * _Nonnull action, __kindof UIView * _Nonnull sourceView, void (^ _Nonnull completionHandler)(BOOL)) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [tableView setEditing:NO animated:YES];
        [tableView setEditing:NO animated:YES];
        //: [self onDisnodistrubRecentAtIndexPath:recentSession isDis:isDisnodistrub];
        [self event:recentSession sign:isDisnodistrub];
    //: }];
    }];

//    //只能设置背景颜色，图片，文字
    //: deleteAction1.backgroundColor = [UIColor whiteColor];
    deleteAction1.backgroundColor = [UIColor whiteColor];
    //: deleteAction1.image = [UIImage imageNamed:@"ic_delete"];
    deleteAction1.image = [UIImage imageNamed:[ManagerMakeData sharedInstance].m_enableSearchInfoName];
//
    //: deleteAction2.backgroundColor = [UIColor whiteColor];
    deleteAction2.backgroundColor = [UIColor whiteColor];
    //: if(isTop){
    if(isTop){
        //: deleteAction2.image = [UIImage imageNamed:@"ic_topno"];
        deleteAction2.image = [UIImage imageNamed:[ManagerMakeData sharedInstance].dreamTitleMessageValue];
    //: }else{
    }else{
        //: deleteAction2.image = [UIImage imageNamed:@"ic_top"];
        deleteAction2.image = [UIImage imageNamed:[ManagerMakeData sharedInstance].showLabelSuccessUrl];
    }


    //: deleteAction3.backgroundColor = [UIColor whiteColor];
    deleteAction3.backgroundColor = [UIColor whiteColor];
    //: if(isDisnodistrub){
    if(isDisnodistrub){
        //: deleteAction3.image = [UIImage imageNamed:@"ic_distrub"];
        deleteAction3.image = [UIImage imageNamed:[ManagerMakeData sharedInstance].m_popTitle];
    //: }else{
    }else{
        //: deleteAction3.image = [UIImage imageNamed:@"ic_nodistrub"];
        deleteAction3.image = [UIImage imageNamed:[ManagerMakeData sharedInstance].user_managerPath];
    }
//    // 创建包含图片和文字的自定义视图
//    UIView *customView1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 74)];
//    customView1.backgroundColor = [UIColor redColor];
//    // 图片
//    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake(23, 20, 14, 14)];
//    imageView1.centerX = customView1.centerX;
//    imageView1.image = [UIImage imageNamed:@"ic_delete"];
//    [customView1 addSubview:imageView1];
//    // 文字
//    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 42, 70, 15)];
//    label1.text = @"删除".nim_localized;
//    label1.textColor = [UIColor whiteColor];
//    label1.textAlignment = NSTextAlignmentCenter;
//    label1.font = [UIFont systemFontOfSize:12.0];
//    label1.centerX = customView1.centerX;
//    [customView1 addSubview:label1];
//    // 将自定义视图添加到背景色中
////    [deleteAction1 setBackgroundColor:[UIColor clearColor]];
//    deleteAction1.backgroundColor = [UIColor colorWithPatternImage:[self imageWithView:customView1]];
//    // 创建包含图片和文字的自定义视图
//    UIView *customView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 74)];
//    customView2.backgroundColor = kCommonColor;
//    // 图片
//    UIImageView *imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(23, 20, 14, 14)];
//    imageView2.centerX = customView2.centerX;
//    imageView2.image = [UIImage imageNamed:@"ic_top"];
//    [customView2 addSubview:imageView2];
//    // 文字
//    UILabel *label2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 42, 70, 15)];
//    label2.text = isTop?@"取消置顶".nim_localized:@"置顶".nim_localized;
//    label2.textColor = [UIColor whiteColor];
//    label2.textAlignment = NSTextAlignmentCenter;
//    label2.font = [UIFont systemFontOfSize:12.0];
//    label2.centerX = customView2.centerX;
//    [customView2 addSubview:label2];
//    // 将自定义视图添加到背景色中
////    [deleteAction1 setBackgroundColor:[UIColor clearColor]];
//    deleteAction2.backgroundColor = [UIColor colorWithPatternImage:[self imageWithView:customView2]];

//    // 创建包含图片和文字的自定义视图
//    UIView *customView3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 74)];
//    customView3.backgroundColor = RGB_COLOR_String(@"#FFA339");
//    // 图片
//    UIImageView *imageView3 = [[UIImageView alloc] initWithFrame:CGRectMake(23, 20, 14, 14)];
//    imageView3.centerX = customView3.centerX;
//    imageView3.image = [UIImage imageNamed:@"ic_nodistrub"];
//    [customView3 addSubview:imageView3];
//    // 文字
//    UILabel *label3 = [[UILabel alloc] initWithFrame:CGRectMake(0, 42, 70, 15)];
//    label3.text = isDisnodistrub?LangKey(@"Block"):LangKey(@"unBlock");
//    label3.textColor = [UIColor whiteColor];
//    label3.textAlignment = NSTextAlignmentCenter;
//    label3.font = [UIFont systemFontOfSize:12.0];
//    label3.centerX = customView3.centerX;
//    [customView3 addSubview:label3];
//    // 将自定义视图添加到背景色中
////    [deleteAction1 setBackgroundColor:[UIColor clearColor]];
//    deleteAction3.backgroundColor = [UIColor colorWithPatternImage:[self imageWithView:customView3]];

    //: NSArray<UIContextualAction*> *contextualAction = @[deleteAction1,deleteAction3,deleteAction2];
    NSArray<UIContextualAction*> *contextualAction = @[deleteAction1,deleteAction3,deleteAction2];
    //: UISwipeActionsConfiguration *actions = [UISwipeActionsConfiguration configurationWithActions:contextualAction];
    UISwipeActionsConfiguration *actions = [UISwipeActionsConfiguration configurationWithActions:contextualAction];
    //: actions.performsFirstActionWithFullSwipe = NO; 
    actions.performsFirstActionWithFullSwipe = NO; // 禁止侧滑无线拉伸
    //: return actions;
    return actions;
}
//: - (UIImage *)imageWithView:(UIView *)view {
- (UIImage *)refer:(UIView *)view {
    //: UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, [UIScreen mainScreen].scale);
    //: [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    //: UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return image;
    return image;
}
//: #pragma mark - NIMEventSubscribeManagerDelegate
#pragma mark - NIMEventSubscribeManagerDelegate

//: - (void)onRecvSubscribeEvents:(NSArray *)events
- (void)onRecvSubscribeEvents:(NSArray *)events
{
    //: NSMutableSet *ids = [[NSMutableSet alloc] init];
    NSMutableSet *ids = [[NSMutableSet alloc] init];
    //: for (NIMSubscribeEvent *event in events) {
    for (NIMSubscribeEvent *event in events) {
        //: [ids addObject:event.from];
        [ids addObject:event.from];
    }

    //: NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    NSMutableArray *indexPaths = [[NSMutableArray alloc] init];
    //: for (NSIndexPath *indexPath in self.tableView.indexPathsForVisibleRows) {
    for (NSIndexPath *indexPath in self.tableView.indexPathsForVisibleRows) {
        //: NIMRecentSession *recent = self.recentSessions[indexPath.row];
        NIMRecentSession *recent = self.recentSessions[indexPath.row];
        //: if (recent.session.sessionType == NIMSessionTypeP2P) {
        if (recent.session.sessionType == NIMSessionTypeP2P) {
            //: NSString *from = recent.session.sessionId;
            NSString *from = recent.session.sessionId;
            //: if ([ids containsObject:from]) {
            if ([ids containsObject:from]) {
                //: [indexPaths addObject:indexPath];
                [indexPaths addObject:indexPath];
            }
        }
    }

    //: [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
    [self.tableView reloadRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationNone];
}

//: - (void)onNotifyAddStickTopSession:(NIMStickTopSessionInfo *)newInfo
- (void)onNotifyAddStickTopSession:(NIMStickTopSessionInfo *)newInfo
{
    //: self.stickTopInfos[newInfo.session] = newInfo;
    self.stickTopInfos[newInfo.session] = newInfo;
    //: [self refresh];
    [self successMore];
}

//: - (void)onNotifyRemoveStickTopSession:(NIMStickTopSessionInfo *)removedInfo
- (void)onNotifyRemoveStickTopSession:(NIMStickTopSessionInfo *)removedInfo
{
    //: self.stickTopInfos[removedInfo.session] = nil;
    self.stickTopInfos[removedInfo.session] = nil;
    //: [self refresh];
    [self successMore];
}

//: - (void)onNotifySyncStickTopSessions:(NIMSyncStickTopSessionResponse *)response
- (void)onNotifySyncStickTopSessions:(NIMSyncStickTopSessionResponse *)response
{
    //: if (response.hasChange) {
    if (response.hasChange) {
        //: [self.stickTopInfos removeAllObjects];
        [self.stickTopInfos removeAllObjects];
        //: [response.allInfos enumerateObjectsUsingBlock:^(NIMStickTopSessionInfo * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [response.allInfos enumerateObjectsUsingBlock:^(NIMStickTopSessionInfo * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: self.stickTopInfos[obj.session] = obj;
            self.stickTopInfos[obj.session] = obj;
        //: }];
        }];
        //: [self refresh];
        [self successMore];
    }
}

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)onMarkMessageReadCompleteInSession:(NIMSession *)session error:(NSError *)error {
- (void)onMarkMessageReadCompleteInSession:(NIMSession *)session error:(NSError *)error {
    //: if (error) {
    if (error) {
//        UIWindow *keyWindow = [UIApplication sharedApplication].windows.firstObject;
//        NSString *msg = [NSString stringWithFormat:@"session %@ type %@ mark fail.code:%@",
//                         session.sessionId, @(session.sessionType), @(error.code)];
//        [keyWindow makeToast:msg duration:2 position:CSToastPositionCenter];
    }
}

//: #pragma mark - Private
#pragma mark - Private

//: - (void)refreshSubview{
- (void)sovietSocialistRepublic{
    //: self.header.top = [UIDevice vg_statusBarHeight]+180;
    self.header.top = [UIDevice statusOrLevel]+180;
//    self.tableView.top = SCREEN_STATUS_HEIGHT +44;
//    CGFloat offset = self.view.safeAreaInsets.bottom;
//    self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
//    self.tableView.contentInset = UIEdgeInsetsMake(0, 0, offset, 0);
//
//    self.tableView.height = self.view.height - self.tableView.top;

}

//: - (NSAttributedString *)contentForRecentSession:(NIMRecentSession *)recent{
- (NSAttributedString *)tap:(NIMRecentSession *)recent{
    //: NSAttributedString *content;
    NSAttributedString *content;
    //: if (recent.lastMessage.messageType == NIMMessageTypeCustom)
    if (recent.lastMessage.messageType == NIMMessageTypeCustom)
    {
        //: NIMMessage *msg = recent.lastMessage;
        NIMMessage *msg = recent.lastMessage;
        //: if ([recent.lastMessage.text containsString:[FFFLanguageManager getTextWithKey:@"retracted_message"]]) {
        if ([recent.lastMessage.text containsString:[SendName streetSmart:[ManagerMakeData sharedInstance].k_successKey]]) {
            //: msg = [self lastMessageWithNoRevocationMessage:recent.lastMessage];
            msg = [self userTing:recent.lastMessage];
        }
        //: NSString *text = [NTESMessageUtil messageContent:msg];
        NSString *text = [WithUtil imagePull:msg];
        //: if (recent.session.sessionType != NIMSessionTypeP2P)
        if (recent.session.sessionType != NIMSessionTypeP2P)
        {
            //: NSString *nickName = [NTESSessionUtil showNick:msg.from inSession:msg.session];
            NSString *nickName = [DeviceDate inColor:msg.from ting:msg.session];
            //: text = nickName.length ? [nickName stringByAppendingFormat:@" : %@",text] : @"";
            text = nickName.length ? [nickName stringByAppendingFormat:@" : %@",text] : @"";
        }
        //: content = [[NSAttributedString alloc] initWithString:text?:@""];
        content = [[NSAttributedString alloc] initWithString:text?:@""];
    }
    //: else
    else
    {
        //: content = [super contentForRecentSession:recent];
        content = [super tap:recent];
    }
    //: NSMutableAttributedString *attContent = [[NSMutableAttributedString alloc] initWithAttributedString:content];
    NSMutableAttributedString *attContent = [[NSMutableAttributedString alloc] initWithAttributedString:content];
    //: [self checkNeedAtTip:recent content:attContent];
    [self eigenvalueOfAMatrixName:recent max:attContent];
    //: [self checkOnlineState:recent content:attContent];
    [self voiceTo:recent switchline:attContent];

    //: NSMutableAttributedString *resultS = [self transformEmojiDescToEomjiImageWithAttributedString:attContent];
    NSMutableAttributedString *resultS = [self image:attContent];

    //: return resultS;
    return resultS;
}

//: - (NIMMessage *)lastMessageWithNoRevocationMessage:(NIMMessage *)recentMsg {
- (NIMMessage *)userTing:(NIMMessage *)recentMsg {

    //: NSArray<NIMMessage *> *messages = [NIMSDK.sharedSDK.conversationManager messagesInSession:recentMsg.session message:recentMsg limit:1];
    NSArray<NIMMessage *> *messages = [NIMSDK.sharedSDK.conversationManager messagesInSession:recentMsg.session message:recentMsg limit:1];
    //: NIMMessage *msg = recentMsg;
    NIMMessage *msg = recentMsg;
    //: if (messages.count > 0) {
    if (messages.count > 0) {
        //: msg = messages.firstObject;
        msg = messages.firstObject;
        //: if (msg.messageType == NIMMessageTypeCustom && msg.messageSubType == 20) {
        if (msg.messageType == NIMMessageTypeCustom && msg.messageSubType == 20) {
            //: return [self lastMessageWithNoRevocationMessage:msg];
            return [self userTing:msg];
        }
    }
    //: return msg;
    return msg;
}

//: + (NSRegularExpression *)regexEmoticon {
+ (NSRegularExpression *)user {
    //: static NSRegularExpression *regex;
    static NSRegularExpression *regex;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: regex = [NSRegularExpression regularExpressionWithPattern:@"\\[[^ \\[\\]]+?\\]" options:kNilOptions error:NULL];
        regex = [NSRegularExpression regularExpressionWithPattern:@"\\[[^ \\[\\]]+?\\]" options:kNilOptions error:NULL];
    //: });
    });
    //: return regex;
    return regex;
}

//: - (NSMutableAttributedString *)transformEmojiDescToEomjiImageWithAttributedString:(NSAttributedString *)attributedString {
- (NSMutableAttributedString *)image:(NSAttributedString *)attributedString {
    // 匹配 [表情]
    //: NSMutableAttributedString *attrM = [[NSMutableAttributedString alloc] initWithAttributedString:attributedString];
    NSMutableAttributedString *attrM = [[NSMutableAttributedString alloc] initWithAttributedString:attributedString];
    //: if (attrM.length > 0) {
    if (attrM.length > 0) {

        //: NSArray<NSTextCheckingResult *> *emoticonResults = [[NTESSessionListViewController regexEmoticon] matchesInString:attrM.string options:kNilOptions range:attrM.yy_rangeOfAll];
        NSArray<NSTextCheckingResult *> *emoticonResults = [[ExecutiveSessionViewController user] matchesInString:attrM.string options:kNilOptions range:attrM.yy_rangeOfAll];
        //: UIFont *fontSize = [UIFont systemFontOfSize:13];
        UIFont *fontSize = [UIFont systemFontOfSize:13];
        //: NSTextAlignment textAlignment = attrM.yy_alignment;
        NSTextAlignment textAlignment = attrM.yy_alignment;
        //: CGFloat lineSpacing = attrM.yy_lineSpacing;
        CGFloat lineSpacing = attrM.yy_lineSpacing;

        //: [emoticonResults enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(NSTextCheckingResult * _Nonnull emo, NSUInteger idx, BOOL * _Nonnull stop) {
        [emoticonResults enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(NSTextCheckingResult * _Nonnull emo, NSUInteger idx, BOOL * _Nonnull stop) {
            //: NSRange range = emo.range;
            NSRange range = emo.range;
            //: if (range.location == NSNotFound && range.length <= 1) return;
            if (range.location == NSNotFound && range.length <= 1) return;

            //: if ([attrM yy_attribute:YYTextHighlightAttributeName atIndex:range.location]) return;
            if ([attrM yy_attribute:YYTextHighlightAttributeName atIndex:range.location]) return;
            //: if ([attrM yy_attribute:YYTextAttachmentAttributeName atIndex:range.location]) return;
            if ([attrM yy_attribute:YYTextAttachmentAttributeName atIndex:range.location]) return;
            //: NSString *emoString = [attrM.string substringWithRange:range];
            NSString *emoString = [attrM.string substringWithRange:range];

            //: NIMInputEmoticon *emoticon = [[FFFInputEmoticonManager sharedManager] emoticonByTag:emoString];
            CityCenterWith *emoticon = [[DeviceManager history] viewText:emoString];

            //: UIImage *image = [UIImage nim_emoticonInKit:emoticon.filename];
            UIImage *image = [UIImage quickKit:emoticon.filename];

            //: NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
            NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
            //: attachment.image = image;
            attachment.image = image;
            //: CGFloat emojiHeight = fontSize.lineHeight;
            CGFloat emojiHeight = fontSize.lineHeight;
            //: attachment.bounds = CGRectMake(0, fontSize.descender, emojiHeight, emojiHeight);
            attachment.bounds = CGRectMake(0, fontSize.descender, emojiHeight, emojiHeight);

            //: NSMutableAttributedString *emoText = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
            NSMutableAttributedString *emoText = [[NSMutableAttributedString alloc] initWithString:YYTextAttachmentToken];
            //: [emoText appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
            [emoText appendAttributedString:[[NSAttributedString alloc] initWithString:@" "]];
            //: [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
            [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
            //: [emoText yy_setAttachment:attachment range:emoText.yy_rangeOfAll];
            [emoText yy_setAttachment:attachment range:emoText.yy_rangeOfAll];

            //: if (!image && emoticon.unicode){
            if (!image && emoticon.unicode){
                //: emoText = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
                emoText = [[NSMutableAttributedString alloc] initWithString:emoticon.unicode];
                //: [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
                [emoText yy_setAttribute:NSKernAttributeName value:@(-1)];
            }

            //: FFFTextHighlight *highlight = [[FFFTextHighlight alloc] init];
            MediaNameContentHighlight *highlight = [[MediaNameContentHighlight alloc] init];
            //: highlight.type = FFFTextHighlightTypeEmoji;
            highlight.type = FFFTextHighlightTypeEmoji;
            //: highlight.text = emoString;
            highlight.text = emoString;
            //: [emoText yy_setTextHighlight:highlight range:NSMakeRange(0, emoText.length)];
            [emoText yy_setTextHighlight:highlight range:NSMakeRange(0, emoText.length)];
            //: if (image || (!image && emoticon.unicode)) {
            if (image || (!image && emoticon.unicode)) {
                //: [attrM replaceCharactersInRange:range withAttributedString:emoText];
                [attrM replaceCharactersInRange:range withAttributedString:emoText];
            }
        //: }];
        }];
        //: attrM.yy_font = fontSize;
        attrM.yy_font = fontSize;
        //: attrM.yy_alignment = textAlignment;
        attrM.yy_alignment = textAlignment;
        //: attrM.yy_lineSpacing = lineSpacing;
        attrM.yy_lineSpacing = lineSpacing;
    }
    //: return attrM;
    return attrM;
}

//: - (void)checkNeedAtTip:(NIMRecentSession *)recent content:(NSMutableAttributedString *)content
- (void)eigenvalueOfAMatrixName:(NIMRecentSession *)recent max:(NSMutableAttributedString *)content
{
    //: if ([NTESSessionUtil recentSessionIsMark:recent type:NTESRecentSessionMarkTypeAt]) {
    if ([DeviceDate cell:recent name:NTESRecentSessionMarkTypeAt]) {
        //: NSAttributedString *atTip = [[NSAttributedString alloc] initWithString:@"[有人@你]".ntes_localized attributes:@{NSForegroundColorAttributeName:[UIColor redColor]}];
        NSAttributedString *atTip = [[NSAttributedString alloc] initWithString:[ManagerMakeData sharedInstance].m_factorMessage.untilNtes attributes:@{NSForegroundColorAttributeName:[UIColor redColor]}];
        //: [content insertAttributedString:atTip atIndex:0];
        [content insertAttributedString:atTip atIndex:0];
    }
}

//: - (void)checkOnlineState:(NIMRecentSession *)recent content:(NSMutableAttributedString *)content
- (void)voiceTo:(NIMRecentSession *)recent switchline:(NSMutableAttributedString *)content
{
    //: if (recent.session.sessionType == NIMSessionTypeP2P) {
    if (recent.session.sessionType == NIMSessionTypeP2P) {
//        NSString *state  = [DeviceDate onlineState:recent.session.sessionId detail:NO];
//        if (state.length) {
//            NSString *format = [NSString stringWithFormat:@"[%@] ",state];
//            NSAttributedString *atTip = [[NSAttributedString alloc] initWithString:format attributes:nil];
//            [content insertAttributedString:atTip atIndex:0];
//        }
    }
}

//: - (void)loadStickTopSessions
- (void)stateLabel
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [NIMSDK.sharedSDK.chatExtendManager loadStickTopSessionInfos:^(NSError * _Nullable error, NSDictionary<NIMSession *,NIMStickTopSessionInfo *> * _Nullable infos) {
    [NIMSDK.sharedSDK.chatExtendManager loadStickTopSessionInfos:^(NSError * _Nullable error, NSDictionary<NIMSession *,NIMStickTopSessionInfo *> * _Nullable infos) {
        //: __strong typeof(self) sself = wself;
        __strong typeof(self) sself = wself;
        //: if (!sself) return;
        if (!sself) return;
        //: sself.stickTopInfos = [NSMutableDictionary dictionaryWithDictionary:infos];
        sself.stickTopInfos = [NSMutableDictionary dictionaryWithDictionary:infos];
        //: [sself refresh];
        [sself successMore];
    //: }];
    }];
}


//: -(void)moreClickDelegate{
-(void)starlight{
    //: [self showDropDownMenu];
    [self search];
}



//: -(void)createGroupRequestWithTeamID:(NSString *)teamID teamName:(NSString *)teamName type:(NSString *)type{
-(void)hide:(NSString *)teamID day:(NSString *)teamName date:(NSString *)type{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"owner"] = currentUserId;
    dict[[ManagerMakeData sharedInstance].dreamTitleData] = currentUserId;
    //: dict[@"type"] = type;
    dict[[ManagerMakeData sharedInstance].app_centerUrl] = type;
    //: dict[@"tname"] = teamName;
    dict[[ManagerMakeData sharedInstance].notiClickData] = teamName;
    //: dict[@"tid"] = teamID;
    dict[[ManagerMakeData sharedInstance].k_nextNameFormat] = teamID;

}

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)presentIcon:(ContactSelectFinishBlock) block{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //使用内置的好友选择器
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    TitleConfig *config = [[TitleConfig alloc] init];
    //获取自己id
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [users addObject:currentUserId];
    [users addObject:currentUserId];
    //将自己的id过滤
    //: config.filterIds = users;
    config.filterIds = users;
    //需要多选
    //: config.needMutiSelected = YES;
    config.needMutiSelected = YES;
    //: config.showSelectHeaderview = YES;
    config.showSelectHeaderview = YES;
    //初始化联系人选择器
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc totalRelation];
}

//: - (void)quickChatpresentMemberSelector:(ContactSelectFinishBlock) block{
- (void)cuttingEdge:(ContactSelectFinishBlock) block{
    //: NSMutableArray *users = [[NSMutableArray alloc] init];
    NSMutableArray *users = [[NSMutableArray alloc] init];
    //使用内置的好友选择器
    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    TitleConfig *config = [[TitleConfig alloc] init];
    //获取自己id
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [users addObject:currentUserId];
    [users addObject:currentUserId];
    //将自己的id过滤
    //: config.filterIds = users;
    config.filterIds = users;
    //需要多选
    //: config.needMutiSelected = YES;
    config.needMutiSelected = YES;
    //: config.showSelectHeaderview = NO;
    config.showSelectHeaderview = NO;
    //初始化联系人选择器
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
    //回调处理
    //: vc.finshBlock = block;
    vc.finshBlock = block;
    //: [vc show];
    [vc totalRelation];
}

//: #pragma mark - 下拉菜单
#pragma mark - 下拉菜单

/** 初始化下拉菜单 */
//: - (void)setupDropDownMenu {
- (void)enable {
    //: NSArray *modelsArray = [self getMenuModelsArray];
    NSArray *modelsArray = [self my];


    //: self.dropdownMenu = [FFDropDownMenuView new];
    self.dropdownMenu = [FFDropDownMenuView new];

     //进行属性的赋值

     //若使用默认CGFloat值     请使用 FFDefaultFloat          、或者无需进行赋值
     //若使用默认CGSize值      请使用 FFDefaultSize           、或者无需进行赋值
     //若使用默认Cell值        请使用 FFDefaultCell           、或者无需进行赋值
     //若使用默认Color值       请使用 FFDefaultColor          、或者无需进行赋值
     //若使用默认ScaleType值   请使用 FFDefaultMenuScaleType  、或者无需进行赋值


     /** 下拉菜单模型数组 */
     //: self.dropdownMenu.menuModelsArray = modelsArray;
     self.dropdownMenu.menuModelsArray = modelsArray;
     /** cell的类名 */
     //: self.dropdownMenu.cellClassName = @"FFDropDownMenuCell";
     self.dropdownMenu.cellClassName = @"FFDropDownMenuCell";
     /** 菜单的宽度(若不设置，默认为 150) */
     //: self.dropdownMenu.menuWidth = 120;
     self.dropdownMenu.menuWidth = 120;
     /** 菜单的圆角半径(若不设置，默认为5) */
     //: self.dropdownMenu.menuCornerRadius = -10.0;
     self.dropdownMenu.menuCornerRadius = -10.0;
     /** 每一个选项的高度(若不设置，默认为40) */
     //: self.dropdownMenu.eachMenuItemHeight = 50;
     self.dropdownMenu.eachMenuItemHeight = 50;
     /** 菜单条离屏幕右边的间距(若不设置，默认为10) */
     //: self.dropdownMenu.menuRightMargin = 10;
     self.dropdownMenu.menuRightMargin = 10;
     /** 三角形颜色(若不设置，默认为白色) */
     //: self.dropdownMenu.triangleColor = [UIColor whiteColor];
     self.dropdownMenu.triangleColor = [UIColor whiteColor];
     /** 三角形相对于keyWindow的y值,也就是相对于屏幕顶部的y值(若不设置，默认为64) */
     //: self.dropdownMenu.triangleY = [UIDevice vg_statusBarHeight] +30;
     self.dropdownMenu.triangleY = [UIDevice statusOrLevel] +30;
     /** 三角形距离屏幕右边的间距(若不设置，默认为20) */
     //: self.dropdownMenu.triangleRightMargin = 20;
     self.dropdownMenu.triangleRightMargin = 20;
     /** 三角形的size  size.width:代表三角形底部边长，size.Height:代表三角形的高度(若不设置，默认为CGSizeMake(15, 10)) */
     //: self.dropdownMenu.triangleSize = CGSizeMake(15, 10);
     self.dropdownMenu.triangleSize = CGSizeMake(15, 10);
     /** 背景颜色开始时的透明度(还没展示menu的透明度)(若不设置，默认为0.02) */
     //: self.dropdownMenu.bgColorbeginAlpha = 0;
     self.dropdownMenu.bgColorbeginAlpha = 0;
     /** 背景颜色结束的的透明度(menu完全展示的透明度)(若不设置，默认为0.2) */
     //: self.dropdownMenu.bgColorEndAlpha = 0.4;
     self.dropdownMenu.bgColorEndAlpha = 0.4;
     /** 动画效果时间(若不设置，默认为0.2) */
     //: self.dropdownMenu.animateDuration = -10.0;
     self.dropdownMenu.animateDuration = -10.0;
     /** 菜单的伸缩类型 */
     //: self.dropdownMenu.menuAnimateType = FFDropDownMenuViewAnimateType_ScaleBasedTopRight;
     self.dropdownMenu.menuAnimateType = FFDropDownMenuViewAnimateType_ScaleBasedTopRight;

    //: self.dropdownMenu.cellClassName = @"FFDropDownMenuCustomCell";
    self.dropdownMenu.cellClassName = @"ContentView";

     //所有属性赋值完 一定要调用 setup
     //: [self.dropdownMenu setup];
     [self.dropdownMenu setup];

}



/** 获取菜单模型数组 */
//: - (NSArray *)getMenuModelsArray {
- (NSArray *)my {
    //菜单模型0
    //: NSString *add_friend = [FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
    NSString *add_friend = [SendName streetSmart:[ManagerMakeData sharedInstance].dream_toData];
    //: FFDropDownMenuModel *menuModel0 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:add_friend menuItemIconName:@"ic_add_fiend" menuBlock:^{
    FFDropDownMenuModel *menuModel0 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:add_friend menuItemIconName:[ManagerMakeData sharedInstance].dream_managerId menuBlock:^{
        //: NTESContactAddFriendViewController *vc = [[NTESContactAddFriendViewController alloc] initWithNibName:nil bundle:nil];
        BubbleViewController *vc = [[BubbleViewController alloc] initWithNibName:nil bundle:nil];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: }];
    }];

    //: NSString *activity = [FFFLanguageManager getTextWithKey:@"activity_create_group_name_create_group"];
    NSString *activity = [SendName streetSmart:[ManagerMakeData sharedInstance].k_controlRecordListStr];

    //菜单模型1
    //: FFDropDownMenuModel *menuModel1 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:activity menuItemIconName:@"ic_create_chat" menuBlock:^{
    FFDropDownMenuModel *menuModel1 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:activity menuItemIconName:[ManagerMakeData sharedInstance].showHandleUrl menuBlock:^{
        //: if (_creatTeam.integerValue != 0) {
        if (_creatTeam.integerValue != 0) {
            //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"please_contact_your_administrator"]];
            [SVProgressHUD stormCenter:[SendName streetSmart:[ManagerMakeData sharedInstance].app_dismissListData]];
        //: }else{
        }else{
            //: [self creatTeamGroup];
            [self objectLength];//创建群组
        }
    //: }];
    }];

    //菜单模型1
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: FFDropDownMenuModel *menuModel3 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:[FFFLanguageManager getTextWithKey:@"fragment_contact_new_scan"] menuItemIconName:@"ic_scan" menuBlock:^{
    FFDropDownMenuModel *menuModel3 = [FFDropDownMenuModel ff_DropDownMenuModelWithMenuItemTitle:[SendName streetSmart:[ManagerMakeData sharedInstance].noti_nextTitle] menuItemIconName:[ManagerMakeData sharedInstance].main_controlUrl menuBlock:^{
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: [self requestAuthorizationForVideo];
        [self easyLay];
    //: }];
    }];

    //: NSArray *menuModelArr = @[menuModel0, menuModel1,menuModel3];
    NSArray *menuModelArr = @[menuModel0, menuModel1,menuModel3];
    //: return menuModelArr;
    return menuModelArr;
}


/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)easyLay {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
                        AppViewController *vc = [[AppViewController alloc] init];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
            AppViewController *vc = [[AppViewController alloc] init];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"] message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[SendName streetSmart:[ManagerMakeData sharedInstance].dreamInfoData] message:[SendName streetSmart:[ManagerMakeData sharedInstance].notiBarMinUrl] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[ManagerMakeData sharedInstance].dreamFileRedPath] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[SendName streetSmart:[ManagerMakeData sharedInstance].m_afterText] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
        //: [self presentViewController:alertControl animated:YES completion:nil];
        [self presentViewController:alertControl animated:YES completion:nil];
    }
}


//: -(void)creatTeamGroup{
-(void)objectLength{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self presentIcon:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

//        [SVProgressHUD show];
        //: [self.loadingView animationShow];
        [self.loadingView select];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self background:avater keyUp:^(NSString *urlString) {

            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            //: NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            //: option.name = name;
            option.name = name;
            //: option.avatarUrl = urlString ? : @"";
            option.avatarUrl = urlString ? : @"";
            //: option.type = NIMTeamTypeAdvanced;
            option.type = NIMTeamTypeAdvanced;
            //: option.joinMode = NIMTeamJoinModeNoAuth;
            option.joinMode = NIMTeamJoinModeNoAuth;
            //: option.postscript = [FFFLanguageManager getTextWithKey:@"invite_you_group"];
            option.postscript = [SendName streetSmart:[ManagerMakeData sharedInstance].userMemberId];
//            [SVProgressHUD show];


            //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView tingShould];
                //: if (!error) {
                if (!error) {
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                    TopViewController *vc = [[TopViewController alloc] initWithMedia:session];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                    [self hide:teamId day:option.name date:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self clear:option.name playRed:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[SendName streetSmart:[ManagerMakeData sharedInstance].m_titleMessage] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];




        //: }];
        }];

    //: }];
    }];

}

//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)background:(UIImage *)image keyUp:(void(^)(NSString *urlString ))complete {

    //: if (!image) {
    if (!image) {
        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
        //: return;
        return;
    }

    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(375, 375)];
    UIImage *imageForAvatarUpload = [image view:CGSizeMake(375, 375)];
    //: NSString *fileName = [FFFKitFileLocationHelper genFilenameWithExt:@"jpg"];
    NSString *fileName = [LocationHelper post:[ManagerMakeData sharedInstance].appRedListName];
    //: NSString *filePath = [[FFFKitFileLocationHelper getAppDocumentPath] stringByAppendingPathComponent:fileName];
    NSString *filePath = [[LocationHelper showOf] stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.3);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 0.3);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
        [[NIMSDK sharedSDK].resourceManager upload:filePath progress:^(float progress) {
            //: NSLog(@"%.2f",progress);
        //: } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
        } completion:^(NSString * _Nullable urlString, NSError * _Nullable error) {
            //: if (!error && wself) {
            if (!error && wself) {


            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
                [wself.view makeToast:[SendName streetSmart:[ManagerMakeData sharedInstance].app_shouldMessage]
                             //: duration:2
                             duration:2
                             //: position:CSToastPositionCenter];
                             position:CSToastPositionCenter];
            }

            //: !complete ? :complete(urlString);
            !complete ? :complete(urlString);
        //: }];
        }];
    //: }else{
    }else{
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"user_info_avtivity_upload_avatar_failed"]
        [self.view makeToast:[SendName streetSmart:[ManagerMakeData sharedInstance].app_shouldMessage]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];

        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
    }

}

//同步数据
//: -(void)newGroupSyncRequest:(NSString *)groupName teamID:(NSString *)teamId{
-(void)clear:(NSString *)groupName playRed:(NSString *)teamId{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"name"] = groupName;
    dict[[ManagerMakeData sharedInstance].kTextIdent] = groupName;
    //: dict[@"id"] = teamId;
    dict[@"id"] = teamId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/create"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[ManagerMakeData sharedInstance].showMyStr] read:dict indicator:NO spaceOf:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)handlerQuickChat
- (void)textChat
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self quickChatpresentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self cuttingEdge:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;
        //: if(uids.count>1){
        if(uids.count>1){
            //: NSString *groupName = @"";
            NSString *groupName = @"";
            //: NSMutableArray *nameArray = [NSMutableArray array];
            NSMutableArray *nameArray = [NSMutableArray array];
            //: for (NSString *userId in uids) {
            for (NSString *userId in uids) {
                //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:userId];
                //: [nameArray addObject:user.userInfo.nickName];
                [nameArray addObject:user.userInfo.nickName];
            }

            //: NSArray *firstFourNames = nil;
            NSArray *firstFourNames = nil;
            // 确保数组至少有 4 个元素，避免越界
            //: if (nameArray.count >= 4) {
            if (nameArray.count >= 4) {
                //: firstFourNames = [nameArray subarrayWithRange:NSMakeRange(0, 4)];
                firstFourNames = [nameArray subarrayWithRange:NSMakeRange(0, 4)];
            //: } else {
            } else {
                //: firstFourNames = nameArray; 
                firstFourNames = nameArray; // 如果不足 4 个，就取全部
            }

            // 拼接成字符串，用逗号分隔
            //: groupName = [firstFourNames componentsJoinedByString:@", "];
            groupName = [firstFourNames componentsJoinedByString:@", "];

            //: NSLog(@"前 4 个名字: %@", groupName);

            //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            NSArray *members = [@[currentUserId] arrayByAddingObjectsFromArray:uids];
            //: NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            NIMCreateTeamOption *option = [[NIMCreateTeamOption alloc] init];
            //: option.name = groupName;
            option.name = groupName;
            //: option.avatarUrl = @"";
            option.avatarUrl = @"";
            //: option.type = NIMTeamTypeAdvanced;
            option.type = NIMTeamTypeAdvanced;
            //: option.joinMode = NIMTeamJoinModeNoAuth;
            option.joinMode = NIMTeamJoinModeNoAuth;
            //: option.postscript = [FFFLanguageManager getTextWithKey:@"invite_you_group"];
            option.postscript = [SendName streetSmart:[ManagerMakeData sharedInstance].userMemberId];
//            [SVProgressHUD show];


            //: [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
            [[NIMSDK sharedSDK].teamManager createTeam:option users:members completion:^(NSError *error, NSString *teamId, NSArray<NSString *> * _Nullable failedUserIds) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView tingShould];
                //: if (!error) {
                if (!error) {
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                    TopViewController *vc = [[TopViewController alloc] initWithMedia:session];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                    //: [self createGroupRequestWithTeamID:teamId teamName:option.name type:@"1"];
                    [self hide:teamId day:option.name date:@"1"];
                    //: [self newGroupSyncRequest:option.name teamID:teamId];
                    [self clear:option.name playRed:teamId];
                //: }else{
                }else{
                    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[SendName streetSmart:[ManagerMakeData sharedInstance].m_titleMessage] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];

        //: }else if(uids.count == 1){
        }else if(uids.count == 1){

            //: NIMSession *session = [NIMSession session:uids.firstObject type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:uids.firstObject type:NIMSessionTypeP2P];
            //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
            TopViewController *vc = [[TopViewController alloc] initWithMedia:session];
            //: [self.navigationController pushViewController:vc animated:YES];
            [self.navigationController pushViewController:vc animated:YES];
        }

        }
    //: ];
    ];
}

/** 显示下拉菜单 */
//: - (void)showDropDownMenu {
- (void)search {
    //: [self.dropdownMenu showMenu];
    [self.dropdownMenu showMenu];
}

//: - (NTESNotificationView *)noticeView
- (NotificationView *)noticeView
{
    //: if(!_noticeView){
    if(!_noticeView){
        //: _noticeView = [[NTESNotificationView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight]+140, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-140)];
        _noticeView = [[NotificationView alloc]initWithFrame:CGRectMake(0, [UIDevice statusOrLevel]+140, [[UIScreen mainScreen] bounds].size.width, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice statusOrLevel]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-140)];
        //: _noticeView.hidden = YES;
        _noticeView.hidden = YES;
    }
    //: return _noticeView;
    return _noticeView;
}

//: - (ZMONCustomLoadingView *)loadingView
- (MoreView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _loadingView = [[MoreView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _loadingView.hidden = YES;
        _loadingView.hidden = YES;
    }
    //: return _loadingView;
    return _loadingView;
}

//: - (ZMONPrivacyPolicyView *)policyView
- (ImageUltramontanismView *)policyView
{
    //: if(!_policyView){
    if(!_policyView){
        //: _policyView = [[ZMONPrivacyPolicyView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _policyView = [[ImageUltramontanismView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _policyView.hidden = YES;
    }
    //: return _policyView;
    return _policyView;
}
//: - (UIButton *)QuickChatBtn
- (UIButton *)QuickChatBtn
{
    //: if (!_QuickChatBtn) {
    if (!_QuickChatBtn) {
        //: _QuickChatBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _QuickChatBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _QuickChatBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-137, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-(49.0f)-50, 127, 40);
        _QuickChatBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-137, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-(49.0f)-50, 127, 40);
        //: [_QuickChatBtn setImage:[UIImage imageNamed:@"quick_icon"] forState:UIControlStateNormal];
        [_QuickChatBtn setImage:[UIImage imageNamed:[ManagerMakeData sharedInstance].appVoicePathRedText] forState:UIControlStateNormal];
        //: [_QuickChatBtn addTarget:self action:@selector(handlerQuickChat) forControlEvents:UIControlEventTouchUpInside];
        [_QuickChatBtn addTarget:self action:@selector(textChat) forControlEvents:UIControlEventTouchUpInside];
        //: _QuickChatBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _QuickChatBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_QuickChatBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_QuickChatBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_QuickChatBtn setTitle:[FFFLanguageManager getTextWithKey:@"quickchat"] forState:UIControlStateNormal];
        [_QuickChatBtn setTitle:[SendName streetSmart:[ManagerMakeData sharedInstance].k_redBottomTitle] forState:UIControlStateNormal];
        //: [_QuickChatBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleLeft) imageTitleSpace:10];
        [_QuickChatBtn reloadSession:(MKButtonEdgeInsetsStyleLeft) text:10];
        //: _QuickChatBtn.layer.backgroundColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:1].CGColor;
        _QuickChatBtn.layer.backgroundColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:1].CGColor;
        //: _QuickChatBtn.layer.cornerRadius = 20;
        _QuickChatBtn.layer.cornerRadius = 20;
        //: _QuickChatBtn.layer.shadowColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:0.3000].CGColor;
        _QuickChatBtn.layer.shadowColor = [UIColor colorWithRed:179/255.0 green:145/255.0 blue:255/255.0 alpha:0.3000].CGColor;
        //: _QuickChatBtn.layer.shadowOffset = CGSizeMake(0,4);
        _QuickChatBtn.layer.shadowOffset = CGSizeMake(0,4);
        //: _QuickChatBtn.layer.shadowOpacity = 1;
        _QuickChatBtn.layer.shadowOpacity = 1;
        //: _QuickChatBtn.layer.shadowRadius = 12;
        _QuickChatBtn.layer.shadowRadius = 12;
    }
    //: return _QuickChatBtn;
    return _QuickChatBtn;
}

//: @end
@end