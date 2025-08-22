
#import <Foundation/Foundation.h>

@interface TeamData : NSObject

@end

@implementation TeamData

+ (NSData *)TeamDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)TeamDataToCache:(Byte *)data {
    int sum = data[0];
    Byte rangeBottom = data[1];
    int naturalEvent = data[2];
    for (int i = naturalEvent; i < naturalEvent + sum; i++) {
        int value = data[i] - rangeBottom;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[naturalEvent + sum] = 0;
    return data + naturalEvent;
}

+ (NSString *)StringFromTeamData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TeamDataToCache:data]];
}

//: message_remark_name
+ (NSString *)m_recordImageText {
    /* static */ NSString *m_recordImageText = nil;
    if (!m_recordImageText) {
		NSArray<NSString *> *origin = @[@"19", @"84", @"6", @"21", @"1", @"179", @"193", @"185", @"199", @"199", @"181", @"187", @"185", @"179", @"198", @"185", @"193", @"181", @"198", @"191", @"179", @"194", @"181", @"193", @"185", @"64"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_recordImageText = [self StringFromTeamData:value];
    }
    return m_recordImageText;
}

//: please_contact_your_administrator
+ (NSString *)app_modeData {
    /* static */ NSString *app_modeData = nil;
    if (!app_modeData) {
		NSArray<NSString *> *origin = @[@"33", @"42", @"3", @"154", @"150", @"143", @"139", @"157", @"143", @"137", @"141", @"153", @"152", @"158", @"139", @"141", @"158", @"137", @"163", @"153", @"159", @"156", @"137", @"139", @"142", @"151", @"147", @"152", @"147", @"157", @"158", @"156", @"139", @"158", @"153", @"156", @"102"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_modeData = [self StringFromTeamData:value];
    }
    return app_modeData;
}

//: #8A8E98
+ (NSString *)user_minPath {
    /* static */ NSString *user_minPath = nil;
    if (!user_minPath) {
		NSArray<NSString *> *origin = @[@"7", @"84", @"5", @"7", @"192", @"119", @"140", @"149", @"140", @"153", @"141", @"140", @"173"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_minPath = [self StringFromTeamData:value];
    }
    return user_minPath;
}

//: /user/detail
+ (NSString *)showTitleModePath {
    /* static */ NSString *showTitleModePath = nil;
    if (!showTitleModePath) {
		NSArray<NSString *> *origin = @[@"12", @"44", @"8", @"216", @"153", @"82", @"156", @"72", @"91", @"161", @"159", @"145", @"158", @"91", @"144", @"145", @"160", @"141", @"149", @"152", @"133"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showTitleModePath = [self StringFromTeamData:value];
    }
    return showTitleModePath;
}

//: /group/getgroups
+ (NSString *)mLetterName {
    /* static */ NSString *mLetterName = nil;
    if (!mLetterName) {
		NSArray<NSString *> *origin = @[@"16", @"67", @"12", @"54", @"147", @"223", @"120", @"195", @"240", @"212", @"63", @"181", @"114", @"170", @"181", @"178", @"184", @"179", @"114", @"170", @"168", @"183", @"170", @"181", @"178", @"184", @"179", @"182", @"17"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mLetterName = [self StringFromTeamData:value];
    }
    return mLetterName;
}

//: register_avtivity_account
+ (NSString *)appAfterMsg {
    /* static */ NSString *appAfterMsg = nil;
    if (!appAfterMsg) {
		NSArray<NSString *> *origin = @[@"25", @"73", @"3", @"187", @"174", @"176", @"178", @"188", @"189", @"174", @"187", @"168", @"170", @"191", @"189", @"178", @"191", @"178", @"189", @"194", @"168", @"170", @"172", @"172", @"184", @"190", @"183", @"189", @"58"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appAfterMsg = [self StringFromTeamData:value];
    }
    return appAfterMsg;
}

//: #ECECEC
+ (NSString *)notiViewMyIdent {
    /* static */ NSString *notiViewMyIdent = nil;
    if (!notiViewMyIdent) {
		NSArray<NSString *> *origin = @[@"7", @"37", @"9", @"107", @"237", @"180", @"176", @"250", @"188", @"72", @"106", @"104", @"106", @"104", @"106", @"104", @"165"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiViewMyIdent = [self StringFromTeamData:value];
    }
    return notiViewMyIdent;
}

//: isfrend
+ (NSString *)dream_sourceName {
    /* static */ NSString *dream_sourceName = nil;
    if (!dream_sourceName) {
		NSArray<NSString *> *origin = @[@"7", @"20", @"13", @"176", @"58", @"181", @"80", @"225", @"220", @"231", @"193", @"147", @"142", @"125", @"135", @"122", @"134", @"121", @"130", @"120", @"236"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_sourceName = [self StringFromTeamData:value];
    }
    return dream_sourceName;
}

//: #EEEEEE
+ (NSString *)mSourceIdent {
    /* static */ NSString *mSourceIdent = nil;
    if (!mSourceIdent) {
		NSArray<NSString *> *origin = @[@"7", @"47", @"5", @"237", @"111", @"82", @"116", @"116", @"116", @"116", @"116", @"116", @"13"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mSourceIdent = [self StringFromTeamData:value];
    }
    return mSourceIdent;
}

//: /group/addgroupuser
+ (NSString *)dreamMakeIdent {
    /* static */ NSString *dreamMakeIdent = nil;
    if (!dreamMakeIdent) {
		NSArray<NSString *> *origin = @[@"19", @"33", @"10", @"124", @"75", @"227", @"230", @"115", @"166", @"21", @"80", @"136", @"147", @"144", @"150", @"145", @"80", @"130", @"133", @"133", @"136", @"147", @"144", @"150", @"145", @"150", @"148", @"134", @"147", @"182"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamMakeIdent = [self StringFromTeamData:value];
    }
    return dreamMakeIdent;
}

//: func_viewholder_black
+ (NSString *)kObjectId {
    /* static */ NSString *kObjectId = nil;
    if (!kObjectId) {
		NSArray<NSString *> *origin = @[@"21", @"64", @"4", @"15", @"166", @"181", @"174", @"163", @"159", @"182", @"169", @"165", @"183", @"168", @"175", @"172", @"164", @"165", @"178", @"159", @"162", @"172", @"161", @"163", @"171", @"94"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kObjectId = [self StringFromTeamData:value];
    }
    return kObjectId;
}

//: invite_you_group
+ (NSString *)kMessageText {
    /* static */ NSString *kMessageText = nil;
    if (!kMessageText) {
		NSArray<NSString *> *origin = @[@"16", @"47", @"4", @"242", @"152", @"157", @"165", @"152", @"163", @"148", @"142", @"168", @"158", @"164", @"142", @"150", @"161", @"158", @"164", @"159", @"192"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kMessageText = [self StringFromTeamData:value];
    }
    return kMessageText;
}

//: group_id
+ (NSString *)mQuantityInputStr {
    /* static */ NSString *mQuantityInputStr = nil;
    if (!mQuantityInputStr) {
		NSArray<NSString *> *origin = @[@"8", @"62", @"11", @"185", @"139", @"240", @"254", @"55", @"33", @"168", @"150", @"165", @"176", @"173", @"179", @"174", @"157", @"167", @"162", @"34"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mQuantityInputStr = [self StringFromTeamData:value];
    }
    return mQuantityInputStr;
}

//: message_info_activity_msg_notice
+ (NSString *)m_recentKey {
    /* static */ NSString *m_recentKey = nil;
    if (!m_recentKey) {
		NSArray<NSString *> *origin = @[@"32", @"90", @"7", @"196", @"68", @"65", @"5", @"199", @"191", @"205", @"205", @"187", @"193", @"191", @"185", @"195", @"200", @"192", @"201", @"185", @"187", @"189", @"206", @"195", @"208", @"195", @"206", @"211", @"185", @"199", @"205", @"193", @"185", @"200", @"201", @"206", @"195", @"189", @"191", @"7"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_recentKey = [self StringFromTeamData:value];
    }
    return m_recentKey;
}

//: item_data
+ (NSString *)show_textDismissInputStr {
    /* static */ NSString *show_textDismissInputStr = nil;
    if (!show_textDismissInputStr) {
		NSArray<NSString *> *origin = @[@"9", @"92", @"10", @"225", @"231", @"177", @"238", @"196", @"86", @"131", @"197", @"208", @"193", @"201", @"187", @"192", @"189", @"208", @"189", @"1"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_textDismissInputStr = [self StringFromTeamData:value];
    }
    return show_textDismissInputStr;
}

//: black_list_activity_remove_black_failed
+ (NSString *)noti_pinMsg {
    /* static */ NSString *noti_pinMsg = nil;
    if (!noti_pinMsg) {
		NSArray<NSString *> *origin = @[@"39", @"74", @"6", @"27", @"234", @"252", @"172", @"182", @"171", @"173", @"181", @"169", @"182", @"179", @"189", @"190", @"169", @"171", @"173", @"190", @"179", @"192", @"179", @"190", @"195", @"169", @"188", @"175", @"183", @"185", @"192", @"175", @"169", @"172", @"182", @"171", @"173", @"181", @"169", @"176", @"171", @"179", @"182", @"175", @"174", @"103"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_pinMsg = [self StringFromTeamData:value];
    }
    return noti_pinMsg;
}

//: contact
+ (NSString *)showAfterFormat {
    /* static */ NSString *showAfterFormat = nil;
    if (!showAfterFormat) {
		NSArray<NSString *> *origin = @[@"7", @"71", @"5", @"130", @"227", @"170", @"182", @"181", @"187", @"168", @"170", @"187", @"84"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showAfterFormat = [self StringFromTeamData:value];
    }
    return showAfterFormat;
}

//: user_id
+ (NSString *)show_centerCheckPath {
    /* static */ NSString *show_centerCheckPath = nil;
    if (!show_centerCheckPath) {
		NSArray<NSString *> *origin = @[@"7", @"28", @"5", @"197", @"171", @"145", @"143", @"129", @"142", @"123", @"133", @"128", @"111"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_centerCheckPath = [self StringFromTeamData:value];
    }
    return show_centerCheckPath;
}

//: black_list_activity_add_black_failed
+ (NSString *)mainNextNameUrl {
    /* static */ NSString *mainNextNameUrl = nil;
    if (!mainNextNameUrl) {
		NSArray<NSString *> *origin = @[@"36", @"72", @"13", @"226", @"118", @"93", @"190", @"54", @"233", @"186", @"118", @"187", @"89", @"170", @"180", @"169", @"171", @"179", @"167", @"180", @"177", @"187", @"188", @"167", @"169", @"171", @"188", @"177", @"190", @"177", @"188", @"193", @"167", @"169", @"172", @"172", @"167", @"170", @"180", @"169", @"171", @"179", @"167", @"174", @"169", @"177", @"180", @"173", @"172", @"129"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainNextNameUrl = [self StringFromTeamData:value];
    }
    return mainNextNameUrl;
}

//: add_friend_request_fail
+ (NSString *)mClickName {
    /* static */ NSString *mClickName = nil;
    if (!mClickName) {
		NSArray<NSString *> *origin = @[@"23", @"82", @"4", @"183", @"179", @"182", @"182", @"177", @"184", @"196", @"187", @"183", @"192", @"182", @"177", @"196", @"183", @"195", @"199", @"183", @"197", @"198", @"177", @"184", @"179", @"187", @"190", @"45"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mClickName = [self StringFromTeamData:value];
    }
    return mClickName;
}

//: request_successful
+ (NSString *)kNameValue {
    /* static */ NSString *kNameValue = nil;
    if (!kNameValue) {
		NSArray<NSString *> *origin = @[@"18", @"31", @"3", @"145", @"132", @"144", @"148", @"132", @"146", @"147", @"126", @"146", @"148", @"130", @"130", @"132", @"146", @"146", @"133", @"148", @"139", @"54"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameValue = [self StringFromTeamData:value];
    }
    return kNameValue;
}

//: /other/feedback
+ (NSString *)mainClickTitle {
    /* static */ NSString *mainClickTitle = nil;
    if (!mainClickTitle) {
		NSArray<NSString *> *origin = @[@"15", @"28", @"7", @"133", @"17", @"49", @"29", @"75", @"139", @"144", @"132", @"129", @"142", @"75", @"130", @"129", @"129", @"128", @"126", @"125", @"127", @"135", @"226"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainClickTitle = [self StringFromTeamData:value];
    }
    return mainClickTitle;
}

//: ic_card_notice
+ (NSString *)appImageTitleStr {
    /* static */ NSString *appImageTitleStr = nil;
    if (!appImageTitleStr) {
		NSArray<NSString *> *origin = @[@"14", @"57", @"6", @"75", @"46", @"25", @"162", @"156", @"152", @"156", @"154", @"171", @"157", @"152", @"167", @"168", @"173", @"162", @"156", @"158", @"166"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appImageTitleStr = [self StringFromTeamData:value];
    }
    return appImageTitleStr;
}

//: ic_card_edit
+ (NSString *)main_selectKey {
    /* static */ NSString *main_selectKey = nil;
    if (!main_selectKey) {
		NSArray<NSString *> *origin = @[@"12", @"21", @"10", @"36", @"22", @"240", @"188", @"54", @"19", @"136", @"126", @"120", @"116", @"120", @"118", @"135", @"121", @"116", @"122", @"121", @"126", @"137", @"104"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_selectKey = [self StringFromTeamData:value];
    }
    return main_selectKey;
}

//: ic_sex_man
+ (NSString *)noti_childMsg {
    /* static */ NSString *noti_childMsg = nil;
    if (!noti_childMsg) {
		NSArray<NSString *> *origin = @[@"10", @"99", @"8", @"74", @"207", @"223", @"107", @"199", @"204", @"198", @"194", @"214", @"200", @"219", @"194", @"208", @"196", @"209", @"244"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_childMsg = [self StringFromTeamData:value];
    }
    return noti_childMsg;
}

//: gotoBlacklist
+ (NSString *)app_barIdent {
    /* static */ NSString *app_barIdent = nil;
    if (!app_barIdent) {
		NSArray<NSString *> *origin = @[@"13", @"67", @"5", @"72", @"246", @"170", @"178", @"183", @"178", @"133", @"175", @"164", @"166", @"174", @"175", @"172", @"182", @"183", @"99"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_barIdent = [self StringFromTeamData:value];
    }
    return app_barIdent;
}

//: code
+ (NSString *)notiRedMsg {
    /* static */ NSString *notiRedMsg = nil;
    if (!notiRedMsg) {
		NSArray<NSString *> *origin = @[@"4", @"3", @"11", @"230", @"147", @"221", @"103", @"192", @"84", @"16", @"223", @"102", @"114", @"103", @"104", @"87"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiRedMsg = [self StringFromTeamData:value];
    }
    return notiRedMsg;
}

//: avatar
+ (NSString *)appToolBarMessage {
    /* static */ NSString *appToolBarMessage = nil;
    if (!appToolBarMessage) {
		NSArray<NSString *> *origin = @[@"6", @"15", @"7", @"216", @"113", @"77", @"203", @"112", @"133", @"112", @"131", @"112", @"129", @"136"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appToolBarMessage = [self StringFromTeamData:value];
    }
    return appToolBarMessage;
}

//: his_qr
+ (NSString *)show_recordNameRedText {
    /* static */ NSString *show_recordNameRedText = nil;
    if (!show_recordNameRedText) {
		NSArray<NSString *> *origin = @[@"6", @"85", @"6", @"202", @"17", @"13", @"189", @"190", @"200", @"180", @"198", @"199", @"214"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_recordNameRedText = [self StringFromTeamData:value];
    }
    return show_recordNameRedText;
}

//: #02D8C9
+ (NSString *)user_recordValue {
    /* static */ NSString *user_recordValue = nil;
    if (!user_recordValue) {
		NSArray<NSString *> *origin = @[@"7", @"52", @"13", @"116", @"96", @"19", @"21", @"13", @"51", @"233", @"224", @"212", @"18", @"87", @"100", @"102", @"120", @"108", @"119", @"109", @"226"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_recordValue = [self StringFromTeamData:value];
    }
    return user_recordValue;
}

//: user_profile_avtivity_remove_friend
+ (NSString *)showPathStr {
    /* static */ NSString *showPathStr = nil;
    if (!showPathStr) {
		NSArray<NSString *> *origin = @[@"35", @"81", @"12", @"182", @"213", @"148", @"227", @"76", @"16", @"76", @"227", @"112", @"198", @"196", @"182", @"195", @"176", @"193", @"195", @"192", @"183", @"186", @"189", @"182", @"176", @"178", @"199", @"197", @"186", @"199", @"186", @"197", @"202", @"176", @"195", @"182", @"190", @"192", @"199", @"182", @"176", @"183", @"195", @"186", @"182", @"191", @"181", @"23"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showPathStr = [self StringFromTeamData:value];
    }
    return showPathStr;
}

//: #FDF4C9
+ (NSString *)user_nameFormat {
    /* static */ NSString *user_nameFormat = nil;
    if (!user_nameFormat) {
		NSArray<NSString *> *origin = @[@"7", @"70", @"3", @"105", @"140", @"138", @"140", @"122", @"137", @"127", @"192"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_nameFormat = [self StringFromTeamData:value];
    }
    return user_nameFormat;
}

//: ic_card_black
+ (NSString *)k_sourceStr {
    /* static */ NSString *k_sourceStr = nil;
    if (!k_sourceStr) {
		NSArray<NSString *> *origin = @[@"13", @"8", @"7", @"117", @"184", @"194", @"147", @"113", @"107", @"103", @"107", @"105", @"122", @"108", @"103", @"106", @"116", @"105", @"107", @"115", @"195"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_sourceStr = [self StringFromTeamData:value];
    }
    return k_sourceStr;
}

//: head_default
+ (NSString *)userLabelRangeStr {
    /* static */ NSString *userLabelRangeStr = nil;
    if (!userLabelRangeStr) {
		NSArray<NSString *> *origin = @[@"12", @"95", @"4", @"95", @"199", @"196", @"192", @"195", @"190", @"195", @"196", @"197", @"192", @"212", @"203", @"211", @"77"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userLabelRangeStr = [self StringFromTeamData:value];
    }
    return userLabelRangeStr;
}

//: friend_ids
+ (NSString *)dreamHandleTitle {
    /* static */ NSString *dreamHandleTitle = nil;
    if (!dreamHandleTitle) {
		NSArray<NSString *> *origin = @[@"10", @"40", @"6", @"208", @"133", @"181", @"142", @"154", @"145", @"141", @"150", @"140", @"135", @"145", @"140", @"155", @"70"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamHandleTitle = [self StringFromTeamData:value];
    }
    return dreamHandleTitle;
}

//: mobile
+ (NSString *)userNameKey {
    /* static */ NSString *userNameKey = nil;
    if (!userNameKey) {
		NSArray<NSString *> *origin = @[@"6", @"9", @"7", @"199", @"116", @"216", @"247", @"118", @"120", @"107", @"114", @"117", @"110", @"60"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userNameKey = [self StringFromTeamData:value];
    }
    return userNameKey;
}

//: 未设置
+ (NSString *)dreamAfterClickMessage {
    /* static */ NSString *dreamAfterClickMessage = nil;
    if (!dreamAfterClickMessage) {
		NSArray<NSString *> *origin = @[@"9", @"72", @"4", @"56", @"46", @"228", @"242", @"48", @"246", @"6", @"47", @"5", @"246", @"36"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamAfterClickMessage = [self StringFromTeamData:value];
    }
    return dreamAfterClickMessage;
}

//: data
+ (NSString *)noti_memberSuccessMsg {
    /* static */ NSString *noti_memberSuccessMsg = nil;
    if (!noti_memberSuccessMsg) {
		NSArray<NSString *> *origin = @[@"4", @"26", @"12", @"145", @"135", @"52", @"116", @"104", @"231", @"101", @"78", @"222", @"126", @"123", @"142", @"123", @"133"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_memberSuccessMsg = [self StringFromTeamData:value];
    }
    return noti_memberSuccessMsg;
}

//: black_list_activity_remove_black
+ (NSString *)userMinToolContent {
    /* static */ NSString *userMinToolContent = nil;
    if (!userMinToolContent) {
		NSArray<NSString *> *origin = @[@"32", @"56", @"3", @"154", @"164", @"153", @"155", @"163", @"151", @"164", @"161", @"171", @"172", @"151", @"153", @"155", @"172", @"161", @"174", @"161", @"172", @"177", @"151", @"170", @"157", @"165", @"167", @"174", @"157", @"151", @"154", @"164", @"153", @"155", @"163", @"221"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userMinToolContent = [self StringFromTeamData:value];
    }
    return userMinToolContent;
}

//: jpg
+ (NSString *)kMemberMsg {
    /* static */ NSString *kMemberMsg = nil;
    if (!kMemberMsg) {
		NSArray<NSString *> *origin = @[@"3", @"18", @"10", @"94", @"34", @"21", @"202", @"47", @"17", @"102", @"124", @"130", @"121", @"161"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kMemberMsg = [self StringFromTeamData:value];
    }
    return kMemberMsg;
}

//: team_create_helper_create_failed
+ (NSString *)dreamAfterMsg {
    /* static */ NSString *dreamAfterMsg = nil;
    if (!dreamAfterMsg) {
		NSArray<NSString *> *origin = @[@"32", @"79", @"8", @"234", @"18", @"92", @"67", @"4", @"195", @"180", @"176", @"188", @"174", @"178", @"193", @"180", @"176", @"195", @"180", @"174", @"183", @"180", @"187", @"191", @"180", @"193", @"174", @"178", @"193", @"180", @"176", @"195", @"180", @"174", @"181", @"176", @"184", @"187", @"180", @"179", @"154"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamAfterMsg = [self StringFromTeamData:value];
    }
    return dreamAfterMsg;
}

//: contact_tag_fragment_sure
+ (NSString *)k_withData {
    /* static */ NSString *k_withData = nil;
    if (!k_withData) {
		NSArray<NSString *> *origin = @[@"25", @"95", @"9", @"129", @"226", @"3", @"240", @"3", @"14", @"194", @"206", @"205", @"211", @"192", @"194", @"211", @"190", @"211", @"192", @"198", @"190", @"197", @"209", @"192", @"198", @"204", @"196", @"205", @"211", @"190", @"210", @"212", @"209", @"196", @"213"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_withData = [self StringFromTeamData:value];
    }
    return k_withData;
}

//: user_info_avtivity_upload_avatar_failed
+ (NSString *)notiShowValue {
    /* static */ NSString *notiShowValue = nil;
    if (!notiShowValue) {
		NSArray<NSString *> *origin = @[@"39", @"11", @"7", @"140", @"222", @"80", @"56", @"128", @"126", @"112", @"125", @"106", @"116", @"121", @"113", @"122", @"106", @"108", @"129", @"127", @"116", @"129", @"116", @"127", @"132", @"106", @"128", @"123", @"119", @"122", @"108", @"111", @"106", @"108", @"129", @"108", @"127", @"108", @"125", @"106", @"113", @"108", @"116", @"119", @"112", @"111", @"75"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiShowValue = [self StringFromTeamData:value];
    }
    return notiShowValue;
}

//: contact_tag_fragment_add_success
+ (NSString *)showShouldKey {
    /* static */ NSString *showShouldKey = nil;
    if (!showShouldKey) {
		NSArray<NSString *> *origin = @[@"32", @"9", @"5", @"186", @"115", @"108", @"120", @"119", @"125", @"106", @"108", @"125", @"104", @"125", @"106", @"112", @"104", @"111", @"123", @"106", @"112", @"118", @"110", @"119", @"125", @"104", @"106", @"109", @"109", @"104", @"124", @"126", @"108", @"108", @"110", @"124", @"124", @"227"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showShouldKey = [self StringFromTeamData:value];
    }
    return showShouldKey;
}

//: report_activity_title
+ (NSString *)noti_frameName {
    /* static */ NSString *noti_frameName = nil;
    if (!noti_frameName) {
		NSArray<NSString *> *origin = @[@"21", @"34", @"10", @"229", @"45", @"165", @"147", @"29", @"237", @"53", @"148", @"135", @"146", @"145", @"148", @"150", @"129", @"131", @"133", @"150", @"139", @"152", @"139", @"150", @"155", @"129", @"150", @"139", @"150", @"142", @"135", @"140"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_frameName = [self StringFromTeamData:value];
    }
    return noti_frameName;
}

//: friend_circle_adapter_delete
+ (NSString *)userSuccessShowPath {
    /* static */ NSString *userSuccessShowPath = nil;
    if (!userSuccessShowPath) {
		NSArray<NSString *> *origin = @[@"28", @"44", @"13", @"179", @"134", @"38", @"226", @"39", @"22", @"67", @"131", @"231", @"165", @"146", @"158", @"149", @"145", @"154", @"144", @"139", @"143", @"149", @"158", @"143", @"152", @"145", @"139", @"141", @"144", @"141", @"156", @"160", @"145", @"158", @"139", @"144", @"145", @"152", @"145", @"160", @"145", @"221"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userSuccessShowPath = [self StringFromTeamData:value];
    }
    return userSuccessShowPath;
}

//: contact_tag_fragment_cancel
+ (NSString *)showShouldIdent {
    /* static */ NSString *showShouldIdent = nil;
    if (!showShouldIdent) {
		NSArray<NSString *> *origin = @[@"27", @"27", @"6", @"91", @"97", @"40", @"126", @"138", @"137", @"143", @"124", @"126", @"143", @"122", @"143", @"124", @"130", @"122", @"129", @"141", @"124", @"130", @"136", @"128", @"137", @"143", @"122", @"126", @"124", @"137", @"126", @"128", @"135", @"10"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showShouldIdent = [self StringFromTeamData:value];
    }
    return showShouldIdent;
}

//: group_chat_avatar_activity_add_black_success
+ (NSString *)mDismissData {
    /* static */ NSString *mDismissData = nil;
    if (!mDismissData) {
		NSArray<NSString *> *origin = @[@"44", @"36", @"11", @"59", @"232", @"214", @"215", @"131", @"127", @"229", @"147", @"139", @"150", @"147", @"153", @"148", @"131", @"135", @"140", @"133", @"152", @"131", @"133", @"154", @"133", @"152", @"133", @"150", @"131", @"133", @"135", @"152", @"141", @"154", @"141", @"152", @"157", @"131", @"133", @"136", @"136", @"131", @"134", @"144", @"133", @"135", @"143", @"131", @"151", @"153", @"135", @"135", @"137", @"151", @"151", @"242"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mDismissData = [self StringFromTeamData:value];
    }
    return mDismissData;
}

//: #ffffff
+ (NSString *)m_viewMsg {
    /* static */ NSString *m_viewMsg = nil;
    if (!m_viewMsg) {
		NSArray<NSString *> *origin = @[@"7", @"99", @"7", @"12", @"252", @"46", @"97", @"134", @"201", @"201", @"201", @"201", @"201", @"201", @"204"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_viewMsg = [self StringFromTeamData:value];
    }
    return m_viewMsg;
}

//: personCard_bg
+ (NSString *)userOptionWithUrl {
    /* static */ NSString *userOptionWithUrl = nil;
    if (!userOptionWithUrl) {
		NSArray<NSString *> *origin = @[@"13", @"61", @"5", @"196", @"8", @"173", @"162", @"175", @"176", @"172", @"171", @"128", @"158", @"175", @"161", @"156", @"159", @"164", @"218"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userOptionWithUrl = [self StringFromTeamData:value];
    }
    return userOptionWithUrl;
}

//: add_friend_activity_add_friend
+ (NSString *)notiGreenTitleForValue {
    /* static */ NSString *notiGreenTitleForValue = nil;
    if (!notiGreenTitleForValue) {
		NSArray<NSString *> *origin = @[@"30", @"89", @"3", @"186", @"189", @"189", @"184", @"191", @"203", @"194", @"190", @"199", @"189", @"184", @"186", @"188", @"205", @"194", @"207", @"194", @"205", @"210", @"184", @"186", @"189", @"189", @"184", @"191", @"203", @"194", @"190", @"199", @"189", @"183"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiGreenTitleForValue = [self StringFromTeamData:value];
    }
    return notiGreenTitleForValue;
}

//: group_info_activity_op_failed
+ (NSString *)mainChildValue {
    /* static */ NSString *mainChildValue = nil;
    if (!mainChildValue) {
		NSArray<NSString *> *origin = @[@"29", @"70", @"11", @"92", @"206", @"104", @"223", @"185", @"102", @"3", @"213", @"173", @"184", @"181", @"187", @"182", @"165", @"175", @"180", @"172", @"181", @"165", @"167", @"169", @"186", @"175", @"188", @"175", @"186", @"191", @"165", @"181", @"182", @"165", @"172", @"167", @"175", @"178", @"171", @"170", @"206"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainChildValue = [self StringFromTeamData:value];
    }
    return mainChildValue;
}

//: ic_card_report
+ (NSString *)mainLabelPath {
    /* static */ NSString *mainLabelPath = nil;
    if (!mainLabelPath) {
		NSArray<NSString *> *origin = @[@"14", @"32", @"9", @"140", @"183", @"21", @"170", @"191", @"86", @"137", @"131", @"127", @"131", @"129", @"146", @"132", @"127", @"146", @"133", @"144", @"143", @"146", @"148", @"63"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainLabelPath = [self StringFromTeamData:value];
    }
    return mainLabelPath;
}

//: ic_sex_woman
+ (NSString *)main_enablePopId {
    /* static */ NSString *main_enablePopId = nil;
    if (!main_enablePopId) {
		NSArray<NSString *> *origin = @[@"12", @"23", @"3", @"128", @"122", @"118", @"138", @"124", @"143", @"118", @"142", @"134", @"132", @"120", @"133", @"234"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_enablePopId = [self StringFromTeamData:value];
    }
    return main_enablePopId;
}

//: name
+ (NSString *)kMakeValue {
    /* static */ NSString *kMakeValue = nil;
    if (!kMakeValue) {
		NSArray<NSString *> *origin = @[@"4", @"99", @"12", @"129", @"245", @"124", @"99", @"49", @"1", @"172", @"18", @"172", @"209", @"196", @"208", @"200", @"139"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kMakeValue = [self StringFromTeamData:value];
    }
    return kMakeValue;
}

//: account
+ (NSString *)app_makeOptionData {
    /* static */ NSString *app_makeOptionData = nil;
    if (!app_makeOptionData) {
		NSArray<NSString *> *origin = @[@"7", @"88", @"8", @"116", @"86", @"232", @"166", @"135", @"185", @"187", @"187", @"199", @"205", @"198", @"204", @"76"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_makeOptionData = [self StringFromTeamData:value];
    }
    return app_makeOptionData;
}

//: type
+ (NSString *)userEnableStr {
    /* static */ NSString *userEnableStr = nil;
    if (!userEnableStr) {
		NSArray<NSString *> *origin = @[@"4", @"15", @"10", @"60", @"147", @"6", @"196", @"185", @"203", @"171", @"131", @"136", @"127", @"116", @"234"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userEnableStr = [self StringFromTeamData:value];
    }
    return userEnableStr;
}

//: add_friend_add_fail
+ (NSString *)k_makeName {
    /* static */ NSString *k_makeName = nil;
    if (!k_makeName) {
		NSArray<NSString *> *origin = @[@"19", @"53", @"6", @"249", @"227", @"29", @"150", @"153", @"153", @"148", @"155", @"167", @"158", @"154", @"163", @"153", @"148", @"150", @"153", @"153", @"148", @"155", @"150", @"158", @"161", @"142"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_makeName = [self StringFromTeamData:value];
    }
    return k_makeName;
}

//: friend_delete_fail
+ (NSString *)kMakeId {
    /* static */ NSString *kMakeId = nil;
    if (!kMakeId) {
		NSArray<NSString *> *origin = @[@"18", @"82", @"8", @"67", @"124", @"5", @"56", @"98", @"184", @"196", @"187", @"183", @"192", @"182", @"177", @"182", @"183", @"190", @"183", @"198", @"183", @"177", @"184", @"179", @"187", @"190", @"67"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kMakeId = [self StringFromTeamData:value];
    }
    return kMakeId;
}

//: personcart_profile_bg
+ (NSString *)k_removeMsg {
    /* static */ NSString *k_removeMsg = nil;
    if (!k_removeMsg) {
		NSArray<NSString *> *origin = @[@"21", @"4", @"9", @"36", @"126", @"15", @"7", @"4", @"146", @"116", @"105", @"118", @"119", @"115", @"114", @"103", @"101", @"118", @"120", @"99", @"116", @"118", @"115", @"106", @"109", @"112", @"105", @"99", @"102", @"107", @"235"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_removeMsg = [self StringFromTeamData:value];
    }
    return k_removeMsg;
}

//: icon_me_arrow
+ (NSString *)mInputGreenFormat {
    /* static */ NSString *mInputGreenFormat = nil;
    if (!mInputGreenFormat) {
		NSArray<NSString *> *origin = @[@"13", @"7", @"12", @"239", @"55", @"202", @"91", @"29", @"36", @"197", @"250", @"143", @"112", @"106", @"118", @"117", @"102", @"116", @"108", @"102", @"104", @"121", @"121", @"118", @"126", @"73"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mInputGreenFormat = [self StringFromTeamData:value];
    }
    return mInputGreenFormat;
}

//: user_profile_avtivity_remove_friend_tip
+ (NSString *)m_sizeUrl {
    /* static */ NSString *m_sizeUrl = nil;
    if (!m_sizeUrl) {
		NSArray<NSString *> *origin = @[@"39", @"14", @"3", @"131", @"129", @"115", @"128", @"109", @"126", @"128", @"125", @"116", @"119", @"122", @"115", @"109", @"111", @"132", @"130", @"119", @"132", @"119", @"130", @"135", @"109", @"128", @"115", @"123", @"125", @"132", @"115", @"109", @"116", @"128", @"119", @"115", @"124", @"114", @"109", @"130", @"119", @"126", @"238"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_sizeUrl = [self StringFromTeamData:value];
    }
    return m_sizeUrl;
}

//: message_info_activity_message_info
+ (NSString *)mReadPath {
    /* static */ NSString *mReadPath = nil;
    if (!mReadPath) {
		NSArray<NSString *> *origin = @[@"34", @"71", @"7", @"191", @"199", @"215", @"202", @"180", @"172", @"186", @"186", @"168", @"174", @"172", @"166", @"176", @"181", @"173", @"182", @"166", @"168", @"170", @"187", @"176", @"189", @"176", @"187", @"192", @"166", @"180", @"172", @"186", @"186", @"168", @"174", @"172", @"166", @"176", @"181", @"173", @"182", @"134"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mReadPath = [self StringFromTeamData:value];
    }
    return mReadPath;
}

//: contact_tag_fragment_delete_success
+ (NSString *)m_recordContent {
    /* static */ NSString *m_recordContent = nil;
    if (!m_recordContent) {
		NSArray<NSString *> *origin = @[@"35", @"60", @"10", @"53", @"224", @"178", @"245", @"66", @"45", @"172", @"159", @"171", @"170", @"176", @"157", @"159", @"176", @"155", @"176", @"157", @"163", @"155", @"162", @"174", @"157", @"163", @"169", @"161", @"170", @"176", @"155", @"160", @"161", @"168", @"161", @"176", @"161", @"155", @"175", @"177", @"159", @"159", @"161", @"175", @"175", @"139"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_recordContent = [self StringFromTeamData:value];
    }
    return m_recordContent;
}

//: canAddFriend
+ (NSString *)userRedText {
    /* static */ NSString *userRedText = nil;
    if (!userRedText) {
		NSArray<NSString *> *origin = @[@"12", @"77", @"11", @"132", @"38", @"236", @"218", @"61", @"129", @"110", @"30", @"176", @"174", @"187", @"142", @"177", @"177", @"147", @"191", @"182", @"178", @"187", @"177", @"148"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userRedText = [self StringFromTeamData:value];
    }
    return userRedText;
}

//: #2C3042
+ (NSString *)userSumValue {
    /* static */ NSString *userSumValue = nil;
    if (!userSumValue) {
		NSArray<NSString *> *origin = @[@"7", @"82", @"13", @"50", @"150", @"82", @"75", @"53", @"105", @"249", @"235", @"219", @"180", @"117", @"132", @"149", @"133", @"130", @"134", @"132", @"240"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userSumValue = [self StringFromTeamData:value];
    }
    return userSumValue;
}

//: Group_chat
+ (NSString *)showGreenMsg {
    /* static */ NSString *showGreenMsg = nil;
    if (!showGreenMsg) {
		NSArray<NSString *> *origin = @[@"10", @"35", @"6", @"202", @"111", @"81", @"106", @"149", @"146", @"152", @"147", @"130", @"134", @"139", @"132", @"151", @"27"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showGreenMsg = [self StringFromTeamData:value];
    }
    return showGreenMsg;
}

//: back_arrow_bl
+ (NSString *)noti_viewMsg {
    /* static */ NSString *noti_viewMsg = nil;
    if (!noti_viewMsg) {
		NSArray<NSString *> *origin = @[@"13", @"63", @"4", @"236", @"161", @"160", @"162", @"170", @"158", @"160", @"177", @"177", @"174", @"182", @"158", @"161", @"171", @"214"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_viewMsg = [self StringFromTeamData:value];
    }
    return noti_viewMsg;
}

//: #F6F7FA
+ (NSString *)mainHandleMsg {
    /* static */ NSString *mainHandleMsg = nil;
    if (!mainHandleMsg) {
		NSArray<NSString *> *origin = @[@"7", @"79", @"8", @"91", @"21", @"91", @"229", @"140", @"114", @"149", @"133", @"149", @"134", @"149", @"144", @"117"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainHandleMsg = [self StringFromTeamData:value];
    }
    return mainHandleMsg;
}

//: #FF483D
+ (NSString *)main_teamPath {
    /* static */ NSString *main_teamPath = nil;
    if (!main_teamPath) {
		NSArray<NSString *> *origin = @[@"7", @"28", @"5", @"27", @"122", @"63", @"98", @"98", @"80", @"84", @"79", @"96", @"87"];
		NSData *data = [TeamData TeamDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_teamPath = [self StringFromTeamData:value];
    }
    return main_teamPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESPersonCardViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESPersonalCardViewController.h"
#import "SharedViewController.h"
//: #import "FFFCommonTableDelegate.h"
#import "MessageDelegate.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESColorButtonCell.h"
#import "LengthNameView.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NTESSessionViewController.h"
#import "TopViewController.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Enable.h"
//: #import "NTESUserUtil.h"
#import "InformationUtil.h"
//: #import "HMDataPicker.h"
#import "AirtView.h"
//: #import "FFFRemarksView.h"
#import "CustomView.h"
//: #import "NTESOpinionBackViewController.h"
#import "BarViewController.h"
//: #import "ZMONReportUserView.h"
#import "ReadView.h"
//: #import "ZMONReportNextView.h"
#import "ReportTitleView.h"
//: #import "ZMONReportBlackView.h"
#import "GreenishView.h"
//: #import "ZMONReportDeleteView.h"
#import "OnRedView.h"
//: #import "NTESUserQRCodeViewController.h"
#import "ContentViewController.h"
//: #import "CCCBlackListViewController.h"
#import "ItemViewController.h"
//: #import "NTESSessionMsgConverter.h"
#import "PraiseConverter.h"
//: #import "NTESShareCardAttachment.h"
#import "WithChild.h"
//: #import "ZOMNForwardViewController.h"
#import "SightViewController.h"
//: #import "CCCContactsViewController.h"
#import "OffViewController.h"
//: #import "FFFContactSelectViewController.h"
#import "BrandViewController.h"
//: #import "FFFKitFileLocationHelper.h"
#import "LocationHelper.h"

//: @interface NTESPersonalCardViewController ()<NIMUserManagerDelegate,HMDataPickerDelegate,NTESReportDelegate,NTESReportNextDelegate>
@interface SharedViewController ()<NIMUserManagerDelegate,ColorEnableDelegate,ModelDelegate,RowDelegate>

//: @property (nonatomic,strong) FFFCommonTableDelegate *delegator;
@property (nonatomic,strong) MessageDelegate *delegator;

//: @property (nonatomic,copy ) NSArray *data;
@property (nonatomic,copy ) NSArray *data;

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) NIMUser *user;
@property (nonatomic,strong) NIMUser *user;

//: @property (nonatomic, strong) UIButton *closeBtn;
@property (nonatomic, strong) UIButton *closeBtn;
//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UIView *accountView;
@property (nonatomic, strong) UIView *accountView;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;
//: @property (nonatomic, strong) UILabel *account;
@property (nonatomic, strong) UILabel *account;
//: @property (nonatomic, strong) UIImageView *sexImg;
@property (nonatomic, strong) UIImageView *sexImg;
//: @property (nonatomic, strong) NSString *userAcount;
@property (nonatomic, strong) NSString *userAcount;

//: @property (nonatomic, strong) UIButton *messageBtn;
@property (nonatomic, strong) UIButton *messageBtn;
//: @property (nonatomic, strong) UIButton *groupBtn;
@property (nonatomic, strong) UIButton *groupBtn;

//: @property (nonatomic, strong) UIView *personView;
@property (nonatomic, strong) UIView *personView;
//: @property (strong, nonatomic) UIButton *btnDelete;
@property (strong, nonatomic) UIButton *btnDelete;
//: @property (strong, nonatomic) UIButton *btnChat;
@property (strong, nonatomic) UIButton *btnChat;
//: @property (strong, nonatomic) UISwitch *switchNotice;
@property (strong, nonatomic) UISwitch *switchNotice;
//: @property (strong, nonatomic) UISwitch *switchBlack;
@property (strong, nonatomic) UISwitch *switchBlack;
//: @property (strong, nonatomic) UIButton *btnRes;
@property (strong, nonatomic) UIButton *btnRes;
//: @property (strong, nonatomic) UIButton *btnReport;
@property (strong, nonatomic) UIButton *btnReport;
//: @property (strong, nonatomic) UILabel *labRemark;
@property (strong, nonatomic) UILabel *labRemark;
//: @property (strong, nonatomic) UILabel *labTitleRemark;
@property (strong, nonatomic) UILabel *labTitleRemark;
//: @property (strong, nonatomic) UILabel *labTitlenotice;
@property (strong, nonatomic) UILabel *labTitlenotice;
//: @property (strong, nonatomic) UILabel *labTitleBlack;
@property (strong, nonatomic) UILabel *labTitleBlack;
//: @property (strong, nonatomic) UILabel *labTitleResport;
@property (strong, nonatomic) UILabel *labTitleResport;
//: @property (strong, nonatomic) UIButton *btnAdd;
@property (strong, nonatomic) UIButton *btnAdd;
//: @property (strong, nonatomic) UILabel *labSign;
@property (strong, nonatomic) UILabel *labSign;
//: @property (strong, nonatomic) UILabel *labTitSign;
@property (strong, nonatomic) UILabel *labTitSign;

//: @property (nonatomic, strong) ZMONReportUserView *reprotView;
@property (nonatomic, strong) ReadView *reprotView;
//: @property (nonatomic, strong) FFFRemarksView *changeRemarksView;
@property (nonatomic, strong) CustomView *changeRemarksView;
//: @property (nonatomic, strong) ZMONCustomLoadingView *loadingView;
@property (nonatomic, strong) MoreView *loadingView;
//: @property (nonatomic, strong) ZMONReportNextView *reprotNextView;
@property (nonatomic, strong) ReportTitleView *reprotNextView;
//: @property (nonatomic, strong) ZMONReportBlackView *reprotBlackView;
@property (nonatomic, strong) GreenishView *reprotBlackView;
//: @property (nonatomic, strong) ZMONReportDeleteView *reprotDeleteView;
@property (nonatomic, strong) OnRedView *reprotDeleteView;

//: @end
@end

//: @implementation NTESPersonalCardViewController
@implementation SharedViewController

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithByFullId:(NSString *)userId{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
    }
    //: return self;
    return self;
}

//: - (void)dealloc{
- (void)dealloc{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[NIMSDK sharedSDK].userManager removeDelegate:self];
    [[NIMSDK sharedSDK].userManager removeDelegate:self];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
//    [self setUpNav];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.view.backgroundColor = [UIColor status:[TeamData mainHandleMsg]];

    //: UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    //: scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    //: scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    //: [self.view addSubview:scrollView];
    [self.view addSubview:scrollView];
    //: scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width,900);
    scrollView.contentSize = CGSizeMake([[UIScreen mainScreen] bounds].size.width,900);
    //: scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    scrollView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;

    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    //: if(isMyFriend){
    if(isMyFriend){
        //: [scrollView addSubview:self.userView];
        [scrollView addSubview:self.userView];
        //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 310);
        self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 310);
    //: }else{
    }else{
        //: [scrollView addSubview:self.userView];
        [scrollView addSubview:self.userView];
        //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 256);
        self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 256);
    }

    //: [scrollView addSubview:self.personView];
    [scrollView addSubview:self.personView];
    //: self.personView.frame = CGRectMake(0, self.userView.bottom, [[UIScreen mainScreen] bounds].size.width, 353);
    self.personView.frame = CGRectMake(0, self.userView.bottom, [[UIScreen mainScreen] bounds].size.width, 353);

    //: [self.view addSubview:self.loadingView];
    [self.view addSubview:self.loadingView];
    //: self.loadingView.hidden = YES;
    self.loadingView.hidden = YES;



    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = self.userId;
    dict[[TeamData show_centerCheckPath]] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[TeamData showTitleModePath]] read:dict indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[TeamData notiRedMsg]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict selected:[TeamData noti_memberSuccessMsg]];
            //: self.userAcount = [data newStringValueForKey:@"account"];
            self.userAcount = [data tag:[TeamData app_makeOptionData]];
            //: NSString *avatar = [data newStringValueForKey:@"avatar"];
            NSString *avatar = [data tag:[TeamData appToolBarMessage]];

            //: NSString *str = [NSString stringWithFormat:@"%@:%@",[FFFLanguageManager getTextWithKey:@"register_avtivity_account"],self.userAcount];
            NSString *str = [NSString stringWithFormat:@"%@:%@",[SendName streetSmart:[TeamData appAfterMsg]],self.userAcount];
            //: self.accountId.text = str;
            self.accountId.text = str;
//            [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:avatar] placeholderImage:[UIImage imageNamed:@"head_default"]];

            //: self.accountView.hidden = NO;
            self.accountView.hidden = NO;
            //: CGSize size = [str sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14]}];
            CGSize size = [str sizeWithAttributes:@{NSFontAttributeName: [UIFont systemFontOfSize:14]}];
            //: self.accountView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-size.width-20)/2, self.accountNickname.bottom+10, size.width+20, 24);
            self.accountView.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-size.width-20)/2, self.accountNickname.bottom+10, size.width+20, 24);
            //: self.accountId.frame = CGRectMake(10, 0, size.width, 24);
            self.accountId.frame = CGRectMake(10, 0, size.width, 24);
        }

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];

    //: [self refresh];
    [self full];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: - (void)refresh{
- (void)full{

        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
            //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
            [[NIMSDK sharedSDK].userManager fetchUserInfos:@[self.userId] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                //: if (users.count) {
                if (users.count) {
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;
                    //: self.user = users.firstObject;
                    self.user = users.firstObject;

                    //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                    [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[TeamData userLabelRangeStr]]];
                    //: self.accountNickname.text = self.user.userInfo.nickName;
                    self.accountNickname.text = self.user.userInfo.nickName;
                    //: self.accountNickname.frame = CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20);
                    self.accountNickname.frame = CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20);
                    //: [self.accountNickname sizeToFit];
                    [self.accountNickname sizeToFit];
                    //: self.accountNickname.centerX = self.view.centerX-12;
                    self.accountNickname.centerX = self.view.centerX-12;

                    //: self.sexImg.frame = CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14);
                    self.sexImg.frame = CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14);
                    //: if (self.user.userInfo.gender == NIMUserGenderMale) {
                    if (self.user.userInfo.gender == NIMUserGenderMale) {
                        //: _sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
                        _sexImg.image = [UIImage imageNamed:[TeamData noti_childMsg]];
                    //: }else if (self.user.userInfo.gender == NIMUserGenderFemale){
                    }else if (self.user.userInfo.gender == NIMUserGenderFemale){
                        //: _sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
                        _sexImg.image = [UIImage imageNamed:[TeamData main_enablePopId]];
                    }

                    //: BOOL isMe = [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
                    BOOL isMe = [self.userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount];
                    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
                    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
                    //: BOOL isInBlackList = [[NIMSDK sharedSDK].userManager isUserInBlackList:self.userId];
                    BOOL isInBlackList = [[NIMSDK sharedSDK].userManager isUserInBlackList:self.userId];
                    //: BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.userId];
                    BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.userId];

                    //: if(isMyFriend){
                    if(isMyFriend){
                        //: self.btnAdd.hidden = YES;
                        self.btnAdd.hidden = YES;
                        //: self.btnDelete.hidden = NO;
                        self.btnDelete.hidden = NO;
                    //: }else{
                    }else{
                        //: self.btnAdd.hidden = NO;
                        self.btnAdd.hidden = NO;
                        //: self.btnDelete.hidden = YES;
                        self.btnDelete.hidden = YES;
                    }

                    //: if (isMe) {
                    if (isMe) {
                        //: self.btnAdd.hidden = YES;
                        self.btnAdd.hidden = YES;
                        //: self.btnDelete.hidden = YES;
                        self.btnDelete.hidden = YES;
                    }

                    //: self.switchBlack.on = isInBlackList;
                    self.switchBlack.on = isInBlackList;
                    //: self.switchNotice.on = needNotify;
                    self.switchNotice.on = needNotify;

                    //: self.labRemark.text = self.user.alias.length ? self.user.alias : [FFFLanguageManager getTextWithKey:@"未设置"];
                    self.labRemark.text = self.user.alias.length ? self.user.alias : [SendName streetSmart:[TeamData dreamAfterClickMessage]];
                    //: self.labSign.text = self.user.userInfo.sign.length ? self.user.userInfo.sign : [FFFLanguageManager getTextWithKey:@"未设置"];
                    self.labSign.text = self.user.userInfo.sign.length ? self.user.userInfo.sign : [SendName streetSmart:[TeamData dreamAfterClickMessage]];

                    //: if(isMyFriend){
                    if(isMyFriend){
                        //: self.messageBtn.hidden = NO;
                        self.messageBtn.hidden = NO;
                        //: self.groupBtn.hidden = NO;
                        self.groupBtn.hidden = NO;
                        //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 310);
                        self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 310);
                    //: }else{
                    }else{
                        //: self.messageBtn.hidden = YES;
                        self.messageBtn.hidden = YES;
                        //: self.groupBtn.hidden = YES;
                        self.groupBtn.hidden = YES;
                        //: self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 256);
                        self.userView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 256);
                    }
                    //: self.personView.frame = CGRectMake(0, self.userView.bottom, [[UIScreen mainScreen] bounds].size.width, 353);
                    self.personView.frame = CGRectMake(0, self.userView.bottom, [[UIScreen mainScreen] bounds].size.width, 353);

                }
            //: }];
            }];



}

//: - (void)backAction{
- (void)numberernationalTing{
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: #pragma mark - Action
#pragma mark - Action


//: -(void)onActionGroup:(id)sender{
-(void)transfer:(id)sender{

//    [SVProgressHUD show];
    //: [self.loadingView animationShow];
    [self.loadingView select];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/group/getgroups"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[TeamData mLetterName]] read:nil indicator:NO spaceOf:^(id responseObject) {
        //: [self.loadingView animationClose];
        [self.loadingView tingShould];
//        [SVProgressHUD dismissWithCompletion:^{
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict tag:[TeamData notiRedMsg]];
            //: if (code.integerValue == 0) {
            if (code.integerValue == 0) {
                //: NSArray *dataArray = [resultDict arrayValueForKey:@"data"];
                NSArray *dataArray = [resultDict unwished:[TeamData noti_memberSuccessMsg]];
                //: NSDictionary *dataDict = [NSDictionary dictionaryWithObject:dataArray forKey:@"item_data"];
                NSDictionary *dataDict = [NSDictionary dictionaryWithObject:dataArray forKey:[TeamData show_textDismissInputStr]];
                //: HMDataPicker *dataPick = [[HMDataPicker alloc] initWithDelegate:self dataDict:dataDict selectedDict:nil jsonNode:@"name"];
                AirtView *dataPick = [[AirtView alloc] initWithKeyOrigin:self node:dataDict tool:nil session:[TeamData kMakeValue]];
                //: dataPick.tag = 500;
                dataPick.tag = 500;
                //: [dataPick show];
                [dataPick length];
            }
//        }];
    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {
//        [SVProgressHUD dismiss];
        //: [self.loadingView animationClose];
        [self.loadingView tingShould];
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"add_friend_request_fail"]
        [self.view makeToast:[SendName streetSmart:[TeamData mClickName]]
                    //: duration:2.0
                    duration:2.0
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];
    //: }];
    }];
}



//: #pragma mark - HMDataPickerDelegate
#pragma mark - ColorEnableDelegate
//: - (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict{
- (void)show:(AirtView *)dataPicker dataCommentMagnitude:(NSDictionary *)selectedDict{
    //: _groupDict = selectedDict;
    _groupDict = selectedDict;
    //: [self refresh];
    [self full];
    //: [self setingGroup];
    [self replyPath];//设置分组

}

//: - (void)onActionEditAlias:(id)sender{
- (void)clearBlue:(id)sender{
//    NTESAliasSettingViewController *vc = [[NTESAliasSettingViewController alloc] initWithUserId:self.userId];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onActionEditMyInfo:(id)sender{
- (void)descriptionInfo:(id)sender{
//    NTESUserInfoSettingViewController *vc = [[NTESUserInfoSettingViewController alloc] initWithNibName:nil bundle:nil];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onActionBlackListValueChange:(id)sender{
- (void)enabled:(id)sender{

    //: [self onActionBlackListValueChange_1:sender];
    [self quick:sender];//SDK拉黑
//    [self requestBlackChanged:sender];
}
////拉黑信息同步
//: -(void)requestBlackChanged:(id)sender{
-(void)afterImage:(id)sender{
    //: UISwitch *switcher = sender;
    UISwitch *switcher = sender;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: if (switcher.on) {
    if (switcher.on) {
        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"mobile"] = self.userId;
        dict[[TeamData userNameKey]] = self.userId;
        //: dict[@"type"] = @"1";
        dict[[TeamData userEnableStr]] = @"1";//拉入黑名单
        //: [wself refresh];
        [wself full];

    //: }else{
    }else{
        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"mobile"] = self.userId;
        dict[[TeamData userNameKey]] = self.userId;
        //: dict[@"type"] = @"0";
        dict[[TeamData userEnableStr]] = @"0";//解除黑名单
        //: [wself refresh];
        [wself full];

    }
}

//: - (void)onActionBlackListValueChange_1:(id)sender{
- (void)quick:(id)sender{
    //: UISwitch *switcher = sender;
    UISwitch *switcher = sender;
//    [SVProgressHUD show];
    //: [self.loadingView animationShow];
    [self.loadingView select];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (switcher.on) {
    if (switcher.on) {
        //: [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
//            [SVProgressHUD dismiss];
            //: [self.loadingView animationClose];
            [self.loadingView tingShould];
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[SendName streetSmart:[TeamData mDismissData]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_add_black_failed"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[SendName streetSmart:[TeamData mainNextNameUrl]] duration:2.0f position:CSToastPositionCenter];
                //: [wself refresh];
                [wself full];
            }
        //: }];
        }];
    //: }else{
    }else{
        //: [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:self.userId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager removeFromBlackBlackList:self.userId completion:^(NSError *error) {
//            [SVProgressHUD dismiss];
            //: [self.loadingView animationClose];
            [self.loadingView tingShould];
            //: if (!error) {
            if (!error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_remove_black"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[SendName streetSmart:[TeamData userMinToolContent]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_remove_black_failed"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[SendName streetSmart:[TeamData noti_pinMsg]] duration:2.0f position:CSToastPositionCenter];
                //: [wself refresh];
                [wself full];
            }
        //: }];
        }];
    }
}

//: - (void)onActionNeedNotifyValueChange:(id)sender{
- (void)beAccount:(id)sender{
    //: UISwitch *switcher = sender;
    UISwitch *switcher = sender;
//    [SVProgressHUD show];
    //: [self.loadingView animationShow];
    [self.loadingView select];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager updateNotifyState:switcher.on forUser:self.userId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateNotifyState:switcher.on forUser:self.userId completion:^(NSError *error) {
//        [SVProgressHUD dismiss];
        //: [self.loadingView animationClose];
        [self.loadingView tingShould];
        //: if (error) {
        if (error) {
            //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0f position:CSToastPositionCenter];
            [wself.view makeToast:[SendName streetSmart:[TeamData mainChildValue]] duration:2.0f position:CSToastPositionCenter];
            //: [wself refresh];
            [wself full];
        }
    //: }];
    }];
}


//: - (void)btnchat
- (void)observerIcon
{
    //: UINavigationController *nav = self.navigationController;
    UINavigationController *nav = self.navigationController;
    //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
    TopViewController *vc = [[TopViewController alloc] initWithMedia:session];
    //: [nav pushViewController:vc animated:YES];
    [nav pushViewController:vc animated:YES];
    //: UIViewController *root = nav.viewControllers[0];
    UIViewController *root = nav.viewControllers[0];
    //: nav.viewControllers = @[root,vc];
    nav.viewControllers = @[root,vc];
}

//: - (void)btnGroupchat
- (void)windowChange
{
    //: NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: [self presentMemberSelector:^(NSArray *uids, NSString *name, UIImage *avater) {
    [self toMember:^(NSArray *uids, NSString *name, UIImage *avater) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
                        ;

//        [SVProgressHUD show];
        //: [self.loadingView animationShow];
        [self.loadingView select];

        //: [self uploadImage:avater complete:^(NSString *urlString) {
        [self atTing:avater image:^(NSString *urlString) {

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
            option.postscript = [SendName streetSmart:[TeamData kMessageText]];
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
                //: }else{
                }else{
                    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"team_create_helper_create_failed"] duration:2.0 position:CSToastPositionCenter];
                    [self.view makeToast:[SendName streetSmart:[TeamData dreamAfterMsg]] duration:2.0 position:CSToastPositionCenter];
                }
            //: }];
            }];




        //: }];
        }];

    //: }];
    }];

}

//: - (void)presentMemberSelector:(ContactSelectFinishBlock) block{
- (void)toMember:(ContactSelectFinishBlock) block{
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
    //: config.alreadySelectedMemberId = @[self.userId];
    config.alreadySelectedMemberId = @[self.userId];
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
//: - (void)uploadImage:(UIImage *)image complete:(void(^)(NSString *urlString ))complete {
- (void)atTing:(UIImage *)image image:(void(^)(NSString *urlString ))complete {

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
    NSString *fileName = [LocationHelper post:[TeamData kMemberMsg]];
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
                [wself.view makeToast:[SendName streetSmart:[TeamData notiShowValue]]
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
        [self.view makeToast:[SendName streetSmart:[TeamData notiShowValue]]
                    //: duration:2
                    duration:2
                    //: position:CSToastPositionCenter];
                    position:CSToastPositionCenter];

        //: !complete ? :complete(nil);
        !complete ? :complete(nil);
    }

}


//加好友
//: -(void)addFriend{
-(void)viewFriend{

    //: if (_teamSetingConfig != nil) {
    if (_teamSetingConfig != nil) {
        //: NSString *canAddFriend = [_teamSetingConfig newStringValueForKey:@"canAddFriend"];
        NSString *canAddFriend = [_teamSetingConfig tag:[TeamData userRedText]];
        //: if (canAddFriend.integerValue <= 0) {
        if (canAddFriend.integerValue <= 0) {
            //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"please_contact_your_administrator"]];
            [SVProgressHUD stormCenter:[SendName streetSmart:[TeamData app_modeData]]];
            //: return;
            return;
        }
    }

    //: [self sendAddFriendRequest];
    [self overText];//添加好友

}

//: -(void)sendAddFriendRequest{
-(void)overText{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [DataMaxDefaults max].tempVerificationInfo;
    //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    //: request.userId = self.userId;
    request.userId = self.userId;
    //: request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationAdd;
    //: request.operation = NIMUserOperationRequest;
    request.operation = NIMUserOperationRequest;
    //: request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";

    //: NSString *contact_tag_fragment_add_success = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [SendName streetSmart:[TeamData showShouldKey]];//@"添加成功"
    //: NSString *request_successful = [FFFLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [SendName streetSmart:[TeamData kNameValue]];//@"请求成功"
    //: NSString *add_friend_add_fail = [FFFLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [SendName streetSmart:[TeamData k_makeName]];//@"添加失败"
    //: NSString *add_friend_request_fail = [FFFLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [SendName streetSmart:[TeamData mClickName]];//@"请求失败"
    //: NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    //: NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [SVProgressHUD show];
    //: [self.loadingView animationShow];
    [self.loadingView select];

    //: [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
//        [SVProgressHUD dismiss];
        //: [self.loadingView animationClose];
        [self.loadingView tingShould];
        //: if (!error) {
        if (!error) {
            //: [wself.view makeToast:successText
            [wself.view makeToast:successText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
            //: [wself refresh];
            [wself full];
        //: }else{
        }else{
            //: [wself.view makeToast:failedText
            [wself.view makeToast:failedText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//分组网络请求
//: -(void)setingGroup{
-(void)replyPath{

    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"group_id"] = [_groupDict newStringValueForKey:@"id"];
    dict[[TeamData mQuantityInputStr]] = [_groupDict tag:@"id"];
    //: dict[@"friend_ids"] = self.user.userId;
    dict[[TeamData dreamHandleTitle]] = self.user.userId;
    //: dict[@"isfrend"] = isMyFriend?@"1":@"0";
    dict[[TeamData dream_sourceName]] = isMyFriend?@"1":@"0";

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/group/addgroupuser"] params:dict isShow:YES success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[TeamData dreamMakeIdent]] read:dict indicator:YES spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSLog(@"-----%@",resultDict);
    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: - (void)deleteFriend{
- (void)indexSuccess{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;//@"删除好友后，将同时解除双方的好友关系"
    //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend"] message:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_remove_friend_tip"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] otherButtonTitles:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"], nil];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[SendName streetSmart:[TeamData showPathStr]] message:[SendName streetSmart:[TeamData m_sizeUrl]] delegate:nil cancelButtonTitle:[SendName streetSmart:[TeamData showShouldIdent]] otherButtonTitles:[SendName streetSmart:[TeamData k_withData]], nil];
    //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
    [alert alertHandler:^(NSInteger index) {
        //: if (index == 1) {
        if (index == 1) {
//            [SVProgressHUD show];
            //: [self.loadingView animationShow];
            [self.loadingView select];



            //: [[NIMSDK sharedSDK].userManager deleteFriend:wself.userId
            [[NIMSDK sharedSDK].userManager deleteFriend:wself.userId
                                             //: removeAlias:[[NTESBundleSetting sharedConfig] autoRemoveAlias]
                                             removeAlias:[[EnvironmentSetting configLocation] coupeContentCrimson]
                                              //: completion:^(NSError *error) {
                                              completion:^(NSError *error) {
//                [SVProgressHUD dismiss];
                //: [self.loadingView animationClose];
                [self.loadingView tingShould];
                //: if (!error) {
                if (!error) {
                    //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_delete_success"] duration:2.0f position:CSToastPositionCenter];
                    [wself.view makeToast:[SendName streetSmart:[TeamData m_recordContent]] duration:2.0f position:CSToastPositionCenter];
                    //: [wself refresh];
                    [wself full];
                    //: [self removeNIMRecentSession];
                    [self device];
                //: }else{
                }else{
                    //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
                    [wself.view makeToast:[SendName streetSmart:[TeamData kMakeId]] duration:2.0f position:CSToastPositionCenter];
                }
            //: }];
            }];
        }
    //: }];
    }];
}

//: - (void)removeNIMRecentSession
- (void)device
{
    //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    //: id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    id<NIMConversationManager> manager = [[NIMSDK sharedSDK] conversationManager];
    //: [manager deleteRecentSession:recent];
    [manager deleteRecentSession:recent];
}

//: #pragma mark - NIMUserManagerDelegate
#pragma mark - NIMUserManagerDelegate

//: - (void)onUserInfoChanged:(NIMUser *)user
- (void)onUserInfoChanged:(NIMUser *)user
{
    //: if ([user.userId isEqualToString:self.userId]) {
    if ([user.userId isEqualToString:self.userId]) {
        //: [self refresh];
        [self full];
    }
}

//: - (void)onFriendChanged:(NIMUser *)user{
- (void)onFriendChanged:(NIMUser *)user{
    //: if ([user.userId isEqualToString:self.userId]) {
    if ([user.userId isEqualToString:self.userId]) {
        //: [self refresh];
        [self full];
    }
}

//: - (void)onBlackListChanged{
- (void)onBlackListChanged{
    //: [self refresh];
    [self full];
}

//: - (void)onMuteListChanged
- (void)onMuteListChanged
{
    //: [self refresh];
    [self full];
}

//: - (void)onActionEditAlias{
- (void)infoAllow{

    //: [self.view addSubview:self.changeRemarksView];
    [self.view addSubview:self.changeRemarksView];
    //: [ self.changeRemarksView reloadWithNickname: self.user];
    [ self.changeRemarksView restoreVideo: self.user];
    //: [self.changeRemarksView animationShow];
    [self.changeRemarksView random];
}

//: - (void)reportsAction {
- (void)maxChoice {
    //: [self.view addSubview:self.reprotView];
    [self.view addSubview:self.reprotView];
    //: [self.reprotView animationShow];
    [self.reprotView enable];
//    BarViewController *vc = [[BarViewController alloc]init];
//    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)handleQrbtn
- (void)mishandleSuccess
{
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    ContentViewController *vc = [[ContentViewController alloc] init];
    //: vc.userID = _userId;
    vc.userID = _userId;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)btngotoBlackList
- (void)curInput
{
    //: CCCBlackListViewController *vc = [[CCCBlackListViewController alloc] init];
    ItemViewController *vc = [[ItemViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)shareCardAction
- (void)enableAction
{
    //: NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    WithChild *attachment = [[WithChild alloc] init];
    //: attachment.title = self.user.userInfo.nickName;
    attachment.title = self.user.userInfo.nickName;
    //: attachment.type = @"0";
    attachment.type = @"0";
    //: attachment.personCardId = self.userId;
    attachment.personCardId = self.userId;
    //: attachment.content = self.userAcount;
    attachment.content = self.userAcount;
    //: NIMMessage *message = [NTESSessionMsgConverter msgWithShareCard:attachment];
    NIMMessage *message = [PraiseConverter titleUpKey:attachment];

    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    SightViewController *vc = [[SightViewController alloc]init];
    //: vc.isCard = YES;
    vc.isCard = YES;
    //: vc.message = message;
    vc.message = message;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}


//: #pragma mark - Private
#pragma mark - Private
//: - (UIView *)userView
- (UIView *)userView
{
    //: if(!_userView){
    if(!_userView){
        //: _userView = [[UIView alloc] init];
        _userView = [[UIView alloc] init];
        //: self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];
        self.user = [[NIMSDK sharedSDK].userManager userInfo:self.userId];
//        _userView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"personCard_bg"]];

        //: UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        UIImageView *Bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 250)];
        //: Bg.image = [UIImage imageNamed:@"personCard_bg"];
        Bg.image = [UIImage imageNamed:[TeamData userOptionWithUrl]];
        //: [_userView addSubview:Bg];
        [_userView addSubview:Bg];

        //: UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(15, [UIDevice vg_statusBarHeight]+44+20, [[UIScreen mainScreen] bounds].size.width-30, 140)];
        UIImageView *userBg = [[UIImageView alloc]initWithFrame:CGRectMake(15, [UIDevice statusOrLevel]+44+20, [[UIScreen mainScreen] bounds].size.width-30, 140)];
        //: userBg.image = [UIImage imageNamed:@"personcart_profile_bg"];
        userBg.image = [UIImage imageNamed:[TeamData k_removeMsg]];
        //: userBg.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        userBg.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: userBg.layer.shadowOffset = CGSizeMake(0,4);
        userBg.layer.shadowOffset = CGSizeMake(0,4);
        //: userBg.layer.shadowOpacity = 1;
        userBg.layer.shadowOpacity = 1;
        //: userBg.layer.shadowRadius = 16;
        userBg.layer.shadowRadius = 16;
        //: [_userView addSubview:userBg];
        [_userView addSubview:userBg];

        //: UIButton *QrBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *QrBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        //: QrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-36, [UIDevice vg_statusBarHeight]+44+35, 36, 36);
        QrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-36, [UIDevice statusOrLevel]+44+35, 36, 36);
//        QrBtn.backgroundColor = [UIColor whiteColor];
        //: [QrBtn setImage:[UIImage imageNamed:@"his_qr"] forState:UIControlStateNormal];
        [QrBtn setImage:[UIImage imageNamed:[TeamData show_recordNameRedText]] forState:UIControlStateNormal];
        //: [QrBtn addTarget:self action:@selector(handleQrbtn) forControlEvents:UIControlEventTouchUpInside];
        [QrBtn addTarget:self action:@selector(mishandleSuccess) forControlEvents:UIControlEventTouchUpInside];
        //: QrBtn.layer.cornerRadius = 8;
        QrBtn.layer.cornerRadius = 8;
        //: [_userView addSubview:QrBtn];
        [_userView addSubview:QrBtn];

        //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice vg_statusBarHeight]+20, 88, 88)];
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-100)/2, [UIDevice statusOrLevel]+20, 88, 88)];
        //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[TeamData userLabelRangeStr]]];
        //: self.accountheadImg.layer.cornerRadius = 44;
        self.accountheadImg.layer.cornerRadius = 44;
        //: self.accountheadImg.layer.masksToBounds = YES;
        self.accountheadImg.layer.masksToBounds = YES;
        //: self.accountheadImg.layer.borderWidth = 2;
        self.accountheadImg.layer.borderWidth = 2;
        //: self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        //: [_userView addSubview:self.accountheadImg];
        [_userView addSubview:self.accountheadImg];

        //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20)];
        self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountheadImg.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20)];
        //: self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        self.accountNickname.font = [UIFont boldSystemFontOfSize:20];
        //: self.accountNickname.textColor = [UIColor blackColor];
        self.accountNickname.textColor = [UIColor blackColor];
        //: self.accountNickname.text = self.user.userInfo.nickName;
        self.accountNickname.text = self.user.userInfo.nickName;
        //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
        self.accountNickname.textAlignment = NSTextAlignmentCenter;
        //: [_userView addSubview:self.accountNickname];
        [_userView addSubview:self.accountNickname];
        //: [self.accountNickname sizeToFit];
        [self.accountNickname sizeToFit];
        //: self.accountNickname.centerX = self.view.centerX-12;
        self.accountNickname.centerX = self.view.centerX-12;

        //: _sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        _sexImg = [[UIImageView alloc]initWithFrame:CGRectMake(self.accountNickname.right+10, self.accountNickname.top+3, 14, 14)];
        //: if (self.user.userInfo.gender == NIMUserGenderMale) {
        if (self.user.userInfo.gender == NIMUserGenderMale) {
            //: _sexImg.image = [UIImage imageNamed:@"ic_sex_man"];
            _sexImg.image = [UIImage imageNamed:[TeamData noti_childMsg]];
        //: }else if (self.user.userInfo.gender == NIMUserGenderFemale){
        }else if (self.user.userInfo.gender == NIMUserGenderFemale){
            //: _sexImg.image = [UIImage imageNamed:@"ic_sex_woman"];
            _sexImg.image = [UIImage imageNamed:[TeamData main_enablePopId]];
        }
        //: [_userView addSubview:_sexImg];
        [_userView addSubview:_sexImg];

        //: _accountView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-156)/2, self.accountNickname.bottom+10, 156, 24)];
        _accountView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-156)/2, self.accountNickname.bottom+10, 156, 24)];
        //: _accountView.backgroundColor = [UIColor colorWithHexString:@"#FDF4C9"];
        _accountView.backgroundColor = [UIColor status:[TeamData user_nameFormat]];
        //: _accountView.layer.cornerRadius = 12;
        _accountView.layer.cornerRadius = 12;
        //: [_userView addSubview:_accountView];
        [_userView addSubview:_accountView];
        //: _accountView.hidden = YES;
        _accountView.hidden = YES;

        //: self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 156, 24)];
        self.accountId = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 156, 24)];
//        self.accountId.backgroundColor = RGB_COLOR_String(@"#FDF4C9");
        //: self.accountId.font = [UIFont systemFontOfSize:14];
        self.accountId.font = [UIFont systemFontOfSize:14];
        //: self.accountId.textColor = [UIColor colorWithHexString:@"#2C3042"];
        self.accountId.textColor = [UIColor status:[TeamData userSumValue]];
        //: self.accountId.textAlignment = NSTextAlignmentCenter;
        self.accountId.textAlignment = NSTextAlignmentCenter;
        //: [_accountView addSubview:self.accountId];
        [_accountView addSubview:self.accountId];

        //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
        BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
        //: if(isMyFriend){
        if(isMyFriend){
            //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-15*3)/2;
            CGFloat width = ([[UIScreen mainScreen] bounds].size.width-15*3)/2;
            //: _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            _messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
            //: _messageBtn.frame = CGRectMake(15, userBg.bottom+10, width, 44);
            _messageBtn.frame = CGRectMake(15, userBg.bottom+10, width, 44);
            //: _messageBtn.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
            _messageBtn.backgroundColor = [UIColor status:[TeamData user_recordValue]];
            //: [_messageBtn addTarget:self action:@selector(btnchat) forControlEvents:UIControlEventTouchUpInside];
            [_messageBtn addTarget:self action:@selector(observerIcon) forControlEvents:UIControlEventTouchUpInside];
            //: _messageBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            _messageBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            //: [_messageBtn setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
            [_messageBtn setTitleColor:[UIColor status:[TeamData m_viewMsg]] forState:UIControlStateNormal];
            //: [_messageBtn setTitle:[FFFLanguageManager getTextWithKey:@"message_info_activity_message_info"] forState:UIControlStateNormal];
            [_messageBtn setTitle:[SendName streetSmart:[TeamData mReadPath]] forState:UIControlStateNormal];
            //: _messageBtn.layer.cornerRadius = 22;
            _messageBtn.layer.cornerRadius = 22;
            //: [_userView addSubview:_messageBtn];
            [_userView addSubview:_messageBtn];

            //: _groupBtn= [UIButton buttonWithType:UIButtonTypeCustom];
            _groupBtn= [UIButton buttonWithType:UIButtonTypeCustom];
            //: _groupBtn.frame = CGRectMake(30+width, userBg.bottom+10, width, 44);
            _groupBtn.frame = CGRectMake(30+width, userBg.bottom+10, width, 44);
            //: _groupBtn.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
            _groupBtn.backgroundColor = [UIColor status:[TeamData user_recordValue]];
            //: [_groupBtn addTarget:self action:@selector(btnGroupchat) forControlEvents:UIControlEventTouchUpInside];
            [_groupBtn addTarget:self action:@selector(windowChange) forControlEvents:UIControlEventTouchUpInside];
            //: _groupBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            _groupBtn.titleLabel.font = [UIFont systemFontOfSize:12];
            //: [_groupBtn setTitleColor:[UIColor colorWithHexString:@"#ffffff"] forState:UIControlStateNormal];
            [_groupBtn setTitleColor:[UIColor status:[TeamData m_viewMsg]] forState:UIControlStateNormal];
            //: [_groupBtn setTitle:[FFFLanguageManager getTextWithKey:@"Group_chat"] forState:UIControlStateNormal];
            [_groupBtn setTitle:[SendName streetSmart:[TeamData showGreenMsg]] forState:UIControlStateNormal];
            //: _groupBtn.layer.cornerRadius = 22;
            _groupBtn.layer.cornerRadius = 22;
            //: [_userView addSubview:_groupBtn];
            [_userView addSubview:_groupBtn];
        }
        //: self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        self.closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.closeBtn.backgroundColor = [UIColor clearColor];
        self.closeBtn.backgroundColor = [UIColor clearColor];
        //: [self.closeBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:(UIControlStateNormal)];
        [self.closeBtn setImage:[UIImage imageNamed:[TeamData noti_viewMsg]] forState:(UIControlStateNormal)];
        //: [self.closeBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
        [self.closeBtn addTarget:self action:@selector(numberernationalTing) forControlEvents:UIControlEventTouchUpInside];
        //: [_userView addSubview:self.closeBtn];
        [_userView addSubview:self.closeBtn];
        //: self.closeBtn.frame = CGRectMake(15, 4+[UIDevice vg_statusBarHeight], 36, 36);
        self.closeBtn.frame = CGRectMake(15, 4+[UIDevice statusOrLevel], 36, 36);

    }
    //: return _userView;
    return _userView;
}

//: - (UIView *)personView
- (UIView *)personView
{
    //: if(!_personView){
    if(!_personView){
        //: _personView = [[UIView alloc]init];
        _personView = [[UIView alloc]init];
        //: _personView.backgroundColor = [UIColor clearColor];
        _personView.backgroundColor = [UIColor clearColor];
        //: _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 353);
        _personView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 353);

        //: UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 112)];
        UIView *contView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30, 112)];
        //: [_personView addSubview:contView];
        [_personView addSubview:contView];
        //: contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        contView.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        //: contView.layer.cornerRadius = 12;
        contView.layer.cornerRadius = 12;
        //: contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        contView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: contView.layer.shadowOffset = CGSizeMake(0,4);
        contView.layer.shadowOffset = CGSizeMake(0,4);
        //: contView.layer.shadowOpacity = 1;
        contView.layer.shadowOpacity = 1;
        //: contView.layer.shadowRadius = 16;
        contView.layer.shadowRadius = 16;

        //: UIView *noticeView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *noticeView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [contView addSubview:noticeView];
        [contView addSubview:noticeView];
        //: UIImageView *pic3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        UIImageView *pic3 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        //: pic3.image = [UIImage imageNamed:@"ic_card_notice"];
        pic3.image = [UIImage imageNamed:[TeamData appImageTitleStr]];
        //: [noticeView addSubview:pic3];
        [noticeView addSubview:pic3];
        //: self.labTitlenotice = [[UILabel alloc]initWithFrame:CGRectMake(pic3.right+12, 10, 250, 28)];
        self.labTitlenotice = [[UILabel alloc]initWithFrame:CGRectMake(pic3.right+12, 10, 250, 28)];
        //: self.labTitlenotice.font = [UIFont systemFontOfSize:16.f];
        self.labTitlenotice.font = [UIFont systemFontOfSize:16.f];
        //: self.labTitlenotice.textColor = [UIColor blackColor];
        self.labTitlenotice.textColor = [UIColor blackColor];
        //: self.labTitlenotice.text = [FFFLanguageManager getTextWithKey:@"message_info_activity_msg_notice"];
        self.labTitlenotice.text = [SendName streetSmart:[TeamData m_recentKey]];
        //: [noticeView addSubview:self.labTitlenotice];
        [noticeView addSubview:self.labTitlenotice];
        //: self.switchNotice = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 8, 33, 20)];
        self.switchNotice = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 8, 33, 20)];
        //: [self.switchNotice addTarget:self action:@selector(onActionNeedNotifyValueChange:) forControlEvents:UIControlEventValueChanged];
        [self.switchNotice addTarget:self action:@selector(beAccount:) forControlEvents:UIControlEventValueChanged];
        //: self.switchNotice.onTintColor = [UIColor colorWithHexString:@"#02D8C9"];
        self.switchNotice.onTintColor = [UIColor status:[TeamData user_recordValue]];
        //: [noticeView addSubview:self.switchNotice];
        [noticeView addSubview:self.switchNotice];
        //: UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 47, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line3 = [[UIView alloc]initWithFrame:CGRectMake(36, 47, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line3.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line3.backgroundColor = [UIColor status:[TeamData notiViewMyIdent]];
        //: [noticeView addSubview:line3];
        [noticeView addSubview:line3];

        //: UIView *blackView = [[UIView alloc]initWithFrame:CGRectMake(15, noticeView.bottom, [[UIScreen mainScreen] bounds].size.width-60, 62)];
        UIView *blackView = [[UIView alloc]initWithFrame:CGRectMake(15, noticeView.bottom, [[UIScreen mainScreen] bounds].size.width-60, 62)];
        //: [contView addSubview:blackView];
        [contView addSubview:blackView];
        //: UIImageView *pic4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        UIImageView *pic4 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        //: pic4.image = [UIImage imageNamed:@"ic_card_black"];
        pic4.image = [UIImage imageNamed:[TeamData k_sourceStr]];
        //: [blackView addSubview:pic4];
        [blackView addSubview:pic4];
        //: self.labTitleBlack = [[UILabel alloc]initWithFrame:CGRectMake(pic4.right+12, 10, 250, 22)];
        self.labTitleBlack = [[UILabel alloc]initWithFrame:CGRectMake(pic4.right+12, 10, 250, 22)];
        //: self.labTitleBlack.font = [UIFont systemFontOfSize:16.f];
        self.labTitleBlack.font = [UIFont systemFontOfSize:16.f];
        //: self.labTitleBlack.textColor = [UIColor blackColor];
        self.labTitleBlack.textColor = [UIColor blackColor];
        //: self.labTitleBlack.text = [FFFLanguageManager getTextWithKey:@"func_viewholder_black"];
        self.labTitleBlack.text = [SendName streetSmart:[TeamData kObjectId]];
        //: [blackView addSubview:self.labTitleBlack];
        [blackView addSubview:self.labTitleBlack];

        //: UIButton *blackBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *blackBtn= [UIButton buttonWithType:UIButtonTypeCustom];
        //: blackBtn.frame = CGRectMake(pic4.right+12, self.labTitleBlack.bottom, 250, 20);
        blackBtn.frame = CGRectMake(pic4.right+12, self.labTitleBlack.bottom, 250, 20);
        //: [blackBtn addTarget:self action:@selector(btngotoBlackList) forControlEvents:UIControlEventTouchUpInside];
        [blackBtn addTarget:self action:@selector(curInput) forControlEvents:UIControlEventTouchUpInside];
        //: blackBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        blackBtn.titleLabel.font = [UIFont systemFontOfSize:12];
        //: [blackBtn setTitleColor:[UIColor colorWithHexString:@"#02D8C9"] forState:UIControlStateNormal];
        [blackBtn setTitleColor:[UIColor status:[TeamData user_recordValue]] forState:UIControlStateNormal];
        //: [blackBtn setTitle:[FFFLanguageManager getTextWithKey:@"gotoBlacklist"] forState:UIControlStateNormal];
        [blackBtn setTitle:[SendName streetSmart:[TeamData app_barIdent]] forState:UIControlStateNormal];
        //: [blackView addSubview:blackBtn];
        [blackView addSubview:blackBtn];
        //: blackBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        blackBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;

        //: self.switchBlack = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 14, 33, 20)];
        self.switchBlack = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, 14, 33, 20)];
        //: [self.switchBlack addTarget:self action:@selector(onActionBlackListValueChange:) forControlEvents:UIControlEventValueChanged];
        [self.switchBlack addTarget:self action:@selector(enabled:) forControlEvents:UIControlEventValueChanged];
        //: self.switchBlack.onTintColor = [UIColor colorWithHexString:@"#02D8C9"];
        self.switchBlack.onTintColor = [UIColor status:[TeamData user_recordValue]];
        //: [blackView addSubview:self.switchBlack];
        [blackView addSubview:self.switchBlack];

//        UIView *line4 = [[UIView alloc]initWithFrame:CGRectMake(36, 61, SCREEN_WIDTH-60-36, 1)];
//        line4.backgroundColor = RGB_COLOR_String(@"#ECECEC");
//        [blackView addSubview:line4];
//        
//        UIView *shareCartView = [[UIView alloc]initWithFrame:CGRectMake(15, blackView.bottom, SCREEN_WIDTH-60, 50)];
//        [contView addSubview:shareCartView];
//        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shareCardAction)];
//        [shareCartView addGestureRecognizer:tapGesture];
//        UIImageView *pic5 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
//        pic5.image = [UIImage imageNamed:@"ic_card_share"];
//        [shareCartView addSubview:pic5];
//        UILabel *labTitleShare = [[UILabel alloc]initWithFrame:CGRectMake(pic5.right+12, 10, 250, 28)];
//        labTitleShare.font = [UIFont systemFontOfSize:16.f];
//        labTitleShare.textColor = [UIColor blackColor];
//        labTitleShare.text = LangKey(@"send_card");
//        [shareCartView addSubview:labTitleShare];
//        UIImageView *arrow5 = [[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH-60-12, 18, 12, 12)];
//        arrow5.image = [UIImage imageNamed:@"icon_me_arrow"];
//        [shareCartView addSubview:arrow5];


        //: UIView *cont2View = [[UIView alloc]initWithFrame:CGRectMake(15, contView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 100)];
        UIView *cont2View = [[UIView alloc]initWithFrame:CGRectMake(15, contView.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 100)];
        //: [_personView addSubview:cont2View];
        [_personView addSubview:cont2View];
        //: cont2View.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        cont2View.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
        //: cont2View.layer.cornerRadius = 12;
        cont2View.layer.cornerRadius = 12;
        //: cont2View.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        cont2View.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: cont2View.layer.shadowOffset = CGSizeMake(0,4);
        cont2View.layer.shadowOffset = CGSizeMake(0,4);
        //: cont2View.layer.shadowOpacity = 1;
        cont2View.layer.shadowOpacity = 1;
        //: cont2View.layer.shadowRadius = 16;
        cont2View.layer.shadowRadius = 16;


        //: UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *nameView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [cont2View addSubview:nameView];
        [cont2View addSubview:nameView];
        //: UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onActionEditAlias)];
        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(infoAllow)];
        //: [nameView addGestureRecognizer:panGesture];
        [nameView addGestureRecognizer:panGesture];
        //: UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        UIImageView *pic1 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        //: pic1.image = [UIImage imageNamed:@"ic_card_edit"];
        pic1.image = [UIImage imageNamed:[TeamData main_selectKey]];
        //: [nameView addSubview:pic1];
        [nameView addSubview:pic1];
        //: self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 150, 24)];
        self.labTitleRemark = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 150, 24)];
        //: self.labTitleRemark.font = [UIFont systemFontOfSize:16.f];
        self.labTitleRemark.font = [UIFont systemFontOfSize:16.f];
        //: self.labTitleRemark.textColor = [UIColor blackColor];
        self.labTitleRemark.textColor = [UIColor blackColor];
        //: self.labTitleRemark.text = [FFFLanguageManager getTextWithKey:@"message_remark_name"];
        self.labTitleRemark.text = [SendName streetSmart:[TeamData m_recordImageText]];
        //: [nameView addSubview:self.labTitleRemark];
        [nameView addSubview:self.labTitleRemark];
        //: self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        self.labRemark = [[UILabel alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-150-20, 10, 150, 30)];
        //: self.labRemark.textAlignment = NSTextAlignmentRight;
        self.labRemark.textAlignment = NSTextAlignmentRight;
        //: self.labRemark.font = [UIFont systemFontOfSize:14.f];
        self.labRemark.font = [UIFont systemFontOfSize:14.f];
        //: self.labRemark.textColor = [UIColor colorWithHexString:@"#8A8E98"];
        self.labRemark.textColor = [UIColor status:[TeamData user_minPath]];
        //: [nameView addSubview:self.labRemark];
        [nameView addSubview:self.labRemark];
        //: UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        UIImageView *arrow = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        //: arrow.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrow.image = [UIImage imageNamed:[TeamData mInputGreenFormat]];
        //: [nameView addSubview:arrow];
        [nameView addSubview:arrow];
        //: UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        UIView *line1 = [[UIView alloc]initWithFrame:CGRectMake(36, 49, [[UIScreen mainScreen] bounds].size.width-60-36, 1)];
        //: line1.backgroundColor = [UIColor colorWithHexString:@"#ECECEC"];
        line1.backgroundColor = [UIColor status:[TeamData notiViewMyIdent]];
        //: [nameView addSubview:line1];
        [nameView addSubview:line1];

//        UIView *signView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, SCREEN_WIDTH-60, 80)];
//        [contView addSubview:signView];
//        UIImageView *pic2 = [[UIImageView alloc]initWithFrame:CGRectMake(0, 10, 24, 24)];
//        pic2.image = [UIImage imageNamed:@"ic_card_sign"];
//        [signView addSubview:pic2];
//        self.labTitSign = [[UILabel alloc]initWithFrame:CGRectMake(pic2.right+12, 10, 250, 24)];
//        self.labTitSign.font = [UIFont systemFontOfSize:16.f];
//        self.labTitSign.textColor = [UIColor blackColor];
//        self.labTitSign.text = LangKey(@"user_profile_avtivity_signature");
//        [signView addSubview:self.labTitSign];
//        self.labSign = [[UILabel alloc]initWithFrame:CGRectMake(pic2.right+12, self.labTitleRemark.bottom, 250, 50)];
//        self.labSign.font = [UIFont systemFontOfSize:14.f];
//        self.labSign.numberOfLines = 2;
//        self.labSign.textColor = TextColor_3;
//        [signView addSubview:self.labSign];
//        UIView *line2 = [[UIView alloc]initWithFrame:CGRectMake(36, 79, SCREEN_WIDTH-60-36, 1)];
//        line2.backgroundColor = RGB_COLOR_String(@"#ECECEC");
//        [signView addSubview:line2];


        //: UIView *reportView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        UIView *reportView = [[UIView alloc]initWithFrame:CGRectMake(15, nameView.bottom, [[UIScreen mainScreen] bounds].size.width-60, 50)];
        //: [cont2View addSubview:reportView];
        [cont2View addSubview:reportView];
        //: UITapGestureRecognizer *reporttapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(reportsAction)];
        UITapGestureRecognizer *reporttapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(maxChoice)];
        //: [reportView addGestureRecognizer:reporttapGesture];
        [reportView addGestureRecognizer:reporttapGesture];
        //: UIImageView *picreport = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        UIImageView *picreport = [[UIImageView alloc]initWithFrame:CGRectMake(0, 12, 24, 24)];
        //: picreport.image = [UIImage imageNamed:@"ic_card_report"];
        picreport.image = [UIImage imageNamed:[TeamData mainLabelPath]];
        //: [reportView addSubview:picreport];
        [reportView addSubview:picreport];
        //: self.labTitleResport = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 250, 28)];
        self.labTitleResport = [[UILabel alloc]initWithFrame:CGRectMake(pic1.right+12, 10, 250, 28)];
        //: self.labTitleResport.font = [UIFont systemFontOfSize:16.f];
        self.labTitleResport.font = [UIFont systemFontOfSize:16.f];
        //: self.labTitleResport.textColor = [UIColor blackColor];
        self.labTitleResport.textColor = [UIColor blackColor];
        //: self.labTitleResport.text = [FFFLanguageManager getTextWithKey:@"report_activity_title"];
        self.labTitleResport.text = [SendName streetSmart:[TeamData noti_frameName]];
        //: [reportView addSubview:self.labTitleResport];
        [reportView addSubview:self.labTitleResport];
        //: UIImageView *arrowreport = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        UIImageView *arrowreport = [[UIImageView alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 18, 12, 12)];
        //: arrowreport.image = [UIImage imageNamed:@"icon_me_arrow"];
        arrowreport.image = [UIImage imageNamed:[TeamData mInputGreenFormat]];
        //: [reportView addSubview:arrowreport];
        [reportView addSubview:arrowreport];


        //: self.btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.btnAdd.frame = CGRectMake(15, cont2View.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
        self.btnAdd.frame = CGRectMake(15, cont2View.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
        //: self.btnAdd.titleLabel.font = [UIFont systemFontOfSize:14];
        self.btnAdd.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [self.btnAdd setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
        [self.btnAdd setTitleColor:[UIColor status:[TeamData main_teamPath]] forState:UIControlStateNormal];
        //: [self.btnAdd setTitle:[FFFLanguageManager getTextWithKey:@"add_friend_activity_add_friend"] forState:UIControlStateNormal];
        [self.btnAdd setTitle:[SendName streetSmart:[TeamData notiGreenTitleForValue]] forState:UIControlStateNormal];
        //: [self.btnAdd addTarget:self action:@selector(addFriend) forControlEvents:UIControlEventTouchUpInside];
        [self.btnAdd addTarget:self action:@selector(viewFriend) forControlEvents:UIControlEventTouchUpInside];
        //: self.btnAdd.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.btnAdd.backgroundColor = [UIColor status:[TeamData m_viewMsg]];
        //: self.btnAdd.layer.borderWidth = 1;
        self.btnAdd.layer.borderWidth = 1;
        //: self.btnAdd.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
        self.btnAdd.layer.borderColor = [UIColor status:[TeamData mSourceIdent]].CGColor;
        //: self.btnAdd.layer.cornerRadius = 24;
        self.btnAdd.layer.cornerRadius = 24;
        //: [_personView addSubview:self.btnAdd];
        [_personView addSubview:self.btnAdd];

        //: self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        self.btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
        //: self.btnDelete.frame = CGRectMake(15, cont2View.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
        self.btnDelete.frame = CGRectMake(15, cont2View.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 48);
        //: self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
        self.btnDelete.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [self.btnDelete setTitleColor:[UIColor colorWithHexString:@"#FF483D"] forState:UIControlStateNormal];
        [self.btnDelete setTitleColor:[UIColor status:[TeamData main_teamPath]] forState:UIControlStateNormal];
        //: [self.btnDelete setTitle:[FFFLanguageManager getTextWithKey:@"friend_circle_adapter_delete"] forState:UIControlStateNormal];
        [self.btnDelete setTitle:[SendName streetSmart:[TeamData userSuccessShowPath]] forState:UIControlStateNormal];
        //: [self.btnDelete addTarget:self action:@selector(deleteFriend) forControlEvents:UIControlEventTouchUpInside];
        [self.btnDelete addTarget:self action:@selector(indexSuccess) forControlEvents:UIControlEventTouchUpInside];
        //: self.btnDelete.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.btnDelete.backgroundColor = [UIColor status:[TeamData m_viewMsg]];
        //: self.btnDelete.layer.borderWidth = 1;
        self.btnDelete.layer.borderWidth = 1;
        //: self.btnDelete.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
        self.btnDelete.layer.borderColor = [UIColor status:[TeamData mSourceIdent]].CGColor;
        //: self.btnDelete.layer.cornerRadius = 24;
        self.btnDelete.layer.cornerRadius = 24;
        //: [_personView addSubview:self.btnDelete];
        [_personView addSubview:self.btnDelete];
    }
    //: return _personView;
    return _personView;
}

//: - (FFFRemarksView *)changeRemarksView
- (CustomView *)changeRemarksView
{
    //: if(!_changeRemarksView){
    if(!_changeRemarksView){
        //: _changeRemarksView = [[FFFRemarksView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _changeRemarksView = [[CustomView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _changeRemarksView.hidden = YES;

    }
    //: return _changeRemarksView;
    return _changeRemarksView;
}

//: - (ZMONCustomLoadingView *)loadingView
- (MoreView *)loadingView
{
    //: if(!_loadingView){
    if(!_loadingView){
        //: _loadingView = [[ZMONCustomLoadingView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _loadingView = [[MoreView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _loadingView;
    return _loadingView;
}
//: - (ZMONReportUserView *)reprotView
- (ReadView *)reprotView
{
    //: if(!_reprotView){
    if(!_reprotView){
        //: _reprotView = [[ZMONReportUserView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotView = [[ReadView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotView.delegate = self;
        _reprotView.delegate = self;
    }
    //: return _reprotView;
    return _reprotView;
}

//: -(void)didTouchSubmitButton:(NSString *)reason
-(void)isStatus:(NSString *)reason
{
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"contact"] = reason?:@"";
    dict[[TeamData showAfterFormat]] = reason?:@"";
    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/other/feedback"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager empty:[NSString stringWithFormat:[TeamData mainClickTitle]] change:dict time:NO ting:^(id responseObject) {
    //: } failed:^(id responseObject, NSError *error) {
    } showResponseFailed:^(id responseObject, NSError *error) {
    //: }];
    }];

    //: [self.view addSubview:self.reprotNextView];
    [self.view addSubview:self.reprotNextView];
    //: [self.reprotNextView animationShow];
    [self.reprotNextView thoughtImage];

}

//: - (ZMONReportNextView *)reprotNextView
- (ReportTitleView *)reprotNextView
{
    //: if(!_reprotNextView){
    if(!_reprotNextView){
        //: _reprotNextView = [[ZMONReportNextView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotNextView = [[ReportTitleView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotNextView.delegate = self;
        _reprotNextView.delegate = self;
    }
    //: return _reprotNextView;
    return _reprotNextView;

}
//: - (void)didTouchBlackButton
- (void)buttonItem
{
    //: [self.view addSubview:self.reprotBlackView];
    [self.view addSubview:self.reprotBlackView];
//    self.reprotBlackView.userID = self.userId;
    //: [self.reprotBlackView animationShow];
    [self.reprotBlackView bar];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.reprotBlackView.speiceBackBlock = ^(NSString *Name){
    self.reprotBlackView.speiceBackBlock = ^(NSString *Name){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {
        [[NIMSDK sharedSDK].userManager addToBlackList:self.userId completion:^(NSError *error) {

                   //: if (!error) {
                   if (!error) {
                       //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"group_chat_avatar_activity_add_black_success"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[SendName streetSmart:[TeamData mDismissData]] duration:2.0f position:CSToastPositionCenter];
                   //: }else{
                   }else{
                       //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_add_black_failed"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[SendName streetSmart:[TeamData mainNextNameUrl]] duration:2.0f position:CSToastPositionCenter];

                   }
        //: }];
        }];


        //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        //: option.isDeleteRoamMessage = YES;
        option.isDeleteRoamMessage = YES;
        //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        //: [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: }];
        }];

        //: [self.navigationController popToRootViewControllerAnimated:YES];
        [self.navigationController popToRootViewControllerAnimated:YES];

    //: };
    };


}
//: - (void)didTouchDeleteButton
- (void)scoopHeight
{
    //: [self.view addSubview:self.reprotDeleteView];
    [self.view addSubview:self.reprotDeleteView];
//    self.reprotDeleteView.userID = self.userId
    //: [self.reprotDeleteView animationShow];
    [self.reprotDeleteView user];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: self.reprotDeleteView.speiceBackBlock = ^(NSString *Name){
    self.reprotDeleteView.speiceBackBlock = ^(NSString *Name){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [[NIMSDK sharedSDK].userManager deleteFriend:self.userId
        [[NIMSDK sharedSDK].userManager deleteFriend:self.userId
                                         //: removeAlias:[[NTESBundleSetting sharedConfig] autoRemoveAlias]
                                         removeAlias:[[EnvironmentSetting configLocation] coupeContentCrimson]
                                          //: completion:^(NSError *error) {
                                          completion:^(NSError *error) {

            //: if (!error) {
            if (!error) {
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_delete_success"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[SendName streetSmart:[TeamData m_recordContent]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[SendName streetSmart:[TeamData kMakeId]] duration:2.0f position:CSToastPositionCenter];
            }
        //: }];
        }];


        //: NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        NIMDeleteRecentSessionOption *option = [[NIMDeleteRecentSessionOption alloc] init];
        //: option.isDeleteRoamMessage = YES;
        option.isDeleteRoamMessage = YES;
        //: NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:self.userId type:NIMSessionTypeP2P];
        //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
        //: [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        [[[NIMSDK sharedSDK] conversationManager] deleteRecentSession:recent option:option completion:^(NSError * _Nullable error) {
        //: }];
        }];

        //: [self.navigationController popToRootViewControllerAnimated:YES];
        [self.navigationController popToRootViewControllerAnimated:YES];

    //: };
    };
}

//: - (ZMONReportBlackView *)reprotBlackView
- (GreenishView *)reprotBlackView
{
    //: if(!_reprotBlackView){
    if(!_reprotBlackView){
        //: _reprotBlackView = [[ZMONReportBlackView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotBlackView = [[GreenishView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _reprotBlackView;
    return _reprotBlackView;

}

//: - (ZMONReportDeleteView *)reprotDeleteView
- (OnRedView *)reprotDeleteView
{
    //: if(!_reprotDeleteView){
    if(!_reprotDeleteView){
        //: _reprotDeleteView = [[ZMONReportDeleteView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotDeleteView = [[OnRedView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _reprotDeleteView;
    return _reprotDeleteView;
}

//: @end
@end