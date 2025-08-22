
#import <Foundation/Foundation.h>

typedef struct {
    Byte stabiliser;
    Byte *ah;
    unsigned int cliff;
	int childLiterally;
	int heliogramCrisis;
} StructYaData;

@interface YaData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation YaData

+ (instancetype)sharedInstance {
    static YaData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)YaDataToData:(NSString *)value {
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

- (Byte *)YaDataToByte:(StructYaData *)data {
    for (int i = 0; i < data->cliff; i++) {
        data->ah[i] ^= data->stabiliser;
    }
    data->ah[data->cliff] = 0;
	if (data->cliff >= 2) {
		data->childLiterally = data->ah[0];
		data->heliogramCrisis = data->ah[1];
	}
    return data->ah;
}

- (NSString *)StringFromYaData:(StructYaData *)data {
    return [NSString stringWithUTF8String:(char *)[self YaDataToByte:data]];
}

//: 确认转发
- (NSString *)dreamHmUrl {
    /* static */ NSString *dreamHmUrl = nil;
    if (!dreamHmUrl) {
		NSString *origin = @"7A3C3375333975203178120C98";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){157, (Byte *)data.bytes, 12, 188, 19};
        dreamHmUrl = [self StringFromYaData:&value];
    }
    return dreamHmUrl;
}

//: 消息合并转发失败
- (NSString *)noti_afterId {
    /* static */ NSString *noti_afterId = nil;
    if (!noti_afterId) {
		NSString *origin = @"A5F5CBA5C2ECA6D3CBA6FAF5ABFEEFA6CCD2A6E7F2ABF7E664";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){67, (Byte *)data.bytes, 24, 14, 53};
        noti_afterId = [self StringFromYaData:&value];
    }
    return noti_afterId;
}

//: /team/getTeamSetting
- (NSString *)kTextFactorMsg {
    /* static */ NSString *kTextFactorMsg = nil;
    if (!kTextFactorMsg) {
		NSString *origin = @"297263676B296163725263676B556372726F686114";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){6, (Byte *)data.bytes, 20, 183, 146};
        kTextFactorMsg = [self StringFromYaData:&value];
    }
    return kTextFactorMsg;
}

//: canSendText
- (NSString *)noti_detectHandleUrl {
    /* static */ NSString *noti_detectHandleUrl = nil;
    if (!noti_detectHandleUrl) {
		NSString *origin = @"83818EB3858E84B4859894E0";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){224, (Byte *)data.bytes, 11, 216, 204};
        noti_detectHandleUrl = [self StringFromYaData:&value];
    }
    return noti_detectHandleUrl;
}

//: Asia/Shanghai
- (NSString *)userObjectMessage {
    /* static */ NSString *userObjectMessage = nil;
    if (!userObjectMessage) {
		NSString *origin = @"23110B034D310A030C050A030B04";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){98, (Byte *)data.bytes, 13, 146, 10};
        userObjectMessage = [self StringFromYaData:&value];
    }
    return userObjectMessage;
}

//: 删除成功
- (NSString *)dreamHmId {
    /* static */ NSString *dreamHmId = nil;
    if (!dreamHmId) {
		NSString *origin = @"335E763F4F72305E46335C49B7";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){214, (Byte *)data.bytes, 12, 255, 125};
        dreamHmId = [self StringFromYaData:&value];
    }
    return dreamHmId;
}

//: 不允许文字
- (NSString *)kRecommendIdent {
    /* static */ NSString *kRecommendIdent = nil;
    if (!kRecommendIdent) {
		NSString *origin = @"B1EDD8B0D0D4BDFBEDB3C3D2B0F8C2BE";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){85, (Byte *)data.bytes, 15, 135, 216};
        kRecommendIdent = [self StringFromYaData:&value];
    }
    return kRecommendIdent;
}

//: KEKENotificationLanguageChanged
- (NSString *)userDraftData {
    /* static */ NSString *userDraftData = nil;
    if (!userDraftData) {
		NSString *origin = @"C0CEC0CEC5E4FFE2EDE2E8EAFFE2E4E5C7EAE5ECFEEAECEEC8E3EAE5ECEEEFF9";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){139, (Byte *)data.bytes, 31, 195, 120};
        userDraftData = [self StringFromYaData:&value];
    }
    return userDraftData;
}

//: activity_friend_verify_info
- (NSString *)showCrisisName {
    /* static */ NSString *showCrisisName = nil;
    if (!showCrisisName) {
		NSString *origin = @"B0B2A5B8A7B8A5A88EB7A3B8B4BFB58EA7B4A3B8B7A88EB8BFB7BE8B";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){209, (Byte *)data.bytes, 27, 41, 247};
        showCrisisName = [self StringFromYaData:&value];
    }
    return showCrisisName;
}

//: SELF MATCHES %@
- (NSString *)m_containerMsg {
    /* static */ NSString *m_containerMsg = nil;
    if (!m_containerMsg) {
		NSString *origin = @"ADBBB2B8DEB3BFAABDB6BBADDEDBBEA3";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){254, (Byte *)data.bytes, 15, 65, 64};
        m_containerMsg = [self StringFromYaData:&value];
    }
    return m_containerMsg;
}

//: message_helper_apply_to_group
- (NSString *)userChildValue {
    /* static */ NSString *userChildValue = nil;
    if (!userChildValue) {
		NSString *origin = @"6E6670706264665C6B666F7366715C6273736F7A5C776C5C64716C76730A";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){3, (Byte *)data.bytes, 29, 200, 103};
        userChildValue = [self StringFromYaData:&value];
    }
    return userChildValue;
}

//: group_chat_avatar_activity_add_black_success
- (NSString *)dreamGangLetterNextIdent {
    /* static */ NSString *dreamGangLetterNextIdent = nil;
    if (!dreamGangLetterNextIdent) {
		NSString *origin = @"5F4A574D48675B50594C67594E594C594A67595B4C514E514C4167595C5C675A54595B53674B4D5B5B5D4B4B69";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){56, (Byte *)data.bytes, 44, 161, 233};
        dreamGangLetterNextIdent = [self StringFromYaData:&value];
    }
    return dreamGangLetterNextIdent;
}

//: hant
- (NSString *)notiPotentialUrl {
    /* static */ NSString *notiPotentialUrl = nil;
    if (!notiPotentialUrl) {
		NSString *origin = @"7F767963EA";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){23, (Byte *)data.bytes, 4, 90, 110};
        notiPotentialUrl = [self StringFromYaData:&value];
    }
    return notiPotentialUrl;
}

//: 转发失败
- (NSString *)appTotalerviewGreenOilMessage {
    /* static */ NSString *appTotalerviewGreenOilMessage = nil;
    if (!appTotalerviewGreenOilMessage) {
		NSString *origin = @"90C5D49DF7E99DDCC990CCDD83";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){120, (Byte *)data.bytes, 12, 238, 193};
        appTotalerviewGreenOilMessage = [self StringFromYaData:&value];
    }
    return appTotalerviewGreenOilMessage;
}

//: text
- (NSString *)m_separatePathValue {
    /* static */ NSString *m_separatePathValue = nil;
    if (!m_separatePathValue) {
		NSString *origin = @"2C3D202C65";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){88, (Byte *)data.bytes, 4, 60, 95};
        m_separatePathValue = [self StringFromYaData:&value];
    }
    return m_separatePathValue;
}

//: YYYY-MM-dd HH:mm:ss
- (NSString *)main_withCellName {
    /* static */ NSString *main_withCellName = nil;
    if (!main_withCellName) {
		NSString *origin = @"17171717630303632A2A6E0606742323743D3DB1";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){78, (Byte *)data.bytes, 19, 9, 107};
        main_withCellName = [self StringFromYaData:&value];
    }
    return main_withCellName;
}

//: checksum
- (NSString *)k_centerWoodenTitle {
    /* static */ NSString *k_centerWoodenTitle = nil;
    if (!k_centerWoodenTitle) {
		NSString *origin = @"3A313C3A322A2C344F";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){89, (Byte *)data.bytes, 8, 67, 225};
        k_centerWoodenTitle = [self StringFromYaData:&value];
    }
    return k_centerWoodenTitle;
}

//: zh-CHS
- (NSString *)appGivenKey {
    /* static */ NSString *appGivenKey = nil;
    if (!appGivenKey) {
		NSString *origin = @"E7F5B0DED5CE71";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){157, (Byte *)data.bytes, 6, 7, 188};
        appGivenKey = [self StringFromYaData:&value];
    }
    return appGivenKey;
}

//: http
- (NSString *)notiManagerDismissStr {
    /* static */ NSString *notiManagerDismissStr = nil;
    if (!notiManagerDismissStr) {
		NSString *origin = @"4559595D0C";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){45, (Byte *)data.bytes, 4, 125, 208};
        notiManagerDismissStr = [self StringFromYaData:&value];
    }
    return notiManagerDismissStr;
}

//: 消息撤回失败，请重试
- (NSString *)userComplyDrivewayStr {
    /* static */ NSString *userComplyDrivewayStr = nil;
    if (!userComplyDrivewayStr) {
		NSString *origin = @"16467816715F166254156B6E1554411844551F4C7C185F4719777D185F6511";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){240, (Byte *)data.bytes, 30, 220, 63};
        userComplyDrivewayStr = [self StringFromYaData:&value];
    }
    return userComplyDrivewayStr;
}

//: 撤回附言
- (NSString *)mainMNimValue {
    /* static */ NSString *mainMNimValue = nil;
    if (!mainMNimValue) {
		NSString *origin = @"7D093F7E000572021F73331BC1";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){155, (Byte *)data.bytes, 12, 43, 168};
        mainMNimValue = [self StringFromYaData:&value];
    }
    return mainMNimValue;
}

//: 正在输入
- (NSString *)main_imageId {
    /* static */ NSString *main_imageId = nil;
    if (!main_imageId) {
		NSString *origin = @"95DED096EFDB9BCDE096F6D609";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){115, (Byte *)data.bytes, 12, 21, 37};
        main_imageId = [self StringFromYaData:&value];
    }
    return main_imageId;
}

//: msg
- (NSString *)dreamPateManagerKey {
    /* static */ NSString *dreamPateManagerKey = nil;
    if (!dreamPateManagerKey) {
		NSString *origin = @"F0EEFAA5";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){157, (Byte *)data.bytes, 3, 46, 46};
        dreamPateManagerKey = [self StringFromYaData:&value];
    }
    return dreamPateManagerKey;
}

//: black_list_activity_add_black_failed
- (NSString *)main_televisionPath {
    /* static */ NSString *main_televisionPath = nil;
    if (!main_televisionPath) {
		NSString *origin = @"B9B7BAB8B084B7B2A8AF84BAB8AFB2ADB2AFA284BABFBF84B9B7BAB8B084BDBAB2B7BEBFB1";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){219, (Byte *)data.bytes, 36, 56, 207};
        main_televisionPath = [self StringFromYaData:&value];
    }
    return main_televisionPath;
}

//: 收藏失败
- (NSString *)app_leadershipSpouseShowValue {
    /* static */ NSString *app_leadershipSpouseShowValue = nil;
    if (!app_leadershipSpouseShowValue) {
		NSString *origin = @"F280A2FC839BF1B0A5FCA0B163";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){20, (Byte *)data.bytes, 12, 107, 132};
        app_leadershipSpouseShowValue = [self StringFromYaData:&value];
    }
    return app_leadershipSpouseShowValue;
}

//: 选择会话类型
- (NSString *)show_haoId {
    /* static */ NSString *show_haoId = nil;
    if (!show_haoId) {
		NSString *origin = @"5138315E33115C04225017255F09035D263312";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){184, (Byte *)data.bytes, 18, 68, 216};
        show_haoId = [self StringFromYaData:&value];
    }
    return show_haoId;
}

//: sessionname
- (NSString *)kPregnantIdent {
    /* static */ NSString *kPregnantIdent = nil;
    if (!kPregnantIdent) {
		NSString *origin = @"F3E5F3F3E9EFEEEEE1EDE58E";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){128, (Byte *)data.bytes, 11, 169, 158};
        kPregnantIdent = [self StringFromYaData:&value];
    }
    return kPregnantIdent;
}

//: 不能和自己通话哦
- (NSString *)appPinMessage {
    /* static */ NSString *appPinMessage = nil;
    if (!appPinMessage) {
		NSString *origin = @"CC90A5C0AB95CDBAA4C0AF82CD9F99C1A8B2C087B5CDBB8E85";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){40, (Byte *)data.bytes, 24, 168, 249};
        appPinMessage = [self StringFromYaData:&value];
    }
    return appPinMessage;
}

//: watch_multiretweet_activity_confirm_forwarded_to
- (NSString *)notiDjInmateFormat {
    /* static */ NSString *notiDjInmateFormat = nil;
    if (!notiDjInmateFormat) {
		NSString *origin = @"4F594C5B5067554D544C514A5D4C4F5D5D4C67595B4C514E514C41675B57565E514A55675E574A4F594A5C5D5C674C5702";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){56, (Byte *)data.bytes, 48, 209, 12};
        notiDjInmateFormat = [self StringFromYaData:&value];
    }
    return notiDjInmateFormat;
}

//: apple+%@
- (NSString *)userFainText {
    /* static */ NSString *userFainText = nil;
    if (!userFainText) {
		NSString *origin = @"180909151C525C3941";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){121, (Byte *)data.bytes, 8, 157, 20};
        userFainText = [self StringFromYaData:&value];
    }
    return userFainText;
}

//: 您已被禁言
- (NSString *)appBoarData {
    /* static */ NSString *appBoarData = nil;
    if (!appBoarData) {
		NSString *origin = @"B7D3F9B4E6E3B9F3FAB6F7D0B9F9D14D";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){81, (Byte *)data.bytes, 15, 166, 46};
        appBoarData = [self StringFromYaData:&value];
    }
    return appBoarData;
}

//: 01B0FD
- (NSString *)notiSliceMessage {
    /* static */ NSString *notiSliceMessage = nil;
    if (!notiSliceMessage) {
		NSString *origin = @"3E3F4C3E484A10";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){14, (Byte *)data.bytes, 6, 129, 241};
        notiSliceMessage = [self StringFromYaData:&value];
    }
    return notiSliceMessage;
}

//: 收藏成功
- (NSString *)notiNearlySliceFormat {
    /* static */ NSString *notiNearlySliceFormat = nil;
    if (!notiNearlySliceFormat) {
		NSString *origin = @"3B496B354A523B554D3857426B";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){221, (Byte *)data.bytes, 12, 168, 204};
        notiNearlySliceFormat = [self StringFromYaData:&value];
    }
    return notiNearlySliceFormat;
}

//: /other/getNimCheckSum
- (NSString *)notiMovieMsg {
    /* static */ NSString *notiMovieMsg = nil;
    if (!notiMovieMsg) {
		NSString *origin = @"E3A3B8A4A9BEE3ABA9B882A5A18FA4A9AFA79FB9A1A4";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){204, (Byte *)data.bytes, 21, 14, 193};
        notiMovieMsg = [self StringFromYaData:&value];
    }
    return notiMovieMsg;
}

//: friend_verify_avtivity_net_error
- (NSString *)mCurrentlyData {
    /* static */ NSString *mCurrentlyData = nil;
    if (!mCurrentlyData) {
		NSString *origin = @"F5E1FAF6FDF7CCE5F6E1FAF5EACCF2E5E7FAE5FAE7EACCFDF6E7CCF6E1E1FCE119";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){147, (Byte *)data.bytes, 32, 53, 227};
        mCurrentlyData = [self StringFromYaData:&value];
    }
    return mCurrentlyData;
}

//: my_computer
- (NSString *)dreamCounterviewName {
    /* static */ NSString *dreamCounterviewName = nil;
    if (!dreamCounterviewName) {
		NSString *origin = @"B7A385B9B5B7AAAFAEBFA817";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){218, (Byte *)data.bytes, 11, 65, 97};
        dreamCounterviewName = [self StringFromYaData:&value];
    }
    return dreamCounterviewName;
}

//: #FEFECA
- (NSString *)appGuitarMessage {
    /* static */ NSString *appGuitarMessage = nil;
    if (!appGuitarMessage) {
		NSString *origin = @"84E1E2E1E2E4E676";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){167, (Byte *)data.bytes, 7, 58, 73};
        appGuitarMessage = [self StringFromYaData:&value];
    }
    return appGuitarMessage;
}

//: showCustom:
- (NSString *)noti_winterMsg {
    /* static */ NSString *noti_winterMsg = nil;
    if (!noti_winterMsg) {
		NSString *origin = @"948F8890A4929493888ADDCF";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){231, (Byte *)data.bytes, 11, 118, 133};
        noti_winterMsg = [self StringFromYaData:&value];
    }
    return noti_winterMsg;
}

//: showVideo:
- (NSString *)k_drivewayIdent {
    /* static */ NSString *k_drivewayIdent = nil;
    if (!k_drivewayIdent) {
		NSString *origin = @"DDC6C1D9F8C7CACBC194AA";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){174, (Byte *)data.bytes, 10, 7, 9};
        k_drivewayIdent = [self StringFromYaData:&value];
    }
    return k_drivewayIdent;
}

//: user_profile_avtivity_user_info_update_failed
- (NSString *)appAdequateChapterUrl {
    /* static */ NSString *appAdequateChapterUrl = nil;
    if (!appAdequateChapterUrl) {
		NSString *origin = @"010711062B04061B121D18112B1502001D021D000D2B010711062B1D1A121B2B0104101500112B12151D181110E3";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){116, (Byte *)data.bytes, 45, 180, 70};
        appAdequateChapterUrl = [self StringFromYaData:&value];
    }
    return appAdequateChapterUrl;
}

//: message_super_team
- (NSString *)main_relationshipPath {
    /* static */ NSString *main_relationshipPath = nil;
    if (!main_relationshipPath) {
		NSString *origin = @"7A726464767072486462677265486372767A34";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){23, (Byte *)data.bytes, 18, 3, 195};
        main_relationshipPath = [self StringFromYaData:&value];
    }
    return main_relationshipPath;
}

//: curTime
- (NSString *)noti_readMsg {
    /* static */ NSString *noti_readMsg = nil;
    if (!noti_readMsg) {
		NSString *origin = @"415750764B4F4749";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){34, (Byte *)data.bytes, 7, 183, 117};
        noti_readMsg = [self StringFromYaData:&value];
    }
    return noti_readMsg;
}

//: contact_tag_fragment_delete_success
- (NSString *)noti_soundStr {
    /* static */ NSString *noti_soundStr = nil;
    if (!noti_soundStr) {
		NSString *origin = @"E7EBEAF0E5E7F0DBF0E5E3DBE2F6E5E3E9E1EAF0DBE0E1E8E1F0E1DBF7F1E7E7E1F7F7E7";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){132, (Byte *)data.bytes, 35, 136, 57};
        noti_soundStr = [self StringFromYaData:&value];
    }
    return noti_soundStr;
}

//: 被拉黑
- (NSString *)appMovieCenterPotentialIdent {
    /* static */ NSString *appMovieCenterPotentialIdent = nil;
    if (!appMovieCenterPotentialIdent) {
		NSString *origin = @"8DC7CE83EEEC8CDEF4C3";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){101, (Byte *)data.bytes, 9, 69, 121};
        appMovieCenterPotentialIdent = [self StringFromYaData:&value];
    }
    return appMovieCenterPotentialIdent;
}

//: postscript
- (NSString *)noti_withKey {
    /* static */ NSString *noti_withKey = nil;
    if (!noti_withKey) {
		NSString *origin = @"819E8285829283988185EC";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){241, (Byte *)data.bytes, 10, 149, 142};
        noti_withKey = [self StringFromYaData:&value];
    }
    return noti_withKey;
}

//: showImage:
- (NSString *)userVsText {
    /* static */ NSString *userVsText = nil;
    if (!userVsText) {
		NSString *origin = @"8B90978FB195999F9DC214";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){248, (Byte *)data.bytes, 10, 211, 209};
        userVsText = [self StringFromYaData:&value];
    }
    return userVsText;
}

//: canMemberInfo
- (NSString *)k_showName {
    /* static */ NSString *k_showName = nil;
    if (!k_showName) {
		NSString *origin = @"D7D5DAF9D1D9D6D1C6FDDAD2DB65";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){180, (Byte *)data.bytes, 13, 228, 87};
        k_showName = [self StringFromYaData:&value];
    }
    return k_showName;
}

//: contact
- (NSString *)dream_pateTitle {
    /* static */ NSString *dream_pateTitle = nil;
    if (!dream_pateTitle) {
		NSString *origin = @"222E2F35202235A7";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){65, (Byte *)data.bytes, 7, 39, 9};
        dream_pateTitle = [self StringFromYaData:&value];
    }
    return dream_pateTitle;
}

//: luyintaiduan
- (NSString *)app_solutionFormat {
    /* static */ NSString *app_solutionFormat = nil;
    if (!app_solutionFormat) {
		NSString *origin = @"2D3438282F3520282534202F8A";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){65, (Byte *)data.bytes, 12, 149, 178};
        app_solutionFormat = [self StringFromYaData:&value];
    }
    return app_solutionFormat;
}

//: teamgonggao_content_
- (NSString *)app_childPath {
    /* static */ NSString *app_childPath = nil;
    if (!app_childPath) {
		NSString *origin = @"5F4E4A464C44454C4C4A44744844455F4E455F740E";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){43, (Byte *)data.bytes, 20, 135, 125};
        app_childPath = [self StringFromYaData:&value];
    }
    return app_childPath;
}

//: ** 该消息被屏蔽 **
- (NSString *)main_topicWarmStr {
    /* static */ NSString *main_topicWarmStr = nil;
    if (!main_topicWarmStr) {
		NSString *origin = @"3E3E34FCBBB1F2A29CF295BBFCB6BFF1A59BFC80A9343E3E9C";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){20, (Byte *)data.bytes, 24, 227, 166};
        main_topicWarmStr = [self StringFromYaData:&value];
    }
    return main_topicWarmStr;
}

//: contact_fragment_group
- (NSString *)user_touristMsg {
    /* static */ NSString *user_touristMsg = nil;
    if (!user_touristMsg) {
		NSString *origin = @"F6FAFBE1F4F6E1CAF3E7F4F2F8F0FBE1CAF2E7FAE0E5CF";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){149, (Byte *)data.bytes, 22, 163, 95};
        user_touristMsg = [self StringFromYaData:&value];
    }
    return user_touristMsg;
}

//: nonce
- (NSString *)notiScapeName {
    /* static */ NSString *notiScapeName = nil;
    if (!notiScapeName) {
		NSString *origin = @"2F2E2F2224CE";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){65, (Byte *)data.bytes, 5, 125, 174};
        notiScapeName = [self StringFromYaData:&value];
    }
    return notiScapeName;
}

//: NTESMessageTranslate
- (NSString *)userPinUrl {
    /* static */ NSString *userPinUrl = nil;
    if (!userPinUrl) {
		NSString *origin = @"2B312036280016160402003117040B1609041100C0";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){101, (Byte *)data.bytes, 20, 33, 9};
        userPinUrl = [self StringFromYaData:&value];
    }
    return userPinUrl;
}

//: 发送时间超过2分钟的消息不能被撤回
- (NSString *)mRespectivelyIdent {
    /* static */ NSString *mRespectivelyIdent = nil;
    if (!mRespectivelyIdent) {
		NSString *origin = @"4329374F26274031104F31124E10234E192194432E204F3439413C2240102E402709421E2B4E251B4E040D403402433D38FE";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){166, (Byte *)data.bytes, 49, 218, 111};
        mRespectivelyIdent = [self StringFromYaData:&value];
    }
    return mRespectivelyIdent;
}

//: content
- (NSString *)dream_electronName {
    /* static */ NSString *dream_electronName = nil;
    if (!dream_electronName) {
		NSString *origin = @"5A56574D5C574D3D";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){57, (Byte *)data.bytes, 7, 236, 158};
        dream_electronName = [self StringFromYaData:&value];
    }
    return dream_electronName;
}

//: desc
- (NSString *)mainNameTitle {
    /* static */ NSString *mainNameTitle = nil;
    if (!mainNameTitle) {
		NSString *origin = @"18190F1FC3";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){124, (Byte *)data.bytes, 4, 119, 115};
        mainNameTitle = [self StringFromYaData:&value];
    }
    return mainNameTitle;
}

//: 反垃圾消息
- (NSString *)mainNameKey {
    /* static */ NSString *mainNameKey = nil;
    if (!mainNameKey) {
		NSString *origin = @"B7DDDFB7CCD1B7CEECB4E4DAB4D3FD59";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){82, (Byte *)data.bytes, 15, 57, 116};
        mainNameKey = [self StringFromYaData:&value];
    }
    return mainNameKey;
}

//: type
- (NSString *)main_nameSemenFormat {
    /* static */ NSString *main_nameSemenFormat = nil;
    if (!main_nameSemenFormat) {
		NSString *origin = @"4B464F5A15";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){63, (Byte *)data.bytes, 4, 130, 86};
        main_nameSemenFormat = [self StringFromYaData:&value];
    }
    return main_nameSemenFormat;
}

//: 发言频次过快，请%ld秒后重试
- (NSString *)showHmPath {
    /* static */ NSString *showHmPath = nil;
    if (!showHmPath) {
		NSString *origin = @"3E544A33735B32794A3D777A33645C3E647034675733746CFEB7BF3C7C493E4B55325C5633744EE2";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){219, (Byte *)data.bytes, 39, 186, 120};
        showHmPath = [self StringFromYaData:&value];
    }
    return showHmPath;
}

//: 取消标记失败
- (NSString *)mShowValue {
    /* static */ NSString *mShowValue = nil;
    if (!mShowValue) {
		NSString *origin = @"02687101516F0147600F49570243560F534267";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){231, (Byte *)data.bytes, 18, 110, 131};
        mShowValue = [self StringFromYaData:&value];
    }
    return mShowValue;
}

//: accid
- (NSString *)show_formationFormat {
    /* static */ NSString *show_formationFormat = nil;
    if (!show_formationFormat) {
		NSString *origin = @"DBD9D9D3DED4";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){186, (Byte *)data.bytes, 5, 172, 182};
        show_formationFormat = [self StringFromYaData:&value];
    }
    return show_formationFormat;
}

//: translation
- (NSString *)dream_nameData {
    /* static */ NSString *dream_nameData = nil;
    if (!dream_nameData) {
		NSString *origin = @"53554649544B46534E4849FE";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){39, (Byte *)data.bytes, 11, 227, 205};
        dream_nameData = [self StringFromYaData:&value];
    }
    return dream_nameData;
}

//: teamgonggao_title_
- (NSString *)userFurtherUrl {
    /* static */ NSString *userFurtherUrl = nil;
    if (!userFurtherUrl) {
		NSString *origin = @"28393D313B33323B3B3D330328352830390398";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){92, (Byte *)data.bytes, 18, 84, 220};
        userFurtherUrl = [self StringFromYaData:&value];
    }
    return userFurtherUrl;
}

//: 扩展字段
- (NSString *)k_weepKey {
    /* static */ NSString *k_weepKey = nil;
    if (!k_weepKey) {
		NSString *origin = @"8CE3C38FDBFF8FC7FD8CC4DFF3";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){106, (Byte *)data.bytes, 12, 42, 215};
        k_weepKey = [self StringFromYaData:&value];
    }
    return k_weepKey;
}

//: code
- (NSString *)notiHandleWeepName {
    /* static */ NSString *notiHandleWeepName = nil;
    if (!notiHandleWeepName) {
		NSString *origin = @"F4F8F3F208";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){151, (Byte *)data.bytes, 4, 11, 210};
        notiHandleWeepName = [self StringFromYaData:&value];
    }
    return notiHandleWeepName;
}

//: username
- (NSString *)dream_decorateName {
    /* static */ NSString *dream_decorateName = nil;
    if (!dream_decorateName) {
		NSString *origin = @"090F190E121D111913";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){124, (Byte *)data.bytes, 8, 110, 65};
        dream_decorateName = [self StringFromYaData:&value];
    }
    return dream_decorateName;
}

//: 本地反垃圾失败
- (NSString *)show_crisisUrl {
    /* static */ NSString *show_crisisUrl = nil;
    if (!show_crisisUrl) {
		NSString *origin = @"6913236A133F6A00026A110C6A13316A2B3E673B2A0A";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){143, (Byte *)data.bytes, 21, 14, 53};
        show_crisisUrl = [self StringFromYaData:&value];
    }
    return show_crisisUrl;
}

//: #F6B53E
- (NSString *)main_fileId {
    /* static */ NSString *main_fileId = nil;
    if (!main_fileId) {
		NSString *origin = @"E782F286F1F781BE";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){196, (Byte *)data.bytes, 7, 166, 35};
        main_fileId = [self StringFromYaData:&value];
    }
    return main_fileId;
}

//: 发言频次
- (NSString *)appNousIdent {
    /* static */ NSString *appNousIdent = nil;
    if (!appNousIdent) {
		NSString *origin = @"274D532A6A422B6053246E6338";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){194, (Byte *)data.bytes, 12, 77, 30};
        appNousIdent = [self StringFromYaData:&value];
    }
    return appNousIdent;
}

//: 已发送
- (NSString *)dreamCrisisTitle {
    /* static */ NSString *dreamCrisisTitle = nil;
    if (!dreamCrisisTitle) {
		NSString *origin = @"3260653258463E5756BA";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){215, (Byte *)data.bytes, 9, 127, 88};
        dreamCrisisTitle = [self StringFromYaData:&value];
    }
    return dreamCrisisTitle;
}

//: personCardId
- (NSString *)notiTermsKey {
    /* static */ NSString *notiTermsKey = nil;
    if (!notiTermsKey) {
		NSString *origin = @"FAEFF8F9E5E4C9EBF8EEC3EE74";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){138, (Byte *)data.bytes, 12, 95, 71};
        notiTermsKey = [self StringFromYaData:&value];
    }
    return notiTermsKey;
}

//: 确定删除？
- (NSString *)user_nameHockFormat {
    /* static */ NSString *user_nameHockFormat = nil;
    if (!user_nameHockFormat) {
		NSString *origin = @"286E612A61552A476F26566B207350C6";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){207, (Byte *)data.bytes, 15, 223, 141};
        user_nameHockFormat = [self StringFromYaData:&value];
    }
    return user_nameHockFormat;
}

//: zh-CHT
- (NSString *)show_topicMessage {
    /* static */ NSString *show_topicMessage = nil;
    if (!show_topicMessage) {
		NSString *origin = @"B6A4E18F84986F";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){204, (Byte *)data.bytes, 6, 177, 115};
        show_topicMessage = [self StringFromYaData:&value];
    }
    return show_topicMessage;
}

//: luyinshibai
- (NSString *)mainConversationFormat {
    /* static */ NSString *mainConversationFormat = nil;
    if (!mainConversationFormat) {
		NSString *origin = @"1B020E1E19041F1E15161EF0";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){119, (Byte *)data.bytes, 11, 254, 213};
        mainConversationFormat = [self StringFromYaData:&value];
    }
    return mainConversationFormat;
}

//: app_avchat_not_start_with_less_member
- (NSString *)show_sourceViewData {
    /* static */ NSString *show_sourceViewData = nil;
    if (!show_sourceViewData) {
		NSString *origin = @"FEEFEFC0FEE9FCF7FEEBC0F1F0EBC0ECEBFEEDEBC0E8F6EBF7C0F3FAECECC0F2FAF2FDFAED55";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){159, (Byte *)data.bytes, 37, 217, 235};
        show_sourceViewData = [self StringFromYaData:&value];
    }
    return show_sourceViewData;
}

//: 群申请失败
- (NSString *)noti_letterText {
    /* static */ NSString *noti_letterText = nil;
    if (!noti_letterText) {
		NSString *origin = @"99C0DA99EACD96D1C99BDACF96CADB16";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){126, (Byte *)data.bytes, 15, 82, 213};
        noti_letterText = [self StringFromYaData:&value];
    }
    return noti_letterText;
}

//: data
- (NSString *)userCheckData {
    /* static */ NSString *userCheckData = nil;
    if (!userCheckData) {
		NSString *origin = @"2227322754";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){70, (Byte *)data.bytes, 4, 118, 123};
        userCheckData = [self StringFromYaData:&value];
    }
    return userCheckData;
}

//: 被禁言
- (NSString *)main_ahValue {
    /* static */ NSString *main_ahValue = nil;
    if (!main_ahValue) {
		NSString *origin = @"39737A367750397951E3";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){209, (Byte *)data.bytes, 9, 165, 12};
        main_ahValue = [self StringFromYaData:&value];
    }
    return main_ahValue;
}

//: title
- (NSString *)main_emphasizeTitle {
    /* static */ NSString *main_emphasizeTitle = nil;
    if (!main_emphasizeTitle) {
		NSString *origin = @"435E435B5273";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){55, (Byte *)data.bytes, 5, 221, 95};
        main_emphasizeTitle = [self StringFromYaData:&value];
    }
    return main_emphasizeTitle;
}

//: contact_tag_fragment_sure
- (NSString *)notiLineValue {
    /* static */ NSString *notiLineValue = nil;
    if (!notiLineValue) {
		NSString *origin = @"929E9F85909285AE859096AE978390969C949F85AE828483947B";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){241, (Byte *)data.bytes, 25, 193, 152};
        notiLineValue = [self StringFromYaData:&value];
    }
    return notiLineValue;
}

//: watch_multiretweet_activity_person
- (NSString *)show_constraintIdent {
    /* static */ NSString *show_constraintIdent = nil;
    if (!show_constraintIdent) {
		NSString *origin = @"26302532390E3C243D2538233425263434250E30322538273825280E213423223E3FAD";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){81, (Byte *)data.bytes, 34, 92, 164};
        show_constraintIdent = [self StringFromYaData:&value];
    }
    return show_constraintIdent;
}

//: %@.code:%zd
- (NSString *)dreamLeadershipObjectIdent {
    /* static */ NSString *dreamLeadershipObjectIdent = nil;
    if (!dreamLeadershipObjectIdent) {
		NSString *origin = @"24412F626E65643B247B65DD";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){1, (Byte *)data.bytes, 11, 178, 155};
        dreamLeadershipObjectIdent = [self StringFromYaData:&value];
    }
    return dreamLeadershipObjectIdent;
}

//: 添加失败
- (NSString *)app_warmValue {
    /* static */ NSString *app_warmValue = nil;
    if (!app_warmValue) {
		NSString *origin = @"77262A741B31743520792534DA";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){145, (Byte *)data.bytes, 12, 106, 86};
        app_warmValue = [self StringFromYaData:&value];
    }
    return app_warmValue;
}

//: contact_tag_fragment_cancel
- (NSString *)app_mUrl {
    /* static */ NSString *app_mUrl = nil;
    if (!app_mUrl) {
		NSString *origin = @"2F2322382D2F3813382D2B132A3E2D2B21292238132F2D222F2920DC";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){76, (Byte *)data.bytes, 27, 41, 166};
        app_mUrl = [self StringFromYaData:&value];
    }
    return app_mUrl;
}

//: /other/feedback
- (NSString *)k_linePath {
    /* static */ NSString *k_linePath = nil;
    if (!k_linePath) {
		NSString *origin = @"AEEEF5E9E4F3AEE7E4E4E5E3E0E2EA63";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){129, (Byte *)data.bytes, 15, 226, 88};
        k_linePath = [self StringFromYaData:&value];
    }
    return k_linePath;
}

//: http://api-sg.yunxinapi.com/nimserver/translator/textMsg.action
- (NSString *)m_poemData {
    /* static */ NSString *m_poemData = nil;
    if (!m_poemData) {
		NSString *origin = @"302C2C28627777392831752B3F76212D36203136392831763B3735773631352B3D2A2E3D2A772C2A39362B34392C372A772C3D202C152B3F76393B2C31373672";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){88, (Byte *)data.bytes, 63, 167, 56};
        m_poemData = [self StringFromYaData:&value];
    }
    return m_poemData;
}

//: ispush
- (NSString *)noti_watKey {
    /* static */ NSString *noti_watKey = nil;
    if (!noti_watKey) {
		NSString *origin = @"C2D8DBDED8C352";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){171, (Byte *)data.bytes, 6, 107, 8};
        noti_watKey = [self StringFromYaData:&value];
    }
    return noti_watKey;
}

//: recid
- (NSString *)noti_pregnantFormat {
    /* static */ NSString *noti_pregnantFormat = nil;
    if (!noti_pregnantFormat) {
		NSString *origin = @"5F484E4449ED";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){45, (Byte *)data.bytes, 5, 140, 235};
        noti_pregnantFormat = [self StringFromYaData:&value];
    }
    return noti_pregnantFormat;
}

//: teamgonggao_
- (NSString *)showRangeId {
    /* static */ NSString *showRangeId = nil;
    if (!showRangeId) {
		NSString *origin = @"B5A4A0ACA6AEAFA6A6A0AE9EE1";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){193, (Byte *)data.bytes, 12, 187, 203};
        showRangeId = [self StringFromYaData:&value];
    }
    return showRangeId;
}

//: friend_delete_fail
- (NSString *)dream_modeContentText {
    /* static */ NSString *dream_modeContentText = nil;
    if (!dream_modeContentText) {
		NSString *origin = @"CCD8C3CFC4CEF5CECFC6CFDECFF5CCCBC3C655";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){170, (Byte *)data.bytes, 18, 206, 180};
        dream_modeContentText = [self StringFromYaData:&value];
    }
    return dream_modeContentText;
}

//: 发送时间超过2分钟的消息，不能被撤回
- (NSString *)dream_emphasizeValue {
    /* static */ NSString *dream_emphasizeValue = nil;
    if (!dream_emphasizeValue) {
		NSString *origin = @"93F9E79FF6F790E1C09FE1C29EC0F39EC9F14493FEF09FE4E991ECF290C0FE90F7D999CAFA92CEFB9EF5CB9ED4DD90E4D293EDE856";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){118, (Byte *)data.bytes, 52, 203, 193};
        dream_emphasizeValue = [self StringFromYaData:&value];
    }
    return dream_emphasizeValue;
}

//: apns-collapse-id
- (NSString *)showPopUrl {
    /* static */ NSString *showPopUrl = nil;
    if (!showPopUrl) {
		NSString *origin = @"D9C8D6CB95DBD7D4D4D9C8CBDD95D1DCDE";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){184, (Byte *)data.bytes, 16, 135, 73};
        showPopUrl = [self StringFromYaData:&value];
    }
    return showPopUrl;
}

//: showFile:
- (NSString *)dreamSemenMsg {
    /* static */ NSString *dreamSemenMsg = nil;
    if (!dreamSemenMsg) {
		NSString *origin = @"12090E1627080D045BA1";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){97, (Byte *)data.bytes, 9, 251, 74};
        dreamSemenMsg = [self StringFromYaData:&value];
    }
    return dreamSemenMsg;
}

//: NTESMessageRefusedTag
- (NSString *)k_constraintName {
    /* static */ NSString *k_constraintName = nil;
    if (!k_constraintName) {
		NSString *origin = @"CDD7C6D0CEE6F0F0E2E4E6D1E6E5F6F0E6E7D7E2E4A1";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){131, (Byte *)data.bytes, 21, 111, 66};
        k_constraintName = [self StringFromYaData:&value];
    }
    return k_constraintName;
}

//: /team/getStatusSendText
- (NSString *)dreamNousMessage {
    /* static */ NSString *dreamNousMessage = nil;
    if (!dreamNousMessage) {
		NSString *origin = @"B0EBFAFEF2B0F8FAEBCCEBFEEBEAECCCFAF1FBCBFAE7EBC8";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){159, (Byte *)data.bytes, 23, 214, 243};
        dreamNousMessage = [self StringFromYaData:&value];
    }
    return dreamNousMessage;
}

//: 请输入附言
- (NSString *)appLetterMessage {
    /* static */ NSString *appLetterMessage = nil;
    if (!appLetterMessage) {
		NSString *origin = @"B2F5EDB2E4C9BFDFFFB3C3DEB2F2DA30";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){90, (Byte *)data.bytes, 15, 164, 105};
        appLetterMessage = [self StringFromYaData:&value];
    }
    return appLetterMessage;
}

//: app_team_invalid_tip
- (NSString *)notiViewKey {
    /* static */ NSString *notiViewKey = nil;
    if (!notiViewKey) {
		NSString *origin = @"DACBCBE4CFDEDAD6E4D2D5CDDAD7D2DFE4CFD2CBD1";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){187, (Byte *)data.bytes, 20, 134, 195};
        notiViewKey = [self StringFromYaData:&value];
    }
    return notiViewKey;
}

//: showLocation:
- (NSString *)main_makeId {
    /* static */ NSString *main_makeId = nil;
    if (!main_makeId) {
		NSString *origin = @"93888F97AC8F838194898F8EDACF";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){224, (Byte *)data.bytes, 13, 168, 214};
        main_makeId = [self StringFromYaData:&value];
    }
    return main_makeId;
}

//: 消息已发送，但对方拒收
- (NSString *)m_dismissFormat {
    /* static */ NSString *m_dismissFormat = nil;
    if (!m_dismissFormat) {
		NSString *origin = @"12427C12755B114346117B651D74751B4878104972115B4D12624D127F661260427A";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){244, (Byte *)data.bytes, 33, 137, 103};
        m_dismissFormat = [self StringFromYaData:&value];
    }
    return m_dismissFormat;
}

//: invalid event
- (NSString *)dreamToolProgrammingMessage {
    /* static */ NSString *dreamToolProgrammingMessage = nil;
    if (!dreamToolProgrammingMessage) {
		NSString *origin = @"BCBBA3B4B9BCB1F5B0A3B0BBA190";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){213, (Byte *)data.bytes, 13, 158, 232};
        dreamToolProgrammingMessage = [self StringFromYaData:&value];
    }
    return dreamToolProgrammingMessage;
}

//: 申请成功，等待验证
- (NSString *)kLaughKey {
    /* static */ NSString *kLaughKey = nil;
    if (!kLaughKey) {
		NSString *origin = @"0E7D5A01465E0F61790C63760655650E44600C576C004365014668B0";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){233, (Byte *)data.bytes, 27, 177, 239};
        kLaughKey = [self StringFromYaData:&value];
    }
    return kLaughKey;
}

//: 撤回一条消息
- (NSString *)user_apartmentMessage {
    /* static */ NSString *user_apartmentMessage = nil;
    if (!user_apartmentMessage) {
		NSString *origin = @"F581B7F6888DF7AB93F58EB2F5A59BF592BC2E";
		NSData *data = [YaData YaDataToData:origin];
        StructYaData value = (StructYaData){19, (Byte *)data.bytes, 18, 75, 41};
        user_apartmentMessage = [self StringFromYaData:&value];
    }
    return user_apartmentMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TopViewController.m
//  NIM
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionViewController.h"
#import "TopViewController.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+Enable.h"
//: #import "NTESCustomSysNotificationSender.h"
#import "ChildShared.h"
//: #import "NTESSessionConfig.h"
#import "DateTop.h"
//: #import "FFFMediaItem.h"
#import "ModelMessage.h"
//: #import "NTESSessionMsgConverter.h"
#import "PraiseConverter.h"
//: #import "NTESFileLocationHelper.h"
#import "VersionData.h"
//: #import "NTESSessionMsgConverter.h"
#import "PraiseConverter.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESVideoViewController.h"
#import "CustomViewController.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Doing.h"
//: #import "FFFAdvancedTeamCardViewController.h"
#import "PtolemaicSystemViewController.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"
//: #import "NTESPersonalCardViewController.h"
#import "SharedViewController.h"
//: #import "FFFContactSelectViewController.h"
#import "BrandViewController.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "NTESFPSLabel.h"
#import "FormatLabel.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Enable.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "FFFKitMediaFetcher.h"
#import "ParentFetcher.h"
//: #import "FFFKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "NTESSubscribeManager.h"
#import "FindManager.h"
//: #import "FFFInputAtCache.h"
#import "VersionPointCache.h"
//: #import "NTESRedPacketAttachment.h"
#import "BubbleTitleLabel.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "Attachment.h"
//: #import "NTESCellLayoutConfig.h"
#import "ScaleOfMeasurementLayoutConfig.h"
//: #import "NTESMulSelectFunctionBar.h"
#import "TagView.h"
//: #import "NTESMergeForwardSession.h"
#import "MediaSession.h"
//: #import "NTESSessionMultiRetweetContentView.h"
#import "SendBubbleContentView.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFReplyContentView.h"
#import "NoticeTagView.h"
//: #import "NTESThreadTalkSessionViewController.h"
#import "ParentViewController.h"
//: #import "UIView+FFFToast.h"
#import "UIView+ParentToast.h"
//: #import "NTESWhiteboardAttachment.h"
#import "TagAttachment.h"
//: #import "NTESOpenRedPackageSheet.h"
#import "View.h"
//: #import "ZOMNForwardViewController.h"
#import "SightViewController.h"
//: #import "ZMONGalleryImgViewController.h"
#import "PolicyViewController.h"
//: #import "SNLeadCompleteManager.h"
#import "ShowDate.h"
//: #import "FFFKitUtil.h"
#import "OffMore.h"
//: #import "FFFTeamAnnouncementListViewController.h"
#import "TextViewController.h"
//: #import "FFFTeamListDataManager.h"
#import "FindBaseballTeamManager.h"
//: #import "LEEAlert.h"
#import "StraddleAlert.h"
//: #import "ZCHttpManager+Addtionals.h"
#import "TitleManageressManager+StateEmo.h"
//: #import "NTESListHeader.h"
#import "DateView.h"
//: #import "ZMONTranslateView.h"
#import "ButtonCleanView.h"
//: #import "ZMONReportNextView.h"
#import "ReportTitleView.h"
//: #import "ZMONReportBlackView.h"
#import "GreenishView.h"
//: #import "ZMONReportDeleteView.h"
#import "OnRedView.h"
//: #import "ZMONReportHisView.h"
#import "MarginView.h"

//: @import MobileCoreServices;
@import MobileCoreServices;
//: @import AVFoundation;
@import AVFoundation;
//: NSString *kNTESDemoRevokeMessageFromMeNotication = @"kNTESDemoRevokeMessageFromMeNotication";
NSString *noti_singleLabelMessage = @"kNTESDemoRevokeMessageFromMeNotication";
// 定义后台允许的最大时间（1小时）
//: static const NSTimeInterval kMaxBackgroundTime = 60*60;
static const NSTimeInterval dreamKitUrl = 60*60;

//: @interface NTESSessionViewController ()
@interface TopViewController ()
//: <UIImagePickerControllerDelegate,
<UIImagePickerControllerDelegate,
//: UINavigationControllerDelegate,
UINavigationControllerDelegate,
//: UISearchControllerDelegate,
UISearchControllerDelegate,
//: NIMSystemNotificationManagerDelegate,
NIMSystemNotificationManagerDelegate,
//: NIMMediaManagerDelegate,
NIMMediaManagerDelegate,
//: NIMEventSubscribeManagerDelegate,
NIMEventSubscribeManagerDelegate,
//: FFFTeamCardViewControllerDelegate,
ImageTop,
//: NIMChatExtendManagerDelegate,
NIMChatExtendManagerDelegate,
//: UISearchBarDelegate,
UISearchBarDelegate,
//: NTESListHeaderDelegate,
PraiseFind,
//: NIMLoginManagerDelegate,
NIMLoginManagerDelegate,
//: NTESOpenRedPackageSheetDelegate,
DoingUpRowDelegate,
//: NIMTeamManagerDelegate,
NIMTeamManagerDelegate,
//: NTESReportContentDelegate,
TapDelegate,
//: NTESReportNextDelegate,
RowDelegate,
//: NTESReportHisNextDelegate>
OnNotice>
{
    //: BOOL _canSendText;
    BOOL _canSendText;
}

//: @property (nonatomic,strong) NTESCustomSysNotificationSender *notificaionSender;
@property (nonatomic,strong) ChildShared *notificaionSender;
//: @property (nonatomic,strong) NTESSessionConfig *sessionConfig;
@property (nonatomic,strong) DateTop *sessionConfig;
//: @property (nonatomic,strong) UIImagePickerController *imagePicker;
@property (nonatomic,strong) UIImagePickerController *imagePicker;
//: @property (nonatomic,strong) UIView *currentSingleSnapView;
@property (nonatomic,strong) UIView *currentSingleSnapView;
//@property (nonatomic,strong)    FormatLabel *fpsLabel;
//: @property (nonatomic,strong) FFFKitMediaFetcher *mediaFetcher;
@property (nonatomic,strong) ParentFetcher *mediaFetcher;
//: @property (nonatomic,strong) NSMutableArray *selectedMessages;
@property (nonatomic,strong) NSMutableArray *selectedMessages;
//: @property (nonatomic,strong) NTESMulSelectFunctionBar *mulSelectedSureBar;
@property (nonatomic,strong) TagView *mulSelectedSureBar;
//: @property (nonatomic,strong) UIButton *mulSelectCancelBtn;
@property (nonatomic,strong) UIButton *mulSelectCancelBtn;
//: @property (nonatomic,strong) NTESMergeForwardSession *mergeForwardSession;
@property (nonatomic,strong) MediaSession *mergeForwardSession;

//: @property (nonatomic,assign) NSInteger intervalTime;
@property (nonatomic,assign) NSInteger intervalTime;
//: @property (nonatomic,assign) BOOL isSend;
@property (nonatomic,assign) BOOL isSend;
//: @property (nonatomic,strong) NSTimer *timer;
@property (nonatomic,strong) NSTimer *timer;

//: @property (nonatomic, strong) NSDate *backgroundEnterTime;
@property (nonatomic, strong) NSDate *backgroundEnterTime;
//: @property (nonatomic, assign) BOOL shouldRestart;
@property (nonatomic, assign) BOOL shouldRestart;

//: @property (nonatomic, strong) UILabel *invalid_tip;
@property (nonatomic, strong) UILabel *invalid_tip;// 不在群聊view

//: @property (nonatomic, strong) NTESListHeader *header;
@property (nonatomic, strong) DateView *header;
//: @property (nonatomic, strong) ZMONTranslateView *translateView;
@property (nonatomic, strong) ButtonCleanView *translateView;

//: @property (nonatomic, strong) ZMONReportNextView *reprotNextView;
@property (nonatomic, strong) ReportTitleView *reprotNextView;
//: @property (nonatomic, strong) ZMONReportBlackView *reprotBlackView;
@property (nonatomic, strong) GreenishView *reprotBlackView;
//: @property (nonatomic, strong) ZMONReportDeleteView *reprotDeleteView;
@property (nonatomic, strong) OnRedView *reprotDeleteView;
//: @property (nonatomic, strong) NSString *userId;
@property (nonatomic, strong) NSString *userId;
//: @property (nonatomic, strong) ZMONReportHisView *reprotHisNextView;
@property (nonatomic, strong) MarginView *reprotHisNextView;

//: @end
@end


//: @implementation NTESSessionViewController
@implementation TopViewController


//: -(void)viewWillAppear:(BOOL)animated{
-(void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //    self.navigationController.navigationBarHidden = NO;
    //    [self.navigationController.navigationBar setHidden:YES];
    //: [self showNotice];
    [self nonsolidColour];

    // 当前用户不在群聊
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {

            //: self.invalid_tip.hidden = NO;
            self.invalid_tip.hidden = NO;

            //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            //: options.removeOtherClients = YES;
            options.removeOtherClients = YES;
            //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
                //: if (error) {
                if (error) {
                    //: return;
                    return;
                }
                //: [self refreshMessages];
                [self appear];
            //: }];
            }];
        //: } else {
        } else {

//            [[NIMSDK sharedSDK].teamManager fetchTeamMembers:team.teamId
//                                                  completion:^(NSError * _Nullable error, NSArray<NIMTeamMember *> * _Nullable members) {
//                
//                if (members && members.count >= 100) {
//                    
//                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateOnlyManager
//                                                                 inTeam:team.teamId
//                                                             completion:^(NSError *error) {
//                        
//                    }];
//                }
//            }];
        }
    }
}

//: - (void)showNotice {
- (void)nonsolidColour {

    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {
            //: return;
            return;
        }
    }

    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.25 * 1000000000ull)), dispatch_get_main_queue(), ^{

        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        //: if (team && team.announcement && team.announcement.length > 0) {
        if (team && team.announcement && team.announcement.length > 0) {
            //取出标题和内容
            //: NSData* data = [team.announcement dataUsingEncoding:NSUTF8StringEncoding];
            NSData* data = [team.announcement dataUsingEncoding:NSUTF8StringEncoding];
            //: NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            NSArray *datas = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            //: if (datas.count <= 0){
            if (datas.count <= 0){
                //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
                [[ShowDate itemShared] worldView];
                //: return;
                return;
            }

            //: NSString *title = [datas lastObject][@"title"];
            NSString *title = [datas lastObject][[[YaData sharedInstance] main_emphasizeTitle]];
            //: NSString *content = [datas lastObject][@"content"];
            NSString *content = [datas lastObject][[[YaData sharedInstance] dream_electronName]];

            //: NSString *message = [NSString stringWithFormat:@"%@：%@",title,content];
            NSString *message = [NSString stringWithFormat:@"%@：%@",title,content];

            //: if (title.length > 0 || content.length > 0){
            if (title.length > 0 || content.length > 0){

                @
                 //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                 autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                              ;
                //: [[SNLeadCompleteManager sharedInstance] showLeadViewForCompletingUserInfoWithSuperView:self.view withMessage:message cancleBlock:^{
                [[ShowDate itemShared] media:self.view show:message scale:^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: NIMTeamAnnouncementListOption *option = [[NIMTeamAnnouncementListOption alloc] init];
                    WithOption *option = [[WithOption alloc] init];
                    //: option.canCreateAnnouncement = NO;
                    option.canCreateAnnouncement = NO;
                    //: option.announcement = team.announcement;
                    option.announcement = team.announcement;
                    //: option.nick = team.teamName;
                    option.nick = team.teamName;
                    //: option.team = team;
                    option.team = team;
                    //: FFFTeamAnnouncementListViewController *vc = [[FFFTeamAnnouncementListViewController alloc] initWithOption:option];
                    TextViewController *vc = [[TextViewController alloc] initWithHigh:option];
                    //: [self.navigationController pushViewController:vc animated:YES];
                    [self.navigationController pushViewController:vc animated:YES];
                //: }];
                }];
            //: } else {
            } else {
                //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
                [[ShowDate itemShared] worldView];
            }
        }

    //: });
    });
}


//: #pragma mark - Notifitcation
#pragma mark - Notifitcation
//: - (void)vcBecomeActive:(NSNotification *)notification {
- (void)tables:(NSNotification *)notification {
    //: [self showNotice];
    [self nonsolidColour];
    //在聊天页面停留时间长了，再次进来卡死。刷新一下数据
//    [self refreshMessages];

    // 检查是否需要重启
        //: if (self.shouldRestart) {
        if (self.shouldRestart) {
            //: [self refreshMessages];
            [self appear];
            //: self.shouldRestart = NO;
            self.shouldRestart = NO;
        }
}

//: - (void)vcEnterBackground:(NSNotification *)notification
- (void)backgroundText:(NSNotification *)notification
{
        // 记录进入后台的时间
            //: self.backgroundEnterTime = [NSDate date];
            self.backgroundEnterTime = [NSDate date];
            //: NSLog(@"应用进入后台，开始计时: %@", self.backgroundEnterTime);
}
//: - (void)vcEnterForeground:(NSNotification *)notification
- (void)foregrounds:(NSNotification *)notification
{
    // 检查后台停留时间是否超过阈值
       //: if (self.backgroundEnterTime) {
       if (self.backgroundEnterTime) {
           //: NSTimeInterval backgroundTime = [[NSDate date] timeIntervalSinceDate:self.backgroundEnterTime];
           NSTimeInterval backgroundTime = [[NSDate date] timeIntervalSinceDate:self.backgroundEnterTime];
           //: NSLog(@"应用从后台返回，后台停留时间: %.0f秒", backgroundTime);

           //: if (backgroundTime >= kMaxBackgroundTime) {
           if (backgroundTime >= dreamKitUrl) {
               //: self.shouldRestart = YES;
               self.shouldRestart = YES;
           }
       }
       //: self.backgroundEnterTime = nil;
       self.backgroundEnterTime = nil;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: _isSend = YES;
    _isSend = YES;
    //: _canSendText = YES;
    _canSendText = YES;
    //: self.canTapVoiceBtn = YES;
    self.canTapVoiceBtn = YES;

    // 初始化时重置重启标志
     //: self.shouldRestart = NO;
     self.shouldRestart = NO;

    //: _notificaionSender = [[NTESCustomSysNotificationSender alloc] init];
    _notificaionSender = [[ChildShared alloc] init];
//    [self setupNormalNav];
    //: BOOL disableCommandTyping = self.disableCommandTyping || (self.session.sessionType == NIMSessionTypeP2P &&[[NIMSDK sharedSDK].userManager isUserInBlackList:self.session.sessionId]);
    BOOL disableCommandTyping = self.disableCommandTyping || (self.session.sessionType == NIMSessionTypeP2P &&[[NIMSDK sharedSDK].userManager isUserInBlackList:self.session.sessionId]);
    //: if (!disableCommandTyping) {
    if (!disableCommandTyping) {
        //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
    }

//    if ([[EnvironmentSetting sharedConfig] showFps])
//    {
//        self.fpsLabel = [[FormatLabel alloc] initWithFrame:CGRectZero];
//        [self.view addSubview:self.fpsLabel];
//        self.fpsLabel.right = self.view.width;
//        self.fpsLabel.top   = self.tableView.top + self.tableView.contentInset.top;
//    }

    //: if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    {
        //临时订阅这个人的在线状态
        //: [[NTESSubscribeManager sharedManager] subscribeTempUserOnlineState:self.session.sessionId];
        [[FindManager value] nearBar:self.session.sessionId];
        //: [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
        [[NIMSDK sharedSDK].subscribeManager addDelegate:self];
    }

    //: if (self.session.sessionType == NIMSessionTypeTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam) {
        //: [[NIMSDK sharedSDK].teamManager addDelegate:self];
        [[NIMSDK sharedSDK].teamManager addDelegate:self];
    }

    //删除最近会话列表中有人@你的标记
    //: [NTESSessionUtil removeRecentSessionMark:self.session type:NTESRecentSessionMarkTypeAt];
    [DeviceDate comment:self.session dismiss:NTESRecentSessionMarkTypeAt];

    //批量转发
    //: _mergeForwardSession = [[NTESMergeForwardSession alloc] init];
    _mergeForwardSession = [[MediaSession alloc] init];
    //    [self setupSearchVC];

    //: [[NSNotificationCenter defaultCenter] addObserver:self
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             //: selector:@selector(onRevokeMessageFromMe:)
                                             selector:@selector(tags:)
                                                 //: name:kNTESDemoRevokeMessageFromMeNotication
                                                 name:noti_singleLabelMessage
                                               //: object:nil];
                                               object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tables:) name:UIApplicationDidBecomeActiveNotification object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcEnterBackground:) name:UIApplicationDidEnterBackgroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(backgroundText:) name:UIApplicationDidEnterBackgroundNotification object:nil];

    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcEnterForeground:) name:UIApplicationWillEnterForegroundNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(foregrounds:) name:UIApplicationWillEnterForegroundNotification object:nil];




    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(languageChanged:) name:@"KEKENotificationLanguageChanged" object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(contented:) name:[[YaData sharedInstance] userDraftData] object:nil];

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"id"] = self.session.sessionId;
    dict[@"id"] = self.session.sessionId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getTeamSetting"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[[YaData sharedInstance] kTextFactorMsg]] read:dict indicator:NO spaceOf:^(id responseObject) {
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[[YaData sharedInstance] notiHandleWeepName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict selected:[[YaData sharedInstance] userCheckData]];
            //: self.teamSettingConfig = data;
            self.teamSettingConfig = data;

//            NSString *frequency = [data newStringValueForKey:@"frequency"];
            //: NSString *canMemberInfovalue = [data newStringValueForKey:@"canMemberInfo"];
            NSString *canMemberInfovalue = [data tag:[[YaData sharedInstance] k_showName]];
            //: NSString *ispushvalue = [data newStringValueForKey:@"ispush"];
            NSString *ispushvalue = [data tag:[[YaData sharedInstance] noti_watKey]];

            //: self.canMemberInfo = canMemberInfovalue.boolValue;
            self.canMemberInfo = canMemberInfovalue.boolValue;
            //: self.canNoticeMsg = ispushvalue.boolValue;
            self.canNoticeMsg = ispushvalue.boolValue;

//            self.canMemberInfo = [data boolValueForKey:@"canMemberInfo"];
//            self.canNoticeMsg = [data boolValueForKey:@"ispush"];
//            weakself.intervalTime = frequency.integerValue;
//            if (weakself.intervalTime > 0) {
//                weakself.timer = [NSTimer scheduledTimerWithTimeInterval:weakself.intervalTime target:weakself selector:@selector(timerWithTimeInterval) userInfo:nil repeats:YES];
//            }


            //: if (self.session.sessionType == NIMSessionTypeTeam) {
            if (self.session.sessionType == NIMSessionTypeTeam) {
                //: if (self.canNoticeMsg) {
                if (self.canNoticeMsg) {

                    //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.session.sessionId completion:^(NSError *error){
                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateAll inTeam:self.session.sessionId completion:^(NSError *error){

                     //: }];
                     }];

                //: }else{
                }else{
                    //: [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.session.sessionId completion:^(NSError *error){
                    [[[NIMSDK sharedSDK] teamManager] updateNotifyState:NIMTeamNotifyStateNone inTeam:self.session.sessionId completion:^(NSError *error){

                     //: }];
                     }];
                }
            }




        }

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/getStatusSendText"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[[YaData sharedInstance] dreamNousMessage]] read:dict indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[[YaData sharedInstance] notiHandleWeepName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict selected:[[YaData sharedInstance] userCheckData]];
            //: NSString *canSendText = [data stringValueForKey:@"canSendText" defaultValue:@"1"];
            NSString *canSendText = [data noneWith:[[YaData sharedInstance] noti_detectHandleUrl] message:@"1"];
            //: _canSendText = canSendText.boolValue;
            _canSendText = canSendText.boolValue;
        }

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];


    // 群公告
    //: NSString * flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",self.session.sessionId]];
    NSString * flag = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc]initWithFormat:@"%@%@",[[YaData sharedInstance] showRangeId],self.session.sessionId]];
    //: if([@"1" isEqualToString:flag]){
    if([@"1" isEqualToString:flag]){
        //: [[NSUserDefaults standardUserDefaults] setValue:@"0" forKey:[[NSString alloc]initWithFormat:@"%@%@",@"teamgonggao_",self.session.sessionId]];
        [[NSUserDefaults standardUserDefaults] setValue:@"0" forKey:[[NSString alloc]initWithFormat:@"%@%@",[[YaData sharedInstance] showRangeId],self.session.sessionId]];
        //取出标题和内容
        //: NSString * title = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_title_",self.session.sessionId]];
        NSString * title = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",[[YaData sharedInstance] userFurtherUrl],self.session.sessionId]];
        //: NSString * content = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",@"teamgonggao_content_",self.session.sessionId]];
        NSString * content = [[NSUserDefaults standardUserDefaults] valueForKey:[[NSString alloc] initWithFormat:@"%@%@",[[YaData sharedInstance] app_childPath],self.session.sessionId]];

        //: if (title.length > 0 || content.length > 0){
        if (title.length > 0 || content.length > 0){

            //: [LEEAlert alert].config
            [StraddleAlert view].config
                //: .LeeAddTitle(^(UILabel *label) {
                .LeeAddTitle(^(UILabel *label) {
                    //: label.text = title;
                    label.text = title;
                    //: label.textColor = [UIColor darkGrayColor];
                    label.textColor = [UIColor darkGrayColor];
                //: })
                })
                //: .LeeAddContent(^(UILabel *label) {
                .LeeAddContent(^(UILabel *label) {
                    //: label.text = content;
                    label.text = content;
                    //: label.textColor = [UIColor grayColor];
                    label.textColor = [UIColor grayColor];
                //: })
                })
                //: .LeeAddAction(^(LEEAction *action) {
                .LeeAddAction(^(FormatRedApp *action) {

                    //: action.type = LEEActionTypeCancel;
                    action.type = LEEActionTypeCancel;
                    //: action.title = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"];
                    action.title = [SendName streetSmart:[[YaData sharedInstance] notiLineValue]];
                    //: action.titleColor = [UIColor colorWithHexString:@"01B0FD"];
                    action.titleColor = [UIColor status:[[YaData sharedInstance] notiSliceMessage]];
                    //: action.backgroundColor = [UIColor whiteColor];
                    action.backgroundColor = [UIColor whiteColor];
                    //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
                    action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
                    //: action.borderWidth = 1.0f;
                    action.borderWidth = 1.0f;
                    //: action.borderColor = action.backgroundHighlightColor;
                    action.borderColor = action.backgroundHighlightColor;
                //: })
                })
                //: .LeeShow();
                .LeeShow();
        }

    }

    //: [[NIMSDK sharedSDK].loginManager addDelegate:self];
    [[NIMSDK sharedSDK].loginManager addDelegate:self];

    //: self.header = [[NTESListHeader alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), self.view.width, 0)];
    self.header = [[DateView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel]), self.view.width, 0)];
    //: self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    self.header.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    //: self.header.delegate = self;
    self.header.delegate = self;
    //: [self.view addSubview:self.header];
    [self.view addSubview:self.header];

    //: NSInteger step = ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep;
    NSInteger step = ((AppDelegate*)([UIApplication sharedApplication].delegate)).loginStep;
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header will:ListHeaderTypeNetStauts maxImage:@(step)];
}

//: - (void)languageChanged:(NSNotification *)noti {
- (void)contented:(NSNotification *)noti {
    //: [self refreshMessages];
    [self appear];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

/** NIMTeamManagerDelegate
 *  群组成员变动回调,包含被移除的群成员ID
 *
 *  @param team 变动的群组
 *  @param memberIDs 变动的成员ID
 */
//: - (void)onTeamMemberRemoved:(NIMTeam *)team
- (void)onTeamMemberRemoved:(NIMTeam *)team
                //: withMembers:(nullable NSArray<NSString *> *)memberIDs; {
                withMembers:(nullable NSArray<NSString *> *)memberIDs; {

    //: NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAcount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: if ([self.session.sessionId isEqualToString:team.teamId] && [memberIDs containsObject:currentAcount]) {
    if ([self.session.sessionId isEqualToString:team.teamId] && [memberIDs containsObject:currentAcount]) {
        //: self.invalid_tip.hidden = NO;
        self.invalid_tip.hidden = NO;

        //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
        NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
        //: options.removeOtherClients = YES;
        options.removeOtherClients = YES;
        //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
        [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
            //: if (error) {
            if (error) {
                //: return;
                return;
            }
            //: [self refreshMessages];
            [self appear];
        //: }];
        }];
    }
}

//- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    [self.view endEditing:YES];
//}

//: #pragma mark - NIMLoginManagerDelegate
#pragma mark - NIMLoginManagerDelegate
//: - (void)onLogin:(NIMLoginStep)step{
- (void)onLogin:(NIMLoginStep)step{
    //: [self.header refreshWithType:ListHeaderTypeNetStauts value:@(step)];
    [self.header will:ListHeaderTypeNetStauts maxImage:@(step)];
}

//: -(void)timerWithTimeInterval{
-(void)foam{
    //: _isSend = YES;
    _isSend = YES;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    if (self.session.sessionType == NIMSessionTypeP2P && !self.disableOnlineState)
    {
        //: [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
        [[NIMSDK sharedSDK].subscribeManager removeDelegate:self];
        //: [[NTESSubscribeManager sharedManager] unsubscribeTempUserOnlineState:self.session.sessionId];
        [[FindManager value] shareTemp:self.session.sessionId];
    }

    //: if (self.session.sessionType == NIMSessionTypeTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam) {
        //: [[NIMSDK sharedSDK].teamManager removeDelegate:self];
        [[NIMSDK sharedSDK].teamManager removeDelegate:self];
    }

//    [_fpsLabel invalidate];
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    //: [self.timer invalidate];
    [self.timer invalidate];
}



//: - (void)viewDidLayoutSubviews{
- (void)viewDidLayoutSubviews{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    self.fpsLabel.right = self.view.width;
//    self.fpsLabel.top   = self.tableView.top + self.tableView.contentInset.top;
//    self.mulSelectedSureBar.frame = self.sessionInputView.frame;
}

//: - (void)viewDidAppear:(BOOL)animated
- (void)viewDidAppear:(BOOL)animated
{
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];
    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [[NIMSDK sharedSDK].mediaManager stopRecord];
    [[NIMSDK sharedSDK].mediaManager stopRecord];
    //: [[NIMSDK sharedSDK].mediaManager stopPlay];
    [[NIMSDK sharedSDK].mediaManager stopPlay];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];

    //: [[SNLeadCompleteManager sharedInstance] dismissLeadView];
    [[ShowDate itemShared] worldView];
    //    [self.navigationController.navigationBar setHidden:NO];
}

//: - (id<FFFSessionConfig>)sessionConfig
- (id<QuantityelligenceInformationCan>)sessionConfig
{
    //: if (_sessionConfig == nil) {
    if (_sessionConfig == nil) {
        //: _sessionConfig = [[NTESSessionConfig alloc] init];
        _sessionConfig = [[DateTop alloc] init];
        //: _sessionConfig.session = self.session;
        _sessionConfig.session = self.session;
    }
    //: return _sessionConfig;
    return _sessionConfig;
}

//: #pragma mark - FFFTeamCardViewControllerDelegate
#pragma mark - ImageTop

//: - (void)NIMTeamCardVCDidSetTop:(BOOL)isTop {
- (void)uped:(BOOL)isTop {
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:self.session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:self.session];
    //: if (isTop) {
    if (isTop) {
        //: if (!recent) {
        if (!recent) {
            //: [[NIMSDK sharedSDK].conversationManager addEmptyRecentSessionBySession:self.session];
            [[NIMSDK sharedSDK].conversationManager addEmptyRecentSessionBySession:self.session];
        }
        //: NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:self.session];
        NIMAddStickTopSessionParams *params = [[NIMAddStickTopSessionParams alloc] initWithSession:self.session];
        //: [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:nil];
        [NIMSDK.sharedSDK.chatExtendManager addStickTopSession:params completion:nil];
    //: } else {
    } else {
        //: if (recent) {
        if (recent) {
            //: NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session];
            NIMStickTopSessionInfo *stickTopInfo = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session];
            //: [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:nil];
            [NIMSDK.sharedSDK.chatExtendManager removeStickTopSession:stickTopInfo completion:nil];
        //: } else {}
        } else {}
    }
}

//: #pragma mark - NIMEventSubscribeManagerDelegate
#pragma mark - NIMEventSubscribeManagerDelegate
//: - (void)onRecvSubscribeEvents:(NSArray *)events
- (void)onRecvSubscribeEvents:(NSArray *)events
{
    //: for (NIMSubscribeEvent *event in events) {
    for (NIMSubscribeEvent *event in events) {
        //: if ([event.from isEqualToString:self.session.sessionId]) {
        if ([event.from isEqualToString:self.session.sessionId]) {
            //: [self refreshSessionSubTitle:[NTESSessionUtil onlineState:self.session.sessionId detail:YES]];
            [self progress:[DeviceDate container:self.session.sessionId tingFrame:YES]];
        }
    }
}

//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification
- (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification
{
    //: if (!notification.sendToOnlineUsersOnly) {
    if (!notification.sendToOnlineUsersOnly) {
        //: return;
        return;
    }
    //: NSData *data = [[notification content] dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [[notification content] dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data) {
    if (data) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict jsonInteger:@"id"] == (1) && self.session.sessionType == NIMSessionTypeP2P && [notification.sender isEqualToString:self.session.sessionId])
        if ([dict reply:@"id"] == (1) && self.session.sessionType == NIMSessionTypeP2P && [notification.sender isEqualToString:self.session.sessionId])
        {
            //: [self refreshSessionTitle:[NSString stringWithFormat:@"%@...",@"正在输入".ntes_localized]];
            [self value:[NSString stringWithFormat:@"%@...",[[YaData sharedInstance] main_imageId].untilNtes]];

        }
    }


}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate
//: - (void)playAudio:(NSString *)filePath progress:(float)value
- (void)playAudio:(NSString *)filePath progress:(float)value
{
}

//: #pragma mark - UISearchControllerDelegate
#pragma mark - UISearchControllerDelegate

//: - (NSString *)sessionTitle
- (NSString *)nameSession
{
    //: if ([self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if ([self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //: return [FFFLanguageManager getTextWithKey:@"my_computer"];
        return [SendName streetSmart:[[YaData sharedInstance] dreamCounterviewName]];
    }
    //: return [super sessionTitle];
    return [super nameSession];
}

//: - (NSString *)sessionSubTitle
- (NSString *)sessionWith
{
    //: if (self.session.sessionType == NIMSessionTypeP2P && ![self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if (self.session.sessionType == NIMSessionTypeP2P && ![self.session.sessionId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //: return [NTESSessionUtil onlineState:self.session.sessionId detail:YES];
        return [DeviceDate container:self.session.sessionId tingFrame:YES];
    }
    //: return @"";
    return @"";
}

//: - (void)onTextChanged:(id)sender
- (void)reads:(id)sender
{
    //: [_notificaionSender sendTypingState:self.session];
    [_notificaionSender space:self.session];
}


//: #pragma mark - 文本消息
#pragma mark - 文本消息

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers{
- (void)picture:(NSString *)text inputSignal:(NSArray *)atUsers{
    //: [super onSendText:text atUsers:atUsers];
    [super picture:text inputSignal:atUsers];
}

//正则过滤，字符串是否是纯数字
//: - (BOOL)filterInputShouldNumber:(NSString *)str
- (BOOL)doing:(NSString *)str
{
   //: if (str.length == 0) {
   if (str.length == 0) {
        //: return NO;
        return NO;
    }
    //: NSString *regex = @"[0-9]*";
    NSString *regex = @"[0-9]*";
    //: NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    NSPredicate *pred = [NSPredicate predicateWithFormat:[[YaData sharedInstance] m_containerMsg],regex];
    //: if ([pred evaluateWithObject:str]) {
    if ([pred evaluateWithObject:str]) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

// 设置成垃圾消息，发送给服务器
//: - (void)hitClientAntispamWithMessage:(NIMMessage *)message type:(NSString *)type
- (void)clean:(NIMMessage *)message fast:(NSString *)type
{
    //: NIMAntiSpamOption *option = [[NIMAntiSpamOption alloc] init];
    NIMAntiSpamOption *option = [[NIMAntiSpamOption alloc] init];
    //: option.hitClientAntispam = YES;
    option.hitClientAntispam = YES;
    //: message.antiSpamOption = option;
    message.antiSpamOption = option;

    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: NSString *nickName = me.userInfo.nickName;
    NSString *nickName = me.userInfo.nickName;

    //: NSDictionary *dic = @{
    NSDictionary *dic = @{
        //: @"accid" : emptyString(userID),
        [[YaData sharedInstance] show_formationFormat] : cornerViewText(userID),
        //: @"username" : nickName?:@"",
        [[YaData sharedInstance] dream_decorateName] : nickName?:@"",
        //: @"content" : message.text?:@"",
        [[YaData sharedInstance] dream_electronName] : message.text?:@"",
        //: @"recid" : self.session.sessionId?:@"",
        [[YaData sharedInstance] noti_pregnantFormat] : self.session.sessionId?:@"",
        //: @"type" : [NSString stringWithFormat:@"apple+%@",type],
        [[YaData sharedInstance] main_nameSemenFormat] : [NSString stringWithFormat:[[YaData sharedInstance] userFainText],type],
        //: @"sessionname" : self.sessionTitle?:@"",
        [[YaData sharedInstance] kPregnantIdent] : self.nameSession?:@"",
    //: };
    };

    //: [ZCHttpManager refreshForbiddenWordsparams:dic GenerateUser:^(NSDictionary * _Nonnull configDict) {
    [TitleManageressManager scaleSuccess:dic mode:^(NSDictionary * _Nonnull configDict) {

    //: }];
    }];
}
// 发送的所有消息类型最终 都会走这个 sendMessage方法，所以在这拦截
//: - (void)sendMessage:(NIMMessage *)message
- (void)inputTap:(NIMMessage *)message
{
    // 不再群聊 不允许发送消息
    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if (team) {
    if (team) {
        //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:self.session.sessionId];
        //: if (!isMyTeam) {
        if (!isMyTeam) {
            //: return;
            return;
        }
    }

    // 发送频率设置，距离上一次发送消息间隔小于frequency秒，提示 @"发言频次过快，请%ld秒后重试"
    //: if (_intervalTime > 0 && _isSend == NO) {
    if (_intervalTime > 0 && _isSend == NO) {
        //: [self hitClientAntispamWithMessage:message type:@"发言频次"];
        [self clean:message fast:[[YaData sharedInstance] appNousIdent]];
        //: NSString *title = [NSString stringWithFormat:[FFFLanguageManager getTextWithKey:@"发言频次过快，请%ld秒后重试"],(long)_intervalTime];
        NSString *title = [NSString stringWithFormat:[SendName streetSmart:[[YaData sharedInstance] showHmPath]],(long)_intervalTime];
        //: [SVProgressHUD showMessage:title];
        [SVProgressHUD stormCenter:title];
        //: return;
        return;
    }
    //: _isSend = NO;
    _isSend = NO;

    // 发送消息的间隔时间 frequency>0 && 文本消息 && 输入不是数字
    //: if (!_canSendText && message.messageType == NIMMessageTypeText && ![self filterInputShouldNumber:message.text]) {
    if (!_canSendText && message.messageType == NIMMessageTypeText && ![self doing:message.text]) {
        //: [self hitClientAntispamWithMessage:message type:@"不允许文字"];
        [self clean:message fast:[[YaData sharedInstance] kRecommendIdent]];
    }

    //: if ([[NTESBundleSetting sharedConfig] enableLocalAnti] && message.messageType == NIMMessageTypeText)
    if ([[EnvironmentSetting configLocation] hiddenAnti] && message.messageType == NIMMessageTypeText)
    {
        //: NIMLocalAntiSpamCheckOption *checkOption = [[NIMLocalAntiSpamCheckOption alloc] init];
        NIMLocalAntiSpamCheckOption *checkOption = [[NIMLocalAntiSpamCheckOption alloc] init];
        //: checkOption.content = message.text;
        checkOption.content = message.text;
        //: checkOption.replacement = @"*";
        checkOption.replacement = @"*";
        //: NSError *error = nil;
        NSError *error = nil;
        //: NIMLocalAntiSpamCheckResult *result = [[NIMSDK sharedSDK].antispamManager checkLocalAntispam:checkOption error:&error];
        NIMLocalAntiSpamCheckResult *result = [[NIMSDK sharedSDK].antispamManager checkLocalAntispam:checkOption error:&error];
        //: if (error)
        if (error)
        {
            //: [self.view makeToast:@"本地反垃圾失败".ntes_localized];
            [self.view makeToast:[[YaData sharedInstance] show_crisisUrl].untilNtes];
        }
        //: else
        else
        {
            //: switch (result.type) {
            switch (result.type) {
                //: case NIMAntiSpamOperateFileNotExists:
                case NIMAntiSpamOperateFileNotExists:
                    //: break;
                    break;
                //: case NIMAntiSpamResultLocalReplace:
                case NIMAntiSpamResultLocalReplace:
                    //: message.text = result.content;
                    message.text = result.content;
                    //: break;
                    break;
                //: case NIMAntiSpamResultLocalForbidden:
                case NIMAntiSpamResultLocalForbidden:
                    //: [self.view makeToast:@"** 该消息被屏蔽 **".ntes_localized];
                    [self.view makeToast:[[YaData sharedInstance] main_topicWarmStr].untilNtes];
                    //: return;
                    return;
                //: case NIMAntiSpamResultServerForbidden:
                case NIMAntiSpamResultServerForbidden:
                {
                    //: [self hitClientAntispamWithMessage:message type:@"反垃圾消息"];
                    [self clean:message fast:[[YaData sharedInstance] mainNameKey]];
                }
                    //: break;
                    break;
                //: case NIMAntiSpamResultNotHit:
                case NIMAntiSpamResultNotHit:
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
        }
    }
    //: [super sendMessage:message];
    [super inputTap:message];
}



//: #pragma mark - NIMInputActionProtocol
#pragma mark - NIMInputActionProtocol

//: - (BOOL)onTapVoiceBtn:(id)sender {
- (BOOL)content:(id)sender {
    //: return _canSendText;
    return _canSendText;
}

//: #pragma mark - 菜单
#pragma mark - 菜单
//: - (void)onTapMenuItemReply:(FFFMediaItem *)item
- (void)hideTing:(ModelMessage *)item
{
    //: NIMMessage *menuMessage = [self messageForMenu];
    NIMMessage *menuMessage = [self messageForMenu];
    //: if ([self.sessionConfig respondsToSelector:@selector(setThreadMessage:)])
    if ([self.sessionConfig respondsToSelector:@selector(setSizeAcross:)])
    {
        //: [self.sessionConfig setThreadMessage:menuMessage];
        [self.sessionConfig setSizeAcross:menuMessage];
    }

    //: [self.sessionInputView refreshStatus:NIMInputStatusText];
    [self.sessionInputView shoot:NIMInputStatusText];
    //: [self.sessionInputView.toolBar.inputTextView becomeFirstResponder];
    [self.sessionInputView.toolBar.inputTextView becomeFirstResponder];
    //: [self.sessionInputView refreshReplyedContent:menuMessage];
    [self.sessionInputView compartmentName:menuMessage];
    //: [self.sessionInputView sizeToFit];
    [self.sessionInputView sizeToFit];
    //: if (self.session.sessionType != NIMSessionTypeP2P &&
    if (self.session.sessionType != NIMSessionTypeP2P &&
        //: menuMessage)
        menuMessage)
    {
        //: [self.sessionInputView addAtItems:@[[NSString stringWithFormat:@"%@", menuMessage.from]]];
        [self.sessionInputView maxItems:@[[NSString stringWithFormat:@"%@", menuMessage.from]]];
    }
}

//: - (void)onTapMenuItemForword:(FFFMediaItem *)item
- (void)cell:(ModelMessage *)item
{
    //: ZOMNForwardViewController *vc = [[ZOMNForwardViewController alloc]init];
    SightViewController *vc = [[SightViewController alloc]init];
    //: vc.message = [self messageForMenu];
    vc.message = [self messageForMenu];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onTapMenuItemMark:(FFFMediaItem *)item
- (void)monthMark:(ModelMessage *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NSData *messageData = [NIMSDK.sharedSDK.conversationManager encodeMessageToData:message];
    NSData *messageData = [NIMSDK.sharedSDK.conversationManager encodeMessageToData:message];
    //: NIMAddCollectParams *params = [[NIMAddCollectParams alloc] init];
    NIMAddCollectParams *params = [[NIMAddCollectParams alloc] init];
    //: params.data = [[NSString alloc] initWithData:messageData encoding:NSUTF8StringEncoding];
    params.data = [[NSString alloc] initWithData:messageData encoding:NSUTF8StringEncoding];
    //: params.type = 1;
    params.type = 1;
    //: params.uniqueId = message.messageId.MD5String;
    params.uniqueId = message.messageId.show;
    //: [[NIMSDK sharedSDK].chatExtendManager addCollect:params completion:^(NSError * _Nullable error, NIMCollectInfo * _Nullable collectInfo) {
    [[NIMSDK sharedSDK].chatExtendManager addCollect:params completion:^(NSError * _Nullable error, NIMCollectInfo * _Nullable collectInfo) {
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:[FFFLanguageManager getTextWithKey:@"收藏失败"]];
            [SVProgressHUD showErrorWithStatus:[SendName streetSmart:[[YaData sharedInstance] app_leadershipSpouseShowValue]]];
            //: return;
            return;
        }
        //: [SVProgressHUD showSuccessWithStatus:[FFFLanguageManager getTextWithKey:@"收藏成功"]];
        [SVProgressHUD showSuccessWithStatus:[SendName streetSmart:[[YaData sharedInstance] notiNearlySliceFormat]]];
    //: }];
    }];
}

//: - (void)onTapMenuItemPin:(FFFMediaItem *)item
- (void)subFor:(ModelMessage *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NIMMessagePinItem *pinItem = [[NIMMessagePinItem alloc] initWithMessage:message];
    NIMMessagePinItem *pinItem = [[NIMMessagePinItem alloc] initWithMessage:message];

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].chatExtendManager addMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
    [[NIMSDK sharedSDK].chatExtendManager addMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
        //: if (!wself) {
        if (!wself) {
            //: return;
            return;
        }
        //: __strong typeof(wself) sself = wself;
        __strong typeof(wself) sself = wself;
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:@"添加失败".ntes_localized];
            [SVProgressHUD showErrorWithStatus:[[YaData sharedInstance] app_warmValue].untilNtes];
            //: return;
            return;
        }
        //: [sself uiPinMessage:message];
        [sself keyBy:message];
    //: }];
    }];
}

//: - (void)onTapMenuItemUnpin:(FFFMediaItem *)item
- (void)doingToTag:(ModelMessage *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: NIMMessagePinItem *pinItem = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];
    NIMMessagePinItem *pinItem = [NIMSDK.sharedSDK.chatExtendManager pinItemForMessage:message];

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].chatExtendManager removeMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
    [[NIMSDK sharedSDK].chatExtendManager removeMessagePin:pinItem completion:^(NSError * _Nullable error, NIMMessagePinItem * _Nullable item) {
        //: if (!wself) {
        if (!wself) {
            //: return;
            return;
        }
        //: __strong typeof(wself) sself = wself;
        __strong typeof(wself) sself = wself;
        //: if (error) {
        if (error) {
            //: [SVProgressHUD showErrorWithStatus:@"取消标记失败".ntes_localized];
            [SVProgressHUD showErrorWithStatus:[[YaData sharedInstance] mShowValue].untilNtes];
            //: return;
            return;
        }
        //: [sself uiUnpinMessage:message];
        [sself noneClean:message];
    //: }];
    }];

}

//: - (void)onTapMenuItemRevoke:(FFFMediaItem *)item
- (void)row:(ModelMessage *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL enableRevokePostscript = [[NTESBundleSetting sharedConfig] enableRevokeMsgPostscript];
    BOOL enableRevokePostscript = [[EnvironmentSetting configLocation] unsullied];
    //: if (enableRevokePostscript) {
    if (enableRevokePostscript) {
        //: [self doShowInputRevokePostscriptAlert:message];
        [self ironedAlert:message];
    //: } else {
    } else {
        //: [self doRevokeMessage:message postscript:nil];
        [self messageWill:message packet:nil];
    }
}
///获取UTC时间戳
//: - (NSString *)getNowUTCTimeTimestamp{
- (NSString *)show{
//      NSDate *datenow = [NSDate date];
//      NSTimeZone *zone = [NSTimeZone localTimeZone];
//    // 获取指定时间所在时区与UTC时区的间隔秒数
//    NSInteger seconds = [zone secondsFromGMTForDate:[NSDate date]];
//    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970] - seconds];
//    return timeSp;

    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init] ;
        //: [formatter setDateStyle:NSDateFormatterMediumStyle];
        [formatter setDateStyle:NSDateFormatterMediumStyle];
        //: [formatter setTimeStyle:NSDateFormatterShortStyle];
        [formatter setTimeStyle:NSDateFormatterShortStyle];
        //: [formatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"]; 
        [formatter setDateFormat:[[YaData sharedInstance] main_withCellName]]; // ----------设置你想要的格式,hh与HH的区别:分别表示12小时制,24小时制
        //设置时区,这个对于时间的处理有时很重要
        //: NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:@"Asia/Shanghai"];
        NSTimeZone* timeZone = [NSTimeZone timeZoneWithName:[[YaData sharedInstance] userObjectMessage]];
        //: [formatter setTimeZone:timeZone];
        [formatter setTimeZone:timeZone];
        //: NSDate *datenow = [NSDate date];
        NSDate *datenow = [NSDate date];//现在时间,你可以输出来看下是什么格式
        //: NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];
        NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[datenow timeIntervalSince1970]];

        //: return timeSp;
        return timeSp;
}


//: - (void)onTapMenuItemReport:(FFFMediaItem *)item
- (void)record:(ModelMessage *)item
{
    //: [self.view addSubview:self.translateView];
    [self.view addSubview:self.translateView];
    //: [self.translateView animationShow];
    [self.translateView before];
}

//: - (void)onTapMenuItemTranslation:(FFFMediaItem *)item
- (void)get:(ModelMessage *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: NSString *time = [self getNowUTCTimeTimestamp];
    NSString *time = [self show];
    //: NSMutableDictionary *param = @{}.mutableCopy;
    NSMutableDictionary *param = @{}.mutableCopy;
    //: param[@"curTime"] = time;
    param[[[YaData sharedInstance] noti_readMsg]] = time;

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/other/getNimCheckSum"] params:param isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[[YaData sharedInstance] notiMovieMsg]] read:param indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict tag:[[YaData sharedInstance] notiHandleWeepName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict selected:[[YaData sharedInstance] userCheckData]];
            //: NSString *checksum = [data newStringValueForKey:@"checksum"];
            NSString *checksum = [data tag:[[YaData sharedInstance] k_centerWoodenTitle]];
            //: NSString *nonce = [data newStringValueForKey:@"nonce"];
            NSString *nonce = [data tag:[[YaData sharedInstance] notiScapeName]];

            //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: NSString *lang = emptyString([NIMUserDefaults standardUserDefaults].language);
            NSString *lang = cornerViewText([DataMaxDefaults max].language);
            //: if([lang isEqualToString:@"zh"]){
            if([lang isEqualToString:@"zh"]){
                //: lang = @"zh-CHS";
                lang = [[YaData sharedInstance] appGivenKey];
            //: }else if ([lang isEqualToString:@"hant"]){
            }else if ([lang isEqualToString:[[YaData sharedInstance] notiPotentialUrl]]){
                //: lang = @"zh-CHT";
                lang = [[YaData sharedInstance] show_topicMessage];
            }
            //: NSMutableDictionary *dict = @{}.mutableCopy;
            NSMutableDictionary *dict = @{}.mutableCopy;
            //: [dict setObject:userID forKey:@"accid"];
            [dict setObject:userID forKey:[[YaData sharedInstance] show_formationFormat]];
            //: [dict setObject:message.text forKey:@"text"];
            [dict setObject:message.text forKey:[[YaData sharedInstance] m_separatePathValue]];
            //: [dict setObject:lang forKey:@"to"];
            [dict setObject:lang forKey:@"to"];

            //: [ZCHttpManager postWithUrl:@"http://api-sg.yunxinapi.com/nimserver/translator/textMsg.action" checksum:checksum nonce:nonce CurTime:time params:dict success:^(id responseObject) {
            [TitleManageressManager view:[[YaData sharedInstance] m_poemData] searchedOf_strong:checksum select:nonce chromatic:time media:dict min:^(id responseObject) {

                //: NSDictionary *resultDict = (NSDictionary *)responseObject;
                NSDictionary *resultDict = (NSDictionary *)responseObject;
                //: NSLog(@"resultDict-%@",resultDict);
                //: NSString *code = [resultDict newStringValueForKey:@"code"];
                NSString *code = [resultDict tag:[[YaData sharedInstance] notiHandleWeepName]];

                //: if (code.integerValue == 200) {
                if (code.integerValue == 200) {
                    //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
                    NSDictionary *data = [resultDict selected:[[YaData sharedInstance] userCheckData]];
                    //: NSString *translation = [data newStringValueForKey:@"translation"];
                    NSString *translation = [data tag:[[YaData sharedInstance] dream_nameData]];

                    //: message.localExt = @{@"NTESMessageTranslate": translation };
                    message.localExt = @{[[YaData sharedInstance] userPinUrl]: translation };
                    //: [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:^(NSError * _Nullable error) {
                    [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:^(NSError * _Nullable error) {
                        //: [self uiUpdateMessage:message];
                        [self count:message];
                        //: [self.tableView reloadData];
                        [self.tableView reloadData];
                    //: }];
                    }];


                //: }else{
                }else{
                    //: NSString *desc = [resultDict newStringValueForKey:@"desc"];
                    NSString *desc = [resultDict tag:[[YaData sharedInstance] mainNameTitle]];
                    //: [SVProgressHUD showMessage:desc];
                    [SVProgressHUD stormCenter:desc];
                }


            //: } failed:^(id responseObject, NSError *error) {
            } center:^(id responseObject, NSError *error) {
                //: [SVProgressHUD showMessage:error.domain];
                [SVProgressHUD stormCenter:error.domain];
            //: }];
            }];

        }

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {
        //: NSLog(@"%@",error);
    //: }];
    }];

}

//: - (void)scrollsafelyReloadRowAtToMessage:(NIMMessage *)message
- (void)dataConverter:(NIMMessage *)message
{
    //: NSInteger row = [self.interactor findMessageIndex:message];
    NSInteger row = [self.interactor circle:message];
    //: if (row != -1) {
    if (row != -1) {
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
//        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];

        //: if (indexPath) {
        if (indexPath) {
            //: [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
            [self.tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
        //: } else {
        } else {
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }

    }



}


//: - (void)doShowInputRevokePostscriptAlert:(NIMMessage *)message {
- (void)ironedAlert:(NIMMessage *)message {
    //: UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"撤回附言"
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:[[YaData sharedInstance] mainMNimValue]
                                                                     //: message:nil
                                                                     message:nil
                                                              //: preferredStyle:UIAlertControllerStyleAlert];
                                                              preferredStyle:UIAlertControllerStyleAlert];
    //: [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
    [alertVC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        //: textField.placeholder = @"请输入附言";
        textField.placeholder = [[YaData sharedInstance] appLetterMessage];
    //: }];
    }];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:[SendName streetSmart:[[YaData sharedInstance] notiLineValue]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: UITextField *input = alertVC.textFields.firstObject;
        UITextField *input = alertVC.textFields.firstObject;
        //: [weakSelf doRevokeMessage:message postscript:input.text];
        [weakSelf messageWill:message packet:input.text];
    //: }];
    }];
    //: [alertVC addAction:sure];
    [alertVC addAction:sure];
    //: [self presentViewController:alertVC animated:YES completion:nil];
    [self presentViewController:alertVC animated:YES completion:nil];
}

//: - (void)doRevokeMessage:(NIMMessage *)message postscript:(NSString *)postscript{
- (void)messageWill:(NIMMessage *)message packet:(NSString *)postscript{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *collapseId = message.apnsPayload[@"apns-collapse-id"];
    NSString *collapseId = message.apnsPayload[[[YaData sharedInstance] showPopUrl]];
    //: NSDictionary *payload = @{
    NSDictionary *payload = @{
        //: @"apns-collapse-id": collapseId ? : @"",
        [[YaData sharedInstance] showPopUrl]: collapseId ? : @"",
    //: };
    };
    //: NIMRevokeMessageOption *option = [[NIMRevokeMessageOption alloc] init];
    NIMRevokeMessageOption *option = [[NIMRevokeMessageOption alloc] init];
    //: option.apnsContent = [FFFLanguageManager getTextWithKey:@"撤回一条消息"];
    option.apnsContent = [SendName streetSmart:[[YaData sharedInstance] user_apartmentMessage]];
    //: option.apnsPayload = payload;
    option.apnsPayload = payload;
    //: option.shouldBeCounted = ![[NTESBundleSetting sharedConfig] isIgnoreRevokeMessageCount];
    option.shouldBeCounted = ![[EnvironmentSetting configLocation] basket];
    //: option.postscript = postscript;
    option.postscript = postscript;
    //: option.attach = _revokeAttach;
    option.attach = _revokeAttach;
    //: [[NIMSDK sharedSDK].chatManager revokeMessage:message option:option completion:^(NSError * _Nullable error) {
    [[NIMSDK sharedSDK].chatManager revokeMessage:message option:option completion:^(NSError * _Nullable error) {
        //: if (error) {
        if (error) {
            //: if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
            if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
                //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[FFFLanguageManager getTextWithKey:@"发送时间超过2分钟的消息不能被撤回"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] otherButtonTitles:nil, nil];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[SendName streetSmart:[[YaData sharedInstance] mRespectivelyIdent]] delegate:nil cancelButtonTitle:[SendName streetSmart:[[YaData sharedInstance] notiLineValue]] otherButtonTitles:nil, nil];
                //: [alert show];
                [alert show];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_user_info_update_failed"] duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[SendName streetSmart:[[YaData sharedInstance] appAdequateChapterUrl]] duration:2.0 position:CSToastPositionCenter];
            }
        //: } else {
        } else {
            //: NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
            NSMutableDictionary *userInfo = [NSMutableDictionary dictionary];
            //: userInfo[@"msg"] = message;
            userInfo[[[YaData sharedInstance] dreamPateManagerKey]] = message;
            //: userInfo[@"postscript"] = postscript;
            userInfo[[[YaData sharedInstance] noti_withKey]] = postscript;
            //: [[NSNotificationCenter defaultCenter] postNotificationName:kNTESDemoRevokeMessageFromMeNotication
            [[NSNotificationCenter defaultCenter] postNotificationName:noti_singleLabelMessage
                                                                //: object:nil
                                                                object:nil
                                                              //: userInfo:userInfo];
                                                              userInfo:userInfo];

            // 撤回的消息 作为自定义消息发出去
            //: NIMMessage *revocationMessage = [NTESSessionMsgConverter msgWithRevocationMessage:message];
            NIMMessage *revocationMessage = [PraiseConverter team:message];
            //: [weakSelf sendMessage:revocationMessage];
            [weakSelf inputTap:revocationMessage];
        }
    //: }];
    }];
}

//: - (void)onRevokeMessageFromMe:(NSNotification *)note {
- (void)tags:(NSNotification *)note {
    //: NIMMessage *message = note.userInfo[@"msg"];
    NIMMessage *message = note.userInfo[[[YaData sharedInstance] dreamPateManagerKey]];
    //: NSString *postscript = note.userInfo[@"postscript"];
    NSString *postscript = note.userInfo[[[YaData sharedInstance] noti_withKey]];
    //: if (message) {
    if (message) {
        //: FFFMessageModel *model = [self uiDeleteMessage:message];
        MoreModel *model = [self analogDigitalConverter:message];
        //主动撤回场景下，将之前填充的attach内容再次填充保存
        //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:[NTESSessionUtil tipOnMessageRevokedLocal:postscript]
        NIMMessage *tip = [PraiseConverter vertical:[DeviceDate itemLocal:postscript]
                                                 //: revokeAttach:_revokeAttach
                                                 back:_revokeAttach
                                            //: revokeCallbackExt:nil];
                                            sight:nil];
        //: tip.timestamp = model.messageTime;
        tip.timestamp = model.messageTime;
        //[self uiInsertMessages:@[tip]];//撤回消息不显示

        //: tip.timestamp = message.timestamp;
        tip.timestamp = message.timestamp;
        // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];//撤回消息不显示
    }
}

//: - (void)onTapMenuItemDelete:(FFFMediaItem *)item
- (void)marginOfError:(ModelMessage *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL deleteFromServer = [NTESBundleSetting sharedConfig].isDeleteMsgFromServer;
    BOOL deleteFromServer = [EnvironmentSetting configLocation].fromServerDelete;
    //: if (deleteFromServer)
    if (deleteFromServer)
    {
        //: __weak typeof(self) wSelf = self;
        __weak typeof(self) wSelf = self;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
        [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
                                                                    //: ext:@"扩展字段"
                                                                    ext:[[YaData sharedInstance] k_weepKey]
                                                             //: completion:^(NSError * _Nullable error)
                                                             completion:^(NSError * _Nullable error)
        {
            //: if (error)
            if (error)
            {
                //: return;
                return;
            }

            //: [wSelf uiDeleteMessage:message];
            [wSelf analogDigitalConverter:message];
        //: }];
        }];
    }
    //: else
    else
    {
        //: BOOL isDeleteFromDB = [NTESBundleSetting sharedConfig].isDeleteMsgFromDB;
        BOOL isDeleteFromDB = [EnvironmentSetting configLocation].mottle;
        //: NIMDeleteMessageOption *option = [[NIMDeleteMessageOption alloc] init];
        NIMDeleteMessageOption *option = [[NIMDeleteMessageOption alloc] init];
        //: option.removeFromDB = isDeleteFromDB;
        option.removeFromDB = isDeleteFromDB;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message option:option];
        [[NIMSDK sharedSDK].conversationManager deleteMessage:message option:option];
        //: [self uiDeleteMessage:message];
        [self analogDigitalConverter:message];
    }
}

//: - (void)onTapMenuItemMutiSelect:(FFFMediaItem *)item
- (void)representation:(ModelMessage *)item
{
    //: [self switchUIWithSessionState:NIMKitSessionStateSelect];
    [self maxState:NIMKitSessionStateSelect];
}

//: - (void)onTapMenuItemAudio2Text:(FFFMediaItem *)item
- (void)velleity:(ModelMessage *)item
{

}

//: #pragma mark - 消息发送时间截获
#pragma mark - 消息发送时间截获
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if (error.code == NIMRemoteErrorCodeInBlackList)
    if (error.code == NIMRemoteErrorCodeInBlackList)
    {
        //消息打上拉黑拒收标记，方便 UI 显示
        //: message.localExt = @{@"NTESMessageRefusedTag":@(true)};
        message.localExt = @{[[YaData sharedInstance] k_constraintName]:@(true)};
        //: [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager updateMessage:message forSession:self.session completion:nil];

        //插入一条 Tip 提示
        //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:@"消息已发送，但对方拒收".ntes_localized];
        NIMMessage *tip = [PraiseConverter month:[[YaData sharedInstance] m_dismissFormat].untilNtes];
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];

        // 文本消息 && 当前用户被拉黑 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0) {
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0) {
            //: [self hitClientAntispamWithMessage:message type:@"被拉黑"];
            [self clean:message fast:[[YaData sharedInstance] appMovieCenterPotentialIdent]];
        }

    //: } else if (error.code == NIMRemoteErrorCodeTeamBlackList) {
    } else if (error.code == NIMRemoteErrorCodeTeamBlackList) {
        //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:@"您已被禁言"];
        NIMMessage *tip = [PraiseConverter month:[[YaData sharedInstance] appBoarData]];
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];
        [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:self.session completion:nil];

        // 群聊 && 文本消息 && 被禁言的消息 上报
        // 超级群聊 && 文本消息 && 被禁言的消息 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: [self hitClientAntispamWithMessage:message type:@"被禁言"];
            [self clean:message fast:[[YaData sharedInstance] main_ahValue]];
        }

    }
    //: else if (error.code == NIMRemoteErrorCodeTeamAccessError) {
    else if (error.code == NIMRemoteErrorCodeTeamAccessError) {

        // 群聊 && 文本消息 && 被禁言的消息 上报
        // 超级群聊 && 文本消息 && 被禁言的消息 上报
        //: if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        if (message.messageType == NIMMessageTypeText && _intervalTime<=0)
        {
            //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
            //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
            NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
            //: [self hitClientAntispamWithMessage:message type:@""];
            [self clean:message fast:@""];
        }

    }
    //: [super sendMessage:message didCompleteWithError:error];
    [super sendMessage:message didCompleteWithError:error];
}


//: #pragma mark - 录音事件
#pragma mark - 录音事件
//: - (void)onRecordFailed:(NSError *)error
- (void)changeFailed:(NSError *)error
{
    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"luyinshibai"] duration:2 position:CSToastPositionCenter];
    [self.view makeToast:[SendName streetSmart:[[YaData sharedInstance] mainConversationFormat]] duration:2 position:CSToastPositionCenter];
}

//: - (BOOL)recordFileCanBeSend:(NSString *)filepath
- (BOOL)compartment:(NSString *)filepath
{
    //: NSURL *URL = [NSURL fileURLWithPath:filepath];
    NSURL *URL = [NSURL fileURLWithPath:filepath];
    //: AVURLAsset *urlAsset = [[AVURLAsset alloc]initWithURL:URL options:nil];
    AVURLAsset *urlAsset = [[AVURLAsset alloc]initWithURL:URL options:nil];
    //: CMTime time = urlAsset.duration;
    CMTime time = urlAsset.duration;
    //: CGFloat mediaLength = CMTimeGetSeconds(time);
    CGFloat mediaLength = CMTimeGetSeconds(time);
    //: return mediaLength > 2;
    return mediaLength > 2;
}

//: - (void)showRecordFileNotSendReason
- (void)object
{
    //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"luyintaiduan"] duration:0.2f position:CSToastPositionCenter];
    [self.view makeToast:[SendName streetSmart:[[YaData sharedInstance] app_solutionFormat]] duration:0.2f position:CSToastPositionCenter];
}

//: #pragma mark - Cell事件
#pragma mark - Cell事件
//: - (BOOL)onTapCell:(FFFKitEvent *)event
- (BOOL)replyEnable:(DirectionEvent *)event
{
    //: BOOL handled = [super onTapCell:event];
    BOOL handled = [super replyEnable:event];
    //: NSString *eventName = event.eventName;
    NSString *eventName = event.eventName;

    //: if ([eventName isEqualToString:FFFKitEventNameTapContent])
    if ([eventName isEqualToString:notiMessageId])
    {
        //: NIMMessage *message = event.messageModel.message;
        NIMMessage *message = event.messageModel.message;
        //: NSDictionary *actions = [self cellActions];
        NSDictionary *actions = [self thoughtImage];
        //: NSString *value = actions[@(message.messageType)];
        NSString *value = actions[@(message.messageType)];
        //: if (value) {
        if (value) {
            //: SEL selector = NSSelectorFromString(value);
            SEL selector = NSSelectorFromString(value);
            //: if (selector && [self respondsToSelector:selector]) {
            if (selector && [self respondsToSelector:selector]) {
                //: SuppressPerformSelectorLeakWarning([self performSelector:selector withObject:message]);
                SuppressPerformSelectorLeakWarning([self performSelector:selector withObject:message]);
                //: handled = YES;
                handled = YES;
            }
        }
    }
    //: else if ([eventName isEqualToString:FFFKitEventNameTapRepliedContent])
    else if ([eventName isEqualToString:m_restoreMessage])
    {
//        handled = YES;
//        MoreModel *model = event.messageModel;
//        NIMMessage *message = model.parentMessage;
//        if (!message)
//        {
//            [self.view makeToast:@"父消息不存在".ntes_localized];
//            return handled;
//        }
//        ParentViewController *vc = [[ParentViewController alloc] initWithThreadMessage:message];
//        [self.navigationController pushViewController:vc animated:YES];
    }
    //: else if([eventName isEqualToString:FFFKitEventNameTapLabelLink])
    else if([eventName isEqualToString:user_commentFormat])
    {
        //: NSString *link = event.data;
        NSString *link = event.data;
        //: [self openSafari:link];
        [self numericalSum:link];
        //: handled = YES;
        handled = YES;
    }

    //: if (!handled) {
    if (!handled) {
        //: NSAssert(0, @"invalid event");
        NSAssert(0, [[YaData sharedInstance] dreamToolProgrammingMessage]);
    }
    //: return handled;
    return handled;
}

//: - (BOOL)onTapAvatar:(NIMMessage *)message{
- (BOOL)todayses:(NIMMessage *)message{
    //: NSString *userId = [self messageSendSource:message];
    NSString *userId = [self fountainhead:message];
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:userId];
    SharedViewController *vc = [[SharedViewController alloc] initWithByFullId:userId];

    //进入個人名片
    //: if (self.canMemberInfo) {
    if (self.canMemberInfo) {
        //: vc.teamSetingConfig = self.teamSettingConfig;
        vc.teamSetingConfig = self.teamSettingConfig;
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
    //: return YES;
    return YES;
}


//: - (BOOL)onLongPressAvatar:(NIMMessage *)message
- (BOOL)instancing:(NIMMessage *)message
{
    //: NSString *userId = [self messageSendSource:message];
    NSString *userId = [self fountainhead:message];
    //: NIMSessionType sessionType = self.session.sessionType;
    NIMSessionType sessionType = self.session.sessionType;
    //: if ((sessionType == NIMSessionTypeTeam || sessionType == NIMSessionTypeSuperTeam)
    if ((sessionType == NIMSessionTypeTeam || sessionType == NIMSessionTypeSuperTeam)
        //: && ![userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
        && ![userId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount])
    {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        InfoGreenImage *option = [[InfoGreenImage alloc] init];
        //: option.session = self.session;
        option.session = self.session;
        //: option.forbidaAlias = YES;
        option.forbidaAlias = YES;

        //: NSString *nick = [[MyUserKit sharedKit].provider infoByUser:userId option:option].showName;
        NSString *nick = [[Case pastTop].provider consumer:userId message:option].showName;
        //: NSString *text = [NSString stringWithFormat:@"%@%@%@",@"@",nick,@"\u2004"];
        NSString *text = [NSString stringWithFormat:@"%@%@%@",@"@",nick,@"\u2004"];

        //: NIMInputAtItem *item = [[NIMInputAtItem alloc] init];
        EigenvalueOfASquareMatrixMy *item = [[EigenvalueOfASquareMatrixMy alloc] init];
        //: item.uid = userId;
        item.uid = userId;
        //: item.name = nick;
        item.name = nick;
        //: [self.sessionInputView.atCache addAtItem:item];
        [self.sessionInputView.atCache betweenInsertItem:item];

        //: [self.sessionInputView.toolBar insertText:text];
        [self.sessionInputView.toolBar background:text];
    }
    //: return YES;
    return YES;
}

//: - (BOOL)onPressReadLabel:(NIMMessage *)message
- (BOOL)keying:(NIMMessage *)message
{
    //: return YES;
    return YES;
}

//: - (void)onSelectedMessage:(BOOL)selected message:(NIMMessage *)message {
- (void)along:(BOOL)selected quick:(NIMMessage *)message {
    //: if (!_selectedMessages) {
    if (!_selectedMessages) {
        //: _selectedMessages = [NSMutableArray array];
        _selectedMessages = [NSMutableArray array];
    }
    //: if (selected) {
    if (selected) {
        //: [_selectedMessages addObject:message];
        [_selectedMessages addObject:message];
    //: } else {
    } else {
        //: [_selectedMessages removeObject:message];
        [_selectedMessages removeObject:message];
    }
}

//: - (void)onClickReplyButton:(NIMMessage *)message
- (void)inputName:(NIMMessage *)message
{
    //: NTESThreadTalkSessionViewController *vc = [[NTESThreadTalkSessionViewController alloc] initWithThreadMessage:message];
    ParentViewController *vc = [[ParentViewController alloc] initWithObjectButton:message];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: - (NSString *)messageSendSource:(NIMMessage *)message {
- (NSString *)fountainhead:(NIMMessage *)message {
    //: return message.from;
    return message.from;
}

//: #pragma mark - Cell Actions
#pragma mark - Cell Actions
//: - (void)showImage:(NIMMessage *)message
- (void)enableBegin:(NIMMessage *)message
{
    //: NIMImageObject *object = message.messageObject;
    NIMImageObject *object = message.messageObject;
    //: NTESGalleryItem *item = [[NTESGalleryItem alloc] init];
    ItemNoticeText *item = [[ItemNoticeText alloc] init];
    //: item.thumbPath = [object thumbPath];
    item.thumbPath = [object thumbPath];
    //: item.imageURL = [object url];
    item.imageURL = [object url];
    //: item.name = [object displayName];
    item.name = [object displayName];
    //: item.itemId = [message messageId];
    item.itemId = [message messageId];
    //: item.size = [object size];
    item.size = [object size];
    //: item.imagePath = [object path];
    item.imagePath = [object path];

    //: NIMSession *session = [self isMemberOfClass:[NTESSessionViewController class]]? self.session : nil;
    NIMSession *session = [self isMemberOfClass:[TopViewController class]]? self.session : nil;


    //: ZMONGalleryImgViewController *vc = [[ZMONGalleryImgViewController alloc] init];
    PolicyViewController *vc = [[PolicyViewController alloc] init];
    //: vc.imageURL = [object url];
    vc.imageURL = [object url];
    //: vc.imagePath = [object path];
    vc.imagePath = [object path];
    //: vc.message = message;
    vc.message = message;
//    NTESGalleryViewController *vc = [[NTESGalleryViewController alloc] initWithItem:item session:session];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];


//    if(![[NSFileManager defaultManager] fileExistsAtPath:object.thumbPath]){
//        //如果缩略图下跪了，点进看大图的时候再去下一把缩略图
//        __weak typeof(self) wself = self;
//        [[NIMSDK sharedSDK].resourceManager download:object.thumbUrl filepath:object.thumbPath progress:nil completion:^(NSError *error) {
//            if (!error) {
//                [wself uiUpdateMessage:message];
//            }
//        }];
//    }
}

//: - (void)showVideo:(NIMMessage *)message
- (void)sessionUser:(NIMMessage *)message
{
    //: NIMVideoObject *object = message.messageObject;
    NIMVideoObject *object = message.messageObject;
    //: NIMSession *session = [self isMemberOfClass:[NTESSessionViewController class]]? self.session : nil;
    NIMSession *session = [self isMemberOfClass:[TopViewController class]]? self.session : nil;

    //: NTESVideoViewItem *item = [[NTESVideoViewItem alloc] init];
    WithItem *item = [[WithItem alloc] init];
    //: item.path = object.path;
    item.path = object.path;
    //: item.url = object.url;
    item.url = object.url;
    //: item.session = session;
    item.session = session;
    //: item.itemId = object.message.messageId;
    item.itemId = object.message.messageId;

    //: NTESVideoViewController *playerViewController = [[NTESVideoViewController alloc] initWithVideoViewItem:item];
    CustomViewController *playerViewController = [[CustomViewController alloc] initWithNatural:item];
    //: playerViewController.message = message;
    playerViewController.message = message;
    //: [self.navigationController pushViewController:playerViewController animated:YES];
    [self.navigationController pushViewController:playerViewController animated:YES];
    //: if(![[NSFileManager defaultManager] fileExistsAtPath:object.coverPath]){
    if(![[NSFileManager defaultManager] fileExistsAtPath:object.coverPath]){
        //如果封面图下跪了，点进视频的时候再去下一把封面图
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [[NIMSDK sharedSDK].resourceManager download:object.coverUrl filepath:object.coverPath progress:nil completion:^(NSError *error) {
        [[NIMSDK sharedSDK].resourceManager download:object.coverUrl filepath:object.coverPath progress:nil completion:^(NSError *error) {
            //: if (!error) {
            if (!error) {
                //: [wself uiUpdateMessage:message];
                [wself count:message];
            }
        //: }];
        }];
    }
}

//: - (void)showCustom:(NIMMessage *)message
- (void)frame:(NIMMessage *)message
{
   //普通的自定义消息点击事件可以在这里做哦~

    //: NIMCustomObject * cardObject = (NIMCustomObject*)message.messageObject;
    NIMCustomObject * cardObject = (NIMCustomObject*)message.messageObject;

    //: NSString *content = [cardObject.attachment encodeAttachment];
    NSString *content = [cardObject.attachment encodeAttachment];
    //: NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (dataaaaa) {
    if (dataaaaa) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [[dict objectForKey:@"type"] intValue];
            NSInteger type = [[dict objectForKey:[[YaData sharedInstance] main_nameSemenFormat]] intValue];
            //: NSDictionary *datatyl = [dict objectForKey:@"data"];
            NSDictionary *datatyl = [dict objectForKey:[[YaData sharedInstance] userCheckData]];
            //: if (type == 105) {
            if (type == 105) {
                //: NSString *type = [datatyl stringValueForKey:@"type" defaultValue:@"0"];
                NSString *type = [datatyl noneWith:[[YaData sharedInstance] main_nameSemenFormat] message:@"0"];
                //: NSString *personCardId = [datatyl objectForKey:@"personCardId"];
                NSString *personCardId = [datatyl objectForKey:[[YaData sharedInstance] notiTermsKey]];
                //: if ([type boolValue]) {
                if ([type boolValue]) {
                    //: BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:personCardId];
                    BOOL isMyTeam = [[NIMSDK sharedSDK].teamManager isMyTeam:personCardId];
                    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:personCardId];
                    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:personCardId];
//                    if (!team) {
//                        [self.view makeToast:LangKey(@"group_info_activity_group_already_jiesan") duration:2.0 position:CSToastPositionCenter];
//                        return;
//                    }
                    //: if (isMyTeam) {
                    if (isMyTeam) {
                        //: NIMSession *session = [NIMSession session:personCardId type:NIMSessionTypeTeam];
                        NIMSession *session = [NIMSession session:personCardId type:NIMSessionTypeTeam];

//                        TextTagOption *option = [[TextTagOption alloc] init];
//                        option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
//                        ReadOutViewController *vc = [[PtolemaicSystemViewController alloc] initWithTeam:team session:session option:option];
//                        vc.delegate = self;
//                        [self.navigationController pushViewController:vc animated:YES];

                        //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                        TopViewController *vc = [[TopViewController alloc] initWithMedia:session];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];
                    //: } else {
                    } else {
                        //: [self onJionTeamWithTeam:team];
                        [self margin:team];
                    }
                //: } else {
                } else {

                    //: if (![personCardId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
                    if (![personCardId isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
                        //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:personCardId];
                        SharedViewController *vc = [[SharedViewController alloc] initWithByFullId:personCardId];
                        //: [self.navigationController pushViewController:vc animated:YES];
                        [self.navigationController pushViewController:vc animated:YES];
                    }

                }
            }
        }
    }
}



//: - (void)onJionTeamWithTeam:(NIMTeam *)team {
- (void)margin:(NIMTeam *)team {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: if(team.joinMode == NIMTeamJoinModeNoAuth) {
    if(team.joinMode == NIMTeamJoinModeNoAuth) {
        //: [self didApplyToTeamWithMessage:@"" WithTeam:team];
        [self on:@"" team:team];
    //: } else {
    } else {
        //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:[FFFLanguageManager getTextWithKey:@"activity_friend_verify_info"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] otherButtonTitles:nil, nil];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"" message:[SendName streetSmart:[[YaData sharedInstance] showCrisisName]] delegate:nil cancelButtonTitle:[SendName streetSmart:[[YaData sharedInstance] notiLineValue]] otherButtonTitles:nil, nil];
        //: alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        alert.alertViewStyle = UIAlertViewStylePlainTextInput;
        //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
        [alert alertHandler:^(NSInteger index) {
            //: NSString *message = [alert textFieldAtIndex:0].text ? : @"";
            NSString *message = [alert textFieldAtIndex:0].text ? : @"";
            //: [wself didApplyToTeamWithMessage:message WithTeam:team];
            [wself on:message team:team];
        //: }];
        }];
    }

}

//: - (void)handleApplyToTeam:(NSError *)error status:(NIMTeamApplyStatus)status WithId:(NSString *)cardId{
- (void)enable:(NSError *)error monitor:(NIMTeamApplyStatus)status cell:(NSString *)cardId{
    //: if (!error) {
    if (!error) {
        //: switch (status) {
        switch (status) {
            //: case NIMTeamApplyStatusAlreadyInTeam:{
            case NIMTeamApplyStatusAlreadyInTeam:{
                //: NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                TopViewController *vc = [[TopViewController alloc] initWithMedia:session];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
                //: break;
                break;
            }
            //: case NIMTeamApplyStatusWaitForPass:
            case NIMTeamApplyStatusWaitForPass:
                //: [self.view makeToast:@"申请成功，等待验证".nim_localized duration:2.0 position:CSToastPositionCenter];
                [self.view makeToast:[[YaData sharedInstance] kLaughKey].maxColor duration:2.0 position:CSToastPositionCenter];
            //: default:
            default:
                //: break;
                break;
        }
    //: }else{
    }else{
        //: switch (error.code) {
        switch (error.code) {
            //: case NIMRemoteErrorCodeTeamAlreadyIn:
            case NIMRemoteErrorCodeTeamAlreadyIn:
            {
                //                [self.view makeToast:@"已经在群里" duration:2.0 position:CSToastPositionCenter];
                //: NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                NIMSession *session = [NIMSession session:cardId type:NIMSessionTypeTeam];
                //: NTESSessionViewController *vc = [[NTESSessionViewController alloc] initWithSession:session];
                TopViewController *vc = [[TopViewController alloc] initWithMedia:session];
                //: [self.navigationController pushViewController:vc animated:YES];
                [self.navigationController pushViewController:vc animated:YES];
            }
                //: break;
                break;
            //: default:
            default:
                //: [self.view makeToast:@"群申请失败".nim_localized duration:2.0 position:CSToastPositionCenter];
                [self.view makeToast:[[YaData sharedInstance] noti_letterText].maxColor duration:2.0 position:CSToastPositionCenter];
                //: break;
                break;
        }
    }
}

//: - (void)didApplyToTeamWithMessage:(NSString *)message WithTeam:(NIMTeam *)team {
- (void)on:(NSString *)message team:(NIMTeam *)team {

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;

    //: [LEEAlert alert].config
    [StraddleAlert view].config
        //: .LeeAddTitle(^(UILabel *label) {
        .LeeAddTitle(^(UILabel *label) {
            //: NSString *msg = [NSString stringWithFormat:@"%@: %@",[FFFLanguageManager getTextWithKey:@"message_helper_apply_to_group"],team.teamName];
            NSString *msg = [NSString stringWithFormat:@"%@: %@",[SendName streetSmart:[[YaData sharedInstance] userChildValue]],team.teamName];
            //: label.text = msg;
            label.text = msg;
            //: label.textColor = [UIColor grayColor];
            label.textColor = [UIColor grayColor];
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(FormatRedApp *action) {

            //: action.type = LEEActionTypeCancel;
            action.type = LEEActionTypeCancel;
            //: action.title = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"];
            action.title = [SendName streetSmart:[[YaData sharedInstance] app_mUrl]];//@"取消"
            //: action.titleColor = [UIColor grayColor];
            action.titleColor = [UIColor grayColor];
            //: action.backgroundColor = [UIColor whiteColor];
            action.backgroundColor = [UIColor whiteColor];
            //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            //: action.borderWidth = 1.0f;
            action.borderWidth = 1.0f;
            //: action.borderColor = action.backgroundHighlightColor;
            action.borderColor = action.backgroundHighlightColor;
            //: action.clickBlock = ^{
            action.clickBlock = ^{

            //: };
            };
        //: })
        })
        //: .LeeAddAction(^(LEEAction *action) {
        .LeeAddAction(^(FormatRedApp *action) {

            //: action.type = LEEActionTypeDefault;
            action.type = LEEActionTypeDefault;
            //: action.title = [FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"]; 
            action.title = [SendName streetSmart:[[YaData sharedInstance] notiLineValue]]; //@"确定";
            //: action.titleColor = [UIColor redColor];
            action.titleColor = [UIColor redColor];
            //: action.backgroundColor = [UIColor whiteColor];
            action.backgroundColor = [UIColor whiteColor];
            //: action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            action.backgroundHighlightColor = [UIColor colorWithRed:239/255.0f green:239/255.0f blue:239/255.0f alpha:1.0f];
            //: action.borderWidth = 1.0f;
            action.borderWidth = 1.0f;
            //: action.borderColor = action.backgroundHighlightColor;
            action.borderColor = action.backgroundHighlightColor;
            //: action.clickBlock = ^{
            action.clickBlock = ^{

                //: [SVProgressHUD show];
                [SVProgressHUD show];
                //: [[NIMSDK sharedSDK].teamManager applyToTeam:team.teamId
                [[NIMSDK sharedSDK].teamManager applyToTeam:team.teamId
                                                    //: message:message
                                                    message:message
                                                 //: completion:^(NSError *error,NIMTeamApplyStatus applyStatus) {
                                                 completion:^(NSError *error,NIMTeamApplyStatus applyStatus) {
                    //: [SVProgressHUD dismiss];
                    [SVProgressHUD dismiss];
                    //: [wself handleApplyToTeam:error status:applyStatus WithId:team.teamId];
                    [wself enable:error monitor:applyStatus cell:team.teamId];
                //: }];
                }];
            //: };
            };
        //: })
        })
        //: .LeeHeaderColor([UIColor whiteColor])
        .LeeHeaderColor([UIColor whiteColor])
        //: .LeeShow();
        .LeeShow();
}


//: - (void)openSafari:(NSString *)link
- (void)numericalSum:(NSString *)link
{
    //: NSURLComponents *components = [[NSURLComponents alloc] initWithString:link];
    NSURLComponents *components = [[NSURLComponents alloc] initWithString:link];
    //: if (components)
    if (components)
    {
        //: if (!components.scheme)
        if (!components.scheme)
        {
            //默认添加 http
            //: components.scheme = @"http";
            components.scheme = [[YaData sharedInstance] notiManagerDismissStr];
        }
        //: [[UIApplication sharedApplication] openURL:[components URL] options:@{} completionHandler:nil];
        [[UIApplication sharedApplication] openURL:[components URL] options:@{} completionHandler:nil];
    }
}


//: #pragma mark - 导航按钮
#pragma mark - 导航按钮
//: - (void)enterPersonInfoCard:(id)sender
- (void)outsideUser:(id)sender
{
    //: NTESPersonalCardViewController *vc = [[NTESPersonalCardViewController alloc] initWithUserId:self.session.sessionId];
    SharedViewController *vc = [[SharedViewController alloc] initWithByFullId:self.session.sessionId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}


//: - (void)showDeleteSureVCWithTitle:(NSString *)title confirmBlock:(void(^)(void))confirmBlock {
- (void)edgeHeader:(NSString *)title language:(void(^)(void))confirmBlock {
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定".ntes_localized style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定".untilNtes style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: if (confirmBlock) {
        if (confirmBlock) {
            //: confirmBlock();
            confirmBlock();
        }
    //: }];
    }];
    //: UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消".ntes_localized
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消".untilNtes
                                                     //: style:UIAlertActionStyleCancel
                                                     style:UIAlertActionStyleCancel
                                                   //: handler:nil];
                                                   handler:nil];
    //: UIAlertController *sheet = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *sheet = [UIAlertController alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [sheet addAction:sure];
    [sheet addAction:sure];
    //: [sheet addAction:cancel];
    [sheet addAction:cancel];
    //: [self presentViewController:sheet animated:YES completion:nil];
    [self presentViewController:sheet animated:YES completion:nil];
}


//- (void)enterTeamCard:(id)sender {
//    ReadOutViewController *vc = nil;
//    TextTagOption *option = [[TextTagOption alloc] init];
//    option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
//
//    if (self.session.sessionType == NIMSessionTypeTeam) {
//        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
//        if(team.type == NIMTeamTypeAdvanced){
//            vc = [[PtolemaicSystemViewController alloc] initWithTeam:team
//                                                                 session:self.session
//                                                                  option:option];
//            vc.delegate = self;
//        }
//    }
//    if (vc) {
//        [self.navigationController pushViewController:vc animated:YES];
//    }
//}

//: - (void)enterSuperTeamCard:(id)sender{
- (void)afterReplyText:(id)sender{

}

//: #pragma mark - 菜单
#pragma mark - 菜单
//: - (NSArray *)menusItems:(NIMMessage *)message
- (NSArray *)size:(NIMMessage *)message
{
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];
    //: NSArray *defaultItems = [super menusItems:message];
    NSArray *defaultItems = [super size:message];
    //: if (defaultItems) {
    if (defaultItems) {
        //: [items addObjectsFromArray:defaultItems];
        [items addObjectsFromArray:defaultItems];
    }

    //: if ([NTESSessionUtil canMessageBeForwarded:message]) {
    if ([DeviceDate valueForwarded:message]) {
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"转发"] action:@selector(forwardMessage:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:[SendName streetSmart:@"转发"] action:@selector(offed:)]];
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:@"多选".ntes_localized action:@selector(multiSelect:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:@"多选".untilNtes action:@selector(modelSearch:)]];
    }

    //: if ([NTESSessionUtil canMessageBeRevoked:message]) {
    if ([DeviceDate sharedComprise:message]) {
        //: [items addObject:[[UIMenuItem alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"撤回"] action:@selector(revokeMessage:)]];
        [items addObject:[[UIMenuItem alloc] initWithTitle:[SendName streetSmart:@"撤回"] action:@selector(successMessage:)]];
    }

    //: return items;
    return items;

}

//: - (void)cancelMessage:(id)sender {
- (void)sweepMessage:(id)sender {
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: [[NIMSDK sharedSDK].chatManager cancelSendingMessage:message];
    [[NIMSDK sharedSDK].chatManager cancelSendingMessage:message];
}

//: - (void)audio2Text:(id)sender
- (void)pull:(id)sender
{
//    NIMMessage *message = [self messageForMenu];
//    __weak typeof(self) wself = self;
//    NTESAudio2TextViewController *vc = [[NTESAudio2TextViewController alloc] initWithMessage:message];
//    vc.completeHandler = ^(void){
//        [wself uiUpdateMessage:message];
//    };
//    [self presentViewController:vc
//                       animated:YES
//                     completion:nil];
}

//: - (void)deleteMsg:(id)sender
- (void)imageColorRemote:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: BOOL deleteFromServer = [NTESBundleSetting sharedConfig].isDeleteMsgFromServer;
    BOOL deleteFromServer = [EnvironmentSetting configLocation].fromServerDelete;
    //: if (deleteFromServer)
    if (deleteFromServer)
    {
        //: __weak typeof(self) wSelf = self;
        __weak typeof(self) wSelf = self;
        //: [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
        [[NIMSDK sharedSDK].conversationManager deleteMessageFromServer:message
                                                                    //: ext:@"扩展字段"
                                                                    ext:[[YaData sharedInstance] k_weepKey]
                                                             //: completion:^(NSError * _Nullable error)
                                                             completion:^(NSError * _Nullable error)
        {
            //: if (error)
            if (error)
            {
                //: return;
                return;
            }

            //: [wSelf uiDeleteMessage:message];
            [wSelf analogDigitalConverter:message];
        //: }];
        }];
    }
    //: else
    else
    {
        //: [self uiDeleteMessage:message];
        [self analogDigitalConverter:message];
        //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
        [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
    }

}

//: #pragma mark - 转发
#pragma mark - 转发
//: - (void)doMergerForwardToSession:(NIMSession *)session {
- (void)marginSession:(NIMSession *)session {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NTESMergeForwardTask *task = [_mergeForwardSession forwardTaskWithMessages:_selectedMessages process:nil completion:^(NSError * _Nonnull error, NIMMessage * _Nonnull message) {
    ForwardsTask *task = [_mergeForwardSession easingTable:_selectedMessages heading:nil session:^(NSError * _Nonnull error, NIMMessage * _Nonnull message) {
        //: if (error) {
        if (error) {
            //: NSString *msg = [NSString stringWithFormat:@"%@：%zd",@"消息合并转发失败".ntes_localized, error.code];
            NSString *msg = [NSString stringWithFormat:@"%@：%zd",[[YaData sharedInstance] noti_afterId].untilNtes, error.code];
            //: [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
        //: } else {
        } else {
            //: [weakSelf forwardMessage:message toSession:session];
            [weakSelf speechReadMessage:message ginMill:session];
        }
    //: }];
    }];
    //: [task resume];
    [task teamButton];
}

//: - (void)switchUIWithSessionState:(NIMKitSessionState)state {
- (void)maxState:(NIMKitSessionState)state {
    //: switch (state) {
    switch (state) {
        //: case NIMKitSessionStateSelect:
        case NIMKitSessionStateSelect:
        {
            //: [self setupSelectedNav];
            [self close];
            //: [self setSessionState:NIMKitSessionStateSelect];
            [self setBubble:NIMKitSessionStateSelect];
            //: [self.view addSubview:self.mulSelectedSureBar];
            [self.view addSubview:self.mulSelectedSureBar];
            //: break;
            break;
        }
        //: case NIMKitSessionStateNormal:
        case NIMKitSessionStateNormal:
        //: default:
        default:
        {
            //: [self.mulSelectedSureBar removeFromSuperview];
            [self.mulSelectedSureBar removeFromSuperview];
            //: [self setSessionState:NIMKitSessionStateNormal];
            [self setBubble:NIMKitSessionStateNormal];
//            [self setupNormalNav];
            //: _selectedMessages = nil;
            _selectedMessages = nil;
            //: break;
            break;
        }
    }
}

//: - (void)cancelSelected:(id)sender {
- (void)touched:(id)sender {
    //: [self switchUIWithSessionState:NIMKitSessionStateNormal];
    [self maxState:NIMKitSessionStateNormal];
}

//: - (void)confirmSelected:(id)sender {
- (void)achromaticColorQueryed:(id)sender {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self selectForwardSessionCompletion:^(NIMSession *targetSession) {
    [self omit:^(NIMSession *targetSession) {
        //转发批量消息
        //: [weakSelf doMergerForwardToSession:targetSession];
        [weakSelf marginSession:targetSession];
        //返回正常页面
        //: [weakSelf switchUIWithSessionState:NIMKitSessionStateNormal];
        [weakSelf maxState:NIMKitSessionStateNormal];
    //: }];
    }];
}

//: - (void)confirmDelete:(id)sender
- (void)vouchWill:(id)sender
{
    //: [self showDeleteSureVCWithTitle:@"确定删除？".ntes_localized confirmBlock:^{
    [self edgeHeader:[[YaData sharedInstance] user_nameHockFormat].untilNtes language:^{
        //: [NIMSDK.sharedSDK.conversationManager deleteRemoteMessages:_selectedMessages
        [NIMSDK.sharedSDK.conversationManager deleteRemoteMessages:_selectedMessages
                                                              //: exts: nil
                                                              exts: nil
                                                        //: completion:^(NSError * _Nullable error) {
                                                        completion:^(NSError * _Nullable error) {
            //: [self.view makeToast:error.localizedDescription ?: @"删除成功".ntes_localized];
            [self.view makeToast:error.localizedDescription ?: [[YaData sharedInstance] dreamHmId].untilNtes];
            //: if (!error) {
            if (!error) {
                //: [self.interactor resetMessages:^(NSError *error) {
                [self.interactor sessionMessages:^(NSError *error) {
                    //: [self switchUIWithSessionState:NIMKitSessionStateNormal];
                    [self maxState:NIMKitSessionStateNormal];
                //: }];
                }];
            }
        //: }];
        }];
    //: }];
    }];
}

//: - (void)multiSelect:(id)sender {
- (void)modelSearch:(id)sender {
    //: [self switchUIWithSessionState:NIMKitSessionStateSelect];
    [self maxState:NIMKitSessionStateSelect];
}

//: - (void)forwardMessage:(id)sender
- (void)offed:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: message.setting.teamReceiptEnabled = NO;
    message.setting.teamReceiptEnabled = NO;


//    __weak typeof(self) weakSelf = self;
//    [self selectForwardSessionCompletion:^(NIMSession *targetSession) {
//        [weakSelf forwardMessage:message toSession:targetSession];
//    }];

    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    TitleConfig *config = [[TitleConfig alloc] init];
    //: config.needMutiSelected = NO;
    config.needMutiSelected = NO;
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
    //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
    vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        //: NSString *userId = array.firstObject;
        NSString *userId = array.firstObject;
        //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
        //: [self forwardMessage:message toSession:session];
        [self speechReadMessage:message ginMill:session];
    //: };
    };
    //: [vc show];
    [vc totalRelation];
}

//: - (void)selectForwardSessionCompletion:(void (^)(NIMSession *targetSession))completion {
- (void)omit:(void (^)(NIMSession *targetSession))completion {
    //: UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"选择会话类型"] delegate:nil cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] destructiveButtonTitle:nil otherButtonTitles:[FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"], [FFFLanguageManager getTextWithKey:@"contact_fragment_group"], [FFFLanguageManager getTextWithKey:@"message_super_team"], nil];
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:[SendName streetSmart:[[YaData sharedInstance] show_haoId]] delegate:nil cancelButtonTitle:[SendName streetSmart:[[YaData sharedInstance] app_mUrl]] destructiveButtonTitle:nil otherButtonTitles:[SendName streetSmart:[[YaData sharedInstance] show_constraintIdent]], [SendName streetSmart:[[YaData sharedInstance] user_touristMsg]], [SendName streetSmart:[[YaData sharedInstance] main_relationshipPath]], nil];
    //: [sheet showInView:self.view completionHandler:^(NSInteger index) {
    [sheet view:self.view message:^(NSInteger index) {
        //: switch (index) {
        switch (index) {
            //: case 0:{
            case 0:{
                //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
                TitleConfig *config = [[TitleConfig alloc] init];
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *userId = array.firstObject;
                    NSString *userId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
                    NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc totalRelation];
            }
                //: break;
                break;
            //: case 1:{
            case 1:{
                //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
                ButtonColorConfig *config = [[ButtonColorConfig alloc] init];
                //: config.teamType = NIMKitTeamTypeNomal;
                config.teamType = NIMKitTeamTypeNomal;
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *teamId = array.firstObject;
                    NSString *teamId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc totalRelation];
            }
                //: break;
                break;
            //: case 2: {
            case 2: {
                //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
                ButtonColorConfig *config = [[ButtonColorConfig alloc] init];
                //: config.teamType = NIMKitTeamTypeSuper;
                config.teamType = NIMKitTeamTypeSuper;
                //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
                BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
                //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
                    //: NSString *teamId = array.firstObject;
                    NSString *teamId = array.firstObject;
                    //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
                    NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
                    //: if (completion) {
                    if (completion) {
                        //: completion(session);
                        completion(session);
                    }
                //: };
                };
                //: [vc show];
                [vc totalRelation];
            }
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    //: }];
    }];
}


//: - (void)revokeMessage:(id)sender
- (void)successMessage:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: NSString *collapseId = message.apnsPayload[@"apns-collapse-id"];
    NSString *collapseId = message.apnsPayload[[[YaData sharedInstance] showPopUrl]];
    //: NSDictionary *payload = @{
    NSDictionary *payload = @{
        //: @"apns-collapse-id": collapseId ? : @"",
        [[YaData sharedInstance] showPopUrl]: collapseId ? : @"",
    //: };
    };

    //: [[NIMSDK sharedSDK].chatManager revokeMessage:message
    [[NIMSDK sharedSDK].chatManager revokeMessage:message
                                      //: apnsContent:@"撤回一条消息"
                                      apnsContent:[[YaData sharedInstance] user_apartmentMessage]
                                      //: apnsPayload:payload
                                      apnsPayload:payload
                                  //: shouldBeCounted:![[NTESBundleSetting sharedConfig] isIgnoreRevokeMessageCount]
                                  shouldBeCounted:![[EnvironmentSetting configLocation] basket]
                                         //: completion:^(NSError * _Nullable error)
                                         completion:^(NSError * _Nullable error)
    {
        //: if (error) {
        if (error) {
            //: if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
            if (error.code == NIMRemoteErrorCodeDomainExpireOld) {
                //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"发送时间超过2分钟的消息，不能被撤回".ntes_localized delegate:nil cancelButtonTitle:@"确定".ntes_localized otherButtonTitles:nil, nil];
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:[[YaData sharedInstance] dream_emphasizeValue].untilNtes delegate:nil cancelButtonTitle:@"确定".untilNtes otherButtonTitles:nil, nil];
                //: [alert show];
                [alert show];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:@"消息撤回失败，请重试".ntes_localized duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[[YaData sharedInstance] userComplyDrivewayStr].untilNtes duration:2.0 position:CSToastPositionCenter];
            }
        //: } else {
        } else {
            //: FFFMessageModel *model = [weakSelf uiDeleteMessage:message];
            MoreModel *model = [weakSelf analogDigitalConverter:message];
            //: NIMMessage *tip = [NTESSessionMsgConverter msgWithTip:[NTESSessionUtil tipOnMessageRevoked:nil]];
            NIMMessage *tip = [PraiseConverter month:[DeviceDate holder:nil]];
            //: tip.timestamp = model.messageTime;
            tip.timestamp = model.messageTime;
            //[weakSelf uiInsertMessages:@[tip]];//撤回消息不显示

            //: tip.timestamp = message.timestamp;
            tip.timestamp = message.timestamp;
            // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
            //: [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];
            [[NIMSDK sharedSDK].conversationManager saveMessage:tip forSession:message.session completion:nil];//撤回消息不显示
        }
    //: }];
    }];
}

 //: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session
 - (void)speechReadMessage:(NIMMessage *)message ginMill:(NIMSession *)session
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        InfoGreenImage *option = [[InfoGreenImage alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[Case pastTop] consumer:session.sessionId message:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[Case pastTop] controlOption:session.sessionId my:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[Case pastTop] ting:session.sessionId container:nil].showName;
    }
    //: else {
    else {
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", [FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_confirm_forwarded_to"], name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", [SendName streetSmart:[[YaData sharedInstance] notiDjInmateFormat]], name];
    //: UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"确认转发".ntes_localized message:tip delegate:nil cancelButtonTitle:@"取消".ntes_localized otherButtonTitles:@"确认".ntes_localized, nil];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[[YaData sharedInstance] dreamHmUrl].untilNtes message:tip delegate:nil cancelButtonTitle:@"取消".untilNtes otherButtonTitles:@"确认".untilNtes, nil];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [alert showAlertWithCompletionHandler:^(NSInteger index) {
    [alert alertHandler:^(NSInteger index) {
        //: if(index == 1)
        if(index == 1)
        {
            //: NSError *error = nil;
            NSError *error = nil;
            //: if (message.session) {
            if (message.session) {
                //: [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
                [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
            //: } else {
            } else {
                //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
                [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
            }

            //: if (error) {
            if (error) {
                //: NSString *msg = [NSString stringWithFormat:@"%@.code:%zd", @"转发失败".ntes_localized, error.code];
                NSString *msg = [NSString stringWithFormat:[[YaData sharedInstance] dreamLeadershipObjectIdent], [[YaData sharedInstance] appTotalerviewGreenOilMessage].untilNtes, error.code];
                //: [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:msg duration:2.0 position:CSToastPositionCenter];
            //: } else {
            } else {
                //: [weakSelf.view makeToast:@"已发送".ntes_localized duration:2.0 position:CSToastPositionCenter];
                [weakSelf.view makeToast:[[YaData sharedInstance] dreamCrisisTitle].untilNtes duration:2.0 position:CSToastPositionCenter];
            }
        }
    //: }];
    }];
}


//: - (BOOL)checkRTSCondition
- (BOOL)analogDigitalConverter
{
    //: BOOL result = YES;
    BOOL result = YES;

    //: if (![[Reachability reachabilityForInternetConnection] isReachable])
    if (![[Reachability reachabilityForInternetConnection] isReachable])
    {
        //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"] duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[SendName streetSmart:[[YaData sharedInstance] mCurrentlyData]] duration:2.0 position:CSToastPositionCenter];
        //: result = NO;
        result = NO;
    }
    //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: if (self.session.sessionType == NIMSessionTypeP2P && [currentAccount isEqualToString:self.session.sessionId])
    if (self.session.sessionType == NIMSessionTypeP2P && [currentAccount isEqualToString:self.session.sessionId])
    {
        //: [self.view makeToast:@"不能和自己通话哦".ntes_localized duration:2.0 position:CSToastPositionCenter];
        [self.view makeToast:[[YaData sharedInstance] appPinMessage].untilNtes duration:2.0 position:CSToastPositionCenter];
        //: result = NO;
        result = NO;
    }
    //: if (self.session.sessionType == NIMSessionTypeTeam)
    if (self.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        //: NSInteger memberNumber = team.memberNumber;
        NSInteger memberNumber = team.memberNumber;
        //: if (memberNumber < 2)
        if (memberNumber < 2)
        {
            //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"app_avchat_not_start_with_less_member"] duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:[SendName streetSmart:[[YaData sharedInstance] show_sourceViewData]] duration:2.0 position:CSToastPositionCenter];
            //: result = NO;
            result = NO;
        }
    }
    //: if (self.session.sessionType == NIMSessionTypeSuperTeam)
    if (self.session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.session.sessionId];
        //: NSInteger memberNumber = team.memberNumber;
        NSInteger memberNumber = team.memberNumber;
        //: if (memberNumber < 2)
        if (memberNumber < 2)
        {
            //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"app_avchat_not_start_with_less_member"] duration:2.0 position:CSToastPositionCenter];
            [self.view makeToast:[SendName streetSmart:[[YaData sharedInstance] show_sourceViewData]] duration:2.0 position:CSToastPositionCenter];
            //: result = NO;
            result = NO;
        }
    }
    //: return result;
    return result;
}

//: - (NSDictionary *)cellActions
- (NSDictionary *)thoughtImage
{
    //: static NSDictionary *actions = nil;
    static NSDictionary *actions = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: actions = @{@(NIMMessageTypeImage) : @"showImage:",
        actions = @{@(NIMMessageTypeImage) : [[YaData sharedInstance] userVsText],
                    //: @(NIMMessageTypeVideo) : @"showVideo:",
                    @(NIMMessageTypeVideo) : [[YaData sharedInstance] k_drivewayIdent],
                    //: @(NIMMessageTypeLocation) : @"showLocation:",
                    @(NIMMessageTypeLocation) : [[YaData sharedInstance] main_makeId],
                    //: @(NIMMessageTypeFile) : @"showFile:",
                    @(NIMMessageTypeFile) : [[YaData sharedInstance] dreamSemenMsg],
                    //: @(NIMMessageTypeCustom): @"showCustom:"};
                    @(NIMMessageTypeCustom): [[YaData sharedInstance] noti_winterMsg]};
    //: });
    });
    //: return actions;
    return actions;
}

//: - (FFFKitMediaFetcher *)mediaFetcher
- (ParentFetcher *)mediaFetcher
{
    //: if (!_mediaFetcher) {
    if (!_mediaFetcher) {
        //: _mediaFetcher = [[FFFKitMediaFetcher alloc] init];
        _mediaFetcher = [[ParentFetcher alloc] init];
        //: _mediaFetcher.limit = 1;
        _mediaFetcher.limit = 1;
        //: _mediaFetcher.mediaTypes = @[(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
        _mediaFetcher.mediaTypes = @[(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
    }
    //: return _mediaFetcher;
    return _mediaFetcher;
}

//- (void)setupNormalNav {
//    
//    UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
//    [enterTeamCard addTarget:self action:@selector(enterTeamCard:) forControlEvents:UIControlEventTouchUpInside];
//    [enterTeamCard setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [enterTeamCard setImage:[UIImage imageNamed:@"icon_session_info_pressed"] forState:UIControlStateHighlighted];
//    [enterTeamCard sizeToFit];
//    UIBarButtonItem *enterTeamCardItem = [[UIBarButtonItem alloc] initWithCustomView:enterTeamCard];
//
//    UIButton *enterSuperTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
//    [enterSuperTeamCard addTarget:self action:@selector(enterSuperTeamCard:) forControlEvents:UIControlEventTouchUpInside];
//    [enterSuperTeamCard setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [enterSuperTeamCard sizeToFit];
//    UIBarButtonItem *enterSuperTeamCardItem = [[UIBarButtonItem alloc] initWithCustomView:enterSuperTeamCard];
//
//    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [infoBtn addTarget:self action:@selector(enterPersonInfoCard:) forControlEvents:UIControlEventTouchUpInside];
//    [infoBtn setImage:[UIImage imageNamed:@"more_icon"] forState:UIControlStateNormal];
//    [infoBtn sizeToFit];
//    UIBarButtonItem *enterUInfoItem = [[UIBarButtonItem alloc] initWithCustomView:infoBtn];
//
//    UIButton *historyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [historyBtn addTarget:self action:@selector(enterHistory:) forControlEvents:UIControlEventTouchUpInside];
//    [historyBtn setImage:[UIImage imageNamed:@"icon_history_normal"] forState:UIControlStateNormal];
//    [historyBtn sizeToFit];
//    //UIBarButtonItem *historyButtonItem = [[UIBarButtonItem alloc] initWithCustomView:historyBtn];
//
//    enterTeamCardItem.tintColor = [UIColor whiteColor];
//    enterUInfoItem.tintColor = [UIColor whiteColor];
//    enterSuperTeamCardItem.tintColor = [UIColor whiteColor];
//
//    if (self.session.sessionType == NIMSessionTypeTeam)
//    {
//        self.navigationItem.rightBarButtonItems  = @[enterTeamCardItem];
//    }
//    else if (self.session.sessionType == NIMSessionTypeSuperTeam)
//    {
//        self.navigationItem.rightBarButtonItems  = @[enterSuperTeamCardItem];
//    }
//    else if(self.session.sessionType == NIMSessionTypeP2P)
//    {
//        if ([self.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]])
//        {
//            //self.navigationItem.rightBarButtonItems = @[historyButtonItem];
//        }
//        else
//        {
//            self.navigationItem.rightBarButtonItems = @[enterUInfoItem];
//        }
//    }
//    self.navigationItem.leftBarButtonItem.customView.hidden = NO;
//    self.navigationItem.hidesBackButton = NO;
//    [self.mulSelectCancelBtn removeFromSuperview];
//}

//: - (void)setupSelectedNav {
- (void)close {
    //: self.navigationItem.rightBarButtonItems = nil;
    self.navigationItem.rightBarButtonItems = nil;
    //: self.navigationItem.leftBarButtonItem.customView.hidden = YES;
    self.navigationItem.leftBarButtonItem.customView.hidden = YES;
    //: self.navigationItem.hidesBackButton = YES;
    self.navigationItem.hidesBackButton = YES;
    //: [self.navigationController.navigationBar addSubview:self.mulSelectCancelBtn];
    [self.navigationController.navigationBar addSubview:self.mulSelectCancelBtn];
}

//: - (BOOL)shouldAutorotate{
- (BOOL)shouldAutorotate{
    //: return !self.currentSingleSnapView;
    return !self.currentSingleSnapView;
}

//: - (NTESMulSelectFunctionBar *)mulSelectedSureBar {
- (TagView *)mulSelectedSureBar {
    //: if (!_mulSelectedSureBar) {
    if (!_mulSelectedSureBar) {
        //: _mulSelectedSureBar = [[NTESMulSelectFunctionBar alloc] initWithFrame:self.sessionInputView.frame];
        _mulSelectedSureBar = [[TagView alloc] initWithFrame:self.sessionInputView.frame];
        //: [_mulSelectedSureBar.sureBtn addTarget:self
        [_mulSelectedSureBar.sureBtn addTarget:self
                                        //: action:@selector(confirmSelected:)
                                        action:@selector(achromaticColorQueryed:)
                              //: forControlEvents:UIControlEventTouchUpInside];
                              forControlEvents:UIControlEventTouchUpInside];
        //: [_mulSelectedSureBar.deleteButton addTarget:self
        [_mulSelectedSureBar.deleteButton addTarget:self
                                             //: action:@selector(confirmDelete:)
                                             action:@selector(vouchWill:)
                                   //: forControlEvents:UIControlEventTouchUpInside];
                                   forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _mulSelectedSureBar;
    return _mulSelectedSureBar;
}

//: - (UIButton *)mulSelectCancelBtn {
- (UIButton *)mulSelectCancelBtn {
    //: if (!_mulSelectCancelBtn) {
    if (!_mulSelectCancelBtn) {
        //: UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [cancelBtn addTarget:self action:@selector(cancelSelected:) forControlEvents:UIControlEventTouchUpInside];
        [cancelBtn addTarget:self action:@selector(touched:) forControlEvents:UIControlEventTouchUpInside];
        //: [cancelBtn setTitle:@"取消".ntes_localized forState:UIControlStateNormal];
        [cancelBtn setTitle:@"取消".untilNtes forState:UIControlStateNormal];
        //: [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [cancelBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: cancelBtn.frame = CGRectMake(0, 0, 48, 40);
        cancelBtn.frame = CGRectMake(0, 0, 48, 40);
        //: UIEdgeInsets titleInsets = cancelBtn.titleEdgeInsets;
        UIEdgeInsets titleInsets = cancelBtn.titleEdgeInsets;
        //: [cancelBtn setTitleEdgeInsets:titleInsets];
        [cancelBtn setTitleEdgeInsets:titleInsets];
        //: cancelBtn.titleLabel.font = [UIFont systemFontOfSize:13.0];
        cancelBtn.titleLabel.font = [UIFont systemFontOfSize:13.0];
        //: _mulSelectCancelBtn = cancelBtn;
        _mulSelectCancelBtn = cancelBtn;
    }
    //: return _mulSelectCancelBtn;
    return _mulSelectCancelBtn;
}



//: - (BOOL)shouldShowMenuByMessage:(NIMMessage *)message
- (BOOL)add:(NIMMessage *)message
{
    //: id<NIMMessageObject> messageObject = message.messageObject;
    id<NIMMessageObject> messageObject = message.messageObject;


    //: if (message.session.sessionType == NIMSessionTypeChatroom ||
    if (message.session.sessionType == NIMSessionTypeChatroom ||
        //: message.messageType == NIMMessageTypeTip ||
        message.messageType == NIMMessageTypeTip ||
        //: message.messageType == NIMMessageTypeNotification ||
        message.messageType == NIMMessageTypeNotification ||
        //: [self cancelMenuByMessageObject:messageObject])
        [self background:messageObject])
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (BOOL)cancelMenuByMessageObject:(id<NIMMessageObject>) object
- (BOOL)background:(id<NIMMessageObject>) object
{
    //: if ([object isKindOfClass:[NIMCustomObject class]])
    if ([object isKindOfClass:[NIMCustomObject class]])
    {
        //: NIMCustomObject *custom = object;
        NIMCustomObject *custom = object;
        //: id<NIMCustomAttachment> attachment = custom.attachment;
        id<NIMCustomAttachment> attachment = custom.attachment;
        //: if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]])
        if ([attachment isKindOfClass:[TagAttachment class]])
        {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}


//: - (UILabel *)invalid_tip {
- (UILabel *)invalid_tip {
    //: if (!_invalid_tip) {
    if (!_invalid_tip) {
        //: _invalid_tip = [[UILabel alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 50)];
        _invalid_tip = [[UILabel alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel]), [[UIScreen mainScreen] bounds].size.width, 50)];
        //: _invalid_tip.backgroundColor = [UIColor colorWithHexString:@"#FEFECA"];
        _invalid_tip.backgroundColor = [UIColor status:[[YaData sharedInstance] appGuitarMessage]];
        //: _invalid_tip.textColor = [UIColor colorWithHexString:@"#F6B53E"];
        _invalid_tip.textColor = [UIColor status:[[YaData sharedInstance] main_fileId]];
        //: _invalid_tip.text = [FFFLanguageManager getTextWithKey:@"app_team_invalid_tip"]; 
        _invalid_tip.text = [SendName streetSmart:[[YaData sharedInstance] notiViewKey]]; //
        //: _invalid_tip.textAlignment = NSTextAlignmentCenter;
        _invalid_tip.textAlignment = NSTextAlignmentCenter;
        //: _invalid_tip.hidden = YES;
        _invalid_tip.hidden = YES;

        //: [self.view addSubview:_invalid_tip];
        [self.view addSubview:_invalid_tip];
    }
    //: return _invalid_tip;
    return _invalid_tip;
}

//: - (ZMONTranslateView *)translateView
- (ButtonCleanView *)translateView
{
    //: if(!_translateView){
    if(!_translateView){
        //: _translateView = [[ZMONTranslateView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _translateView = [[ButtonCleanView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _translateView.delegate = self;
        _translateView.delegate = self;
    }
    //: return _translateView;
    return _translateView;
}

//: - (void)didTouchSubmitContentButton:(NSString *)reason
- (void)fixingButton:(NSString *)reason
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: self.userId = message.from;
    self.userId = message.from;
    //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];
    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:self.userId];

    //: if(isMyFriend){
    if(isMyFriend){
        //: [self.view addSubview:self.reprotNextView];
        [self.view addSubview:self.reprotNextView];
        //: [self.reprotNextView animationShow];
        [self.reprotNextView thoughtImage];
    //: }else{
    }else{
        //: [self.view addSubview:self.reprotHisNextView];
        [self.view addSubview:self.reprotHisNextView];
        //: [self.reprotHisNextView animationShow];
        [self.reprotHisNextView before];
    }

        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"contact"] = reason;
        dict[[[YaData sharedInstance] dream_pateTitle]] = reason;
        //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/other/feedback"] params:dict isShow:NO success:^(id responseObject) {
        [TitleManageressManager empty:[NSString stringWithFormat:[[YaData sharedInstance] k_linePath]] change:dict time:NO ting:^(id responseObject) {
//            [SVProgressHUD showMessage:LangKey(@"report_sucessed")];
        //: } failed:^(id responseObject, NSError *error) {
        } showResponseFailed:^(id responseObject, NSError *error) {
        //: }];
        }];

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
                       [self.view makeToast:[SendName streetSmart:[[YaData sharedInstance] dreamGangLetterNextIdent]] duration:2.0f position:CSToastPositionCenter];
                   //: }else{
                   }else{
                       //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"black_list_activity_add_black_failed"] duration:2.0f position:CSToastPositionCenter];
                       [self.view makeToast:[SendName streetSmart:[[YaData sharedInstance] main_televisionPath]] duration:2.0f position:CSToastPositionCenter];

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

        //: if (self.session.sessionType == NIMSessionTypeP2P) {
        if (self.session.sessionType == NIMSessionTypeP2P) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];
        }

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
                [self.view makeToast:[SendName streetSmart:[[YaData sharedInstance] noti_soundStr]] duration:2.0f position:CSToastPositionCenter];
            //: }else{
            }else{
                //: [self.view makeToast:[FFFLanguageManager getTextWithKey:@"friend_delete_fail"] duration:2.0f position:CSToastPositionCenter];
                [self.view makeToast:[SendName streetSmart:[[YaData sharedInstance] dream_modeContentText]] duration:2.0f position:CSToastPositionCenter];
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



        //: if (self.session.sessionType == NIMSessionTypeP2P) {
        if (self.session.sessionType == NIMSessionTypeP2P) {
            //: [self.navigationController popToRootViewControllerAnimated:YES];
            [self.navigationController popToRootViewControllerAnimated:YES];

//            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
//            options.removeOtherClients = YES;
//            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.session options:options completion:^(NSError * _Nullable error) {
//                if (error) {
//                    return;
//                }
//                [self.navigationController popToRootViewControllerAnimated:YES];
//
//            }];
        }


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

//: - (ZMONReportHisView *)reprotHisNextView
- (MarginView *)reprotHisNextView
{
    //: if(!_reprotHisNextView){
    if(!_reprotHisNextView){
        //: _reprotHisNextView = [[ZMONReportHisView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _reprotHisNextView = [[MarginView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _reprotHisNextView.delegate = self;
        _reprotHisNextView.delegate = self;
    }
    //: return _reprotHisNextView;
    return _reprotHisNextView;

}


//: @end
@end