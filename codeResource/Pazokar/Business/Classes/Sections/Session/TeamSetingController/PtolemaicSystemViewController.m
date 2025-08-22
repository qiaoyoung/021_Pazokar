
#import <Foundation/Foundation.h>

typedef struct {
    Byte bloodRed;
    Byte *touristGreen;
    unsigned int bilge;
} StructLaughData;

@interface LaughData : NSObject

@end

@implementation LaughData

+ (NSData *)LaughDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)LaughDataToByte:(StructLaughData *)data {
    for (int i = 0; i < data->bilge; i++) {
        data->touristGreen[i] ^= data->bloodRed;
    }
    data->touristGreen[data->bilge] = 0;
    return data->touristGreen;
}

+ (NSString *)StringFromLaughData:(StructLaughData *)data {
    return [NSString stringWithUTF8String:(char *)[self LaughDataToByte:data]];
}

//: head_default_group
+ (NSString *)m_cornerMsg {
    /* static */ NSString *m_cornerMsg = nil;
    if (!m_cornerMsg) {
		NSArray<NSNumber *> *origin = @[@176, @189, @185, @188, @135, @188, @189, @190, @185, @173, @180, @172, @135, @191, @170, @183, @173, @168, @35];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){216, (Byte *)data.bytes, 18};
        m_cornerMsg = [self StringFromLaughData:&value];
    }
    return m_cornerMsg;
}

//: 2C3042
+ (NSString *)notiPathTelevisionValue {
    /* static */ NSString *notiPathTelevisionValue = nil;
    if (!notiPathTelevisionValue) {
		NSArray<NSNumber *> *origin = @[@227, @146, @226, @225, @229, @227, @147];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){209, (Byte *)data.bytes, 6};
        notiPathTelevisionValue = [self StringFromLaughData:&value];
    }
    return notiPathTelevisionValue;
}

//: ic_modify
+ (NSString *)app_currentlyPath {
    /* static */ NSString *app_currentlyPath = nil;
    if (!app_currentlyPath) {
		NSArray<NSNumber *> *origin = @[@216, @210, @238, @220, @222, @213, @216, @215, @200, @199];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){177, (Byte *)data.bytes, 9};
        app_currentlyPath = [self StringFromLaughData:&value];
    }
    return app_currentlyPath;
}

//: jpg
+ (NSString *)main_contentData {
    /* static */ NSString *main_contentData = nil;
    if (!main_contentData) {
		NSArray<NSNumber *> *origin = @[@21, @15, @24, @36];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){127, (Byte *)data.bytes, 3};
        main_contentData = [self StringFromLaughData:&value];
    }
    return main_contentData;
}

//: queren
+ (NSString *)user_dismissMessage {
    /* static */ NSString *user_dismissMessage = nil;
    if (!user_dismissMessage) {
		NSArray<NSNumber *> *origin = @[@172, @168, @184, @175, @184, @179, @29];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){221, (Byte *)data.bytes, 6};
        user_dismissMessage = [self StringFromLaughData:&value];
    }
    return user_dismissMessage;
}

//: team_info_set_activity_group_tip
+ (NSString *)m_currentlyIdent {
    /* static */ NSString *m_currentlyIdent = nil;
    if (!m_currentlyIdent) {
		NSArray<NSNumber *> *origin = @[@32, @49, @53, @57, @11, @61, @58, @50, @59, @11, @39, @49, @32, @11, @53, @55, @32, @61, @34, @61, @32, @45, @11, @51, @38, @59, @33, @36, @11, @32, @61, @36, @246];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){84, (Byte *)data.bytes, 32};
        m_currentlyIdent = [self StringFromLaughData:&value];
    }
    return m_currentlyIdent;
}

//: group_mute_member_list_activity_title
+ (NSString *)app_leadershipId {
    /* static */ NSString *app_leadershipId = nil;
    if (!app_leadershipId) {
		NSArray<NSNumber *> *origin = @[@120, @109, @112, @106, @111, @64, @114, @106, @107, @122, @64, @114, @122, @114, @125, @122, @109, @64, @115, @118, @108, @107, @64, @126, @124, @107, @118, @105, @118, @107, @102, @64, @107, @118, @107, @115, @122, @142];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){31, (Byte *)data.bytes, 37};
        app_leadershipId = [self StringFromLaughData:&value];
    }
    return app_leadershipId;
}

//: group_info_activity_team_member
+ (NSString *)dream_mPath {
    /* static */ NSString *dream_mPath = nil;
    if (!dream_mPath) {
		NSArray<NSNumber *> *origin = @[@146, @135, @154, @128, @133, @170, @156, @155, @147, @154, @170, @148, @150, @129, @156, @131, @156, @129, @140, @170, @129, @144, @148, @152, @170, @152, @144, @152, @151, @144, @135, @229];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){245, (Byte *)data.bytes, 31};
        dream_mPath = [self StringFromLaughData:&value];
    }
    return dream_mPath;
}

//: ic_card_black
+ (NSString *)mainCornerIdent {
    /* static */ NSString *mainCornerIdent = nil;
    if (!mainCornerIdent) {
		NSArray<NSNumber *> *origin = @[@253, @247, @203, @247, @245, @230, @240, @203, @246, @248, @245, @247, @255, @231];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){148, (Byte *)data.bytes, 13};
        mainCornerIdent = [self StringFromLaughData:&value];
    }
    return mainCornerIdent;
}

//: activity_group_info_invite_permission
+ (NSString *)dream_replyStrikeFormat {
    /* static */ NSString *dream_replyStrikeFormat = nil;
    if (!dream_replyStrikeFormat) {
		NSArray<NSNumber *> *origin = @[@49, @51, @36, @57, @38, @57, @36, @41, @15, @55, @34, @63, @37, @32, @15, @57, @62, @54, @63, @15, @57, @62, @38, @57, @36, @53, @15, @32, @53, @34, @61, @57, @35, @35, @57, @63, @62, @43];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){80, (Byte *)data.bytes, 37};
        dream_replyStrikeFormat = [self StringFromLaughData:&value];
    }
    return dream_replyStrikeFormat;
}

//: team_info_set_activity_default_group_tip
+ (NSString *)appSourceTitleContent {
    /* static */ NSString *appSourceTitleContent = nil;
    if (!appSourceTitleContent) {
		NSArray<NSNumber *> *origin = @[@223, @206, @202, @198, @244, @194, @197, @205, @196, @244, @216, @206, @223, @244, @202, @200, @223, @194, @221, @194, @223, @210, @244, @207, @206, @205, @202, @222, @199, @223, @244, @204, @217, @196, @222, @219, @244, @223, @194, @219, @39];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){171, (Byte *)data.bytes, 40};
        appSourceTitleContent = [self StringFromLaughData:&value];
    }
    return appSourceTitleContent;
}

//: group_info_activity_exit
+ (NSString *)mainLabelShouldValue {
    /* static */ NSString *mainLabelShouldValue = nil;
    if (!mainLabelShouldValue) {
		NSArray<NSNumber *> *origin = @[@123, @110, @115, @105, @108, @67, @117, @114, @122, @115, @67, @125, @127, @104, @117, @106, @117, @104, @101, @67, @121, @100, @117, @104, @3];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){28, (Byte *)data.bytes, 24};
        mainLabelShouldValue = [self StringFromLaughData:&value];
    }
    return mainLabelShouldValue;
}

//: authentication
+ (NSString *)user_leadershipMemberMsg {
    /* static */ NSString *user_leadershipMemberMsg = nil;
    if (!user_leadershipMemberMsg) {
		NSArray<NSNumber *> *origin = @[@5, @17, @16, @12, @1, @10, @16, @13, @7, @5, @16, @13, @11, @10, @157];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){100, (Byte *)data.bytes, 14};
        user_leadershipMemberMsg = [self StringFromLaughData:&value];
    }
    return user_leadershipMemberMsg;
}

//: please_choose
+ (NSString *)user_greenValue {
    /* static */ NSString *user_greenValue = nil;
    if (!user_greenValue) {
		NSArray<NSNumber *> *origin = @[@155, @135, @142, @138, @152, @142, @180, @136, @131, @132, @132, @152, @142, @130];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){235, (Byte *)data.bytes, 13};
        user_greenValue = [self StringFromLaughData:&value];
    }
    return user_greenValue;
}

//: ic_group_all
+ (NSString *)kReplyMessage {
    /* static */ NSString *kReplyMessage = nil;
    if (!kReplyMessage) {
		NSArray<NSNumber *> *origin = @[@8, @2, @62, @6, @19, @14, @20, @17, @62, @0, @13, @13, @179];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){97, (Byte *)data.bytes, 12};
        kReplyMessage = [self StringFromLaughData:&value];
    }
    return kReplyMessage;
}

//: ic_card_share
+ (NSString *)m_cellName {
    /* static */ NSString *m_cellName = nil;
    if (!m_cellName) {
		NSArray<NSNumber *> *origin = @[@18, @24, @36, @24, @26, @9, @31, @36, @8, @19, @26, @9, @30, @58];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){123, (Byte *)data.bytes, 13};
        m_cellName = [self StringFromLaughData:&value];
    }
    return m_cellName;
}

//: activity_group_info_invite_verify
+ (NSString *)notiShouldTightenKey {
    /* static */ NSString *notiShouldTightenKey = nil;
    if (!notiShouldTightenKey) {
		NSArray<NSNumber *> *origin = @[@156, @158, @137, @148, @139, @148, @137, @132, @162, @154, @143, @146, @136, @141, @162, @148, @147, @155, @146, @162, @148, @147, @139, @148, @137, @152, @162, @139, @152, @143, @148, @155, @132, @4];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){253, (Byte *)data.bytes, 33};
        notiShouldTightenKey = [self StringFromLaughData:&value];
    }
    return notiShouldTightenKey;
}

//: ic_group_top
+ (NSString *)notiLiterallyImageIdent {
    /* static */ NSString *notiLiterallyImageIdent = nil;
    if (!notiLiterallyImageIdent) {
		NSArray<NSNumber *> *origin = @[@21, @31, @35, @27, @14, @19, @9, @12, @35, @8, @19, @12, @63];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){124, (Byte *)data.bytes, 12};
        notiLiterallyImageIdent = [self StringFromLaughData:&value];
    }
    return notiLiterallyImageIdent;
}

//: activity_group_info_group_toast
+ (NSString *)kMessageIdent {
    /* static */ NSString *kMessageIdent = nil;
    if (!kMessageIdent) {
		NSArray<NSNumber *> *origin = @[@200, @202, @221, @192, @223, @192, @221, @208, @246, @206, @219, @198, @220, @217, @246, @192, @199, @207, @198, @246, @206, @219, @198, @220, @217, @246, @221, @198, @200, @218, @221, @9];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){169, (Byte *)data.bytes, 31};
        kMessageIdent = [self StringFromLaughData:&value];
    }
    return kMessageIdent;
}

//: Chat_settop
+ (NSString *)m_honestlyTitle {
    /* static */ NSString *m_honestlyTitle = nil;
    if (!m_honestlyTitle) {
		NSArray<NSNumber *> *origin = @[@72, @99, @106, @127, @84, @120, @110, @127, @127, @100, @123, @178];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){11, (Byte *)data.bytes, 11};
        m_honestlyTitle = [self StringFromLaughData:&value];
    }
    return m_honestlyTitle;
}

//: /team/modifyname
+ (NSString *)m_guitarKey {
    /* static */ NSString *m_guitarKey = nil;
    if (!m_guitarKey) {
		NSArray<NSNumber *> *origin = @[@124, @39, @54, @50, @62, @124, @62, @60, @55, @58, @53, @42, @61, @50, @62, @54, @21];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){83, (Byte *)data.bytes, 16};
        m_guitarKey = [self StringFromLaughData:&value];
    }
    return m_guitarKey;
}

//: ic_group_nick
+ (NSString *)dreamNeighborhoodIdent {
    /* static */ NSString *dreamNeighborhoodIdent = nil;
    if (!dreamNeighborhoodIdent) {
		NSArray<NSNumber *> *origin = @[@84, @94, @98, @90, @79, @82, @72, @77, @98, @83, @84, @94, @86, @174];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){61, (Byte *)data.bytes, 13};
        dreamNeighborhoodIdent = [self StringFromLaughData:&value];
    }
    return dreamNeighborhoodIdent;
}

//: Confirm_dismiss_group_chat
+ (NSString *)showInputIdent {
    /* static */ NSString *showInputIdent = nil;
    if (!showInputIdent) {
		NSArray<NSNumber *> *origin = @[@50, @30, @31, @23, @24, @3, @28, @46, @21, @24, @2, @28, @24, @2, @2, @46, @22, @3, @30, @4, @1, @46, @18, @25, @16, @5, @49];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){113, (Byte *)data.bytes, 26};
        showInputIdent = [self StringFromLaughData:&value];
    }
    return showInputIdent;
}

//: activity_user_profile_clear_chat
+ (NSString *)dreamNearlyToTitle {
    /* static */ NSString *dreamNearlyToTitle = nil;
    if (!dreamNearlyToTitle) {
		NSArray<NSNumber *> *origin = @[@82, @80, @71, @90, @69, @90, @71, @74, @108, @70, @64, @86, @65, @108, @67, @65, @92, @85, @90, @95, @86, @108, @80, @95, @86, @82, @65, @108, @80, @91, @82, @71, @100];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){51, (Byte *)data.bytes, 32};
        dreamNearlyToTitle = [self StringFromLaughData:&value];
    }
    return dreamNearlyToTitle;
}

//: group_edit
+ (NSString *)main_gateTitle {
    /* static */ NSString *main_gateTitle = nil;
    if (!main_gateTitle) {
		NSArray<NSNumber *> *origin = @[@48, @37, @56, @34, @39, @8, @50, @51, @62, @35, @159];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){87, (Byte *)data.bytes, 10};
        main_gateTitle = [self StringFromLaughData:&value];
    }
    return main_gateTitle;
}

//: group_info_activity_jiesan
+ (NSString *)m_woodenChildIdent {
    /* static */ NSString *m_woodenChildIdent = nil;
    if (!m_woodenChildIdent) {
		NSArray<NSNumber *> *origin = @[@131, @150, @139, @145, @148, @187, @141, @138, @130, @139, @187, @133, @135, @144, @141, @146, @141, @144, @157, @187, @142, @141, @129, @151, @133, @138, @38];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){228, (Byte *)data.bytes, 26};
        m_woodenChildIdent = [self StringFromLaughData:&value];
    }
    return m_woodenChildIdent;
}

//: icon_photo
+ (NSString *)dream_disappointedId {
    /* static */ NSString *dream_disappointedId = nil;
    if (!dream_disappointedId) {
		NSArray<NSNumber *> *origin = @[@246, @252, @240, @241, @192, @239, @247, @240, @235, @240, @65];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){159, (Byte *)data.bytes, 10};
        dream_disappointedId = [self StringFromLaughData:&value];
    }
    return dream_disappointedId;
}

//: activity_group_info_group_modify_permission
+ (NSString *)app_hockUrl {
    /* static */ NSString *app_hockUrl = nil;
    if (!app_hockUrl) {
		NSArray<NSNumber *> *origin = @[@251, @249, @238, @243, @236, @243, @238, @227, @197, @253, @232, @245, @239, @234, @197, @243, @244, @252, @245, @197, @253, @232, @245, @239, @234, @197, @247, @245, @254, @243, @252, @227, @197, @234, @255, @232, @247, @243, @233, @233, @243, @245, @244, @51];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){154, (Byte *)data.bytes, 43};
        app_hockUrl = [self StringFromLaughData:&value];
    }
    return app_hockUrl;
}

//: queren_quit_group
+ (NSString *)main_ecruKey {
    /* static */ NSString *main_ecruKey = nil;
    if (!main_ecruKey) {
		NSArray<NSNumber *> *origin = @[@70, @66, @82, @69, @82, @89, @104, @70, @66, @94, @67, @104, @80, @69, @88, @66, @71, @218];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){55, (Byte *)data.bytes, 17};
        main_ecruKey = [self StringFromLaughData:&value];
    }
    return main_ecruKey;
}

//: group_info_activity_give_group
+ (NSString *)noti_imageAfterMsg {
    /* static */ NSString *noti_imageAfterMsg = nil;
    if (!noti_imageAfterMsg) {
		NSArray<NSNumber *> *origin = @[@244, @225, @252, @230, @227, @204, @250, @253, @245, @252, @204, @242, @240, @231, @250, @229, @250, @231, @234, @204, @244, @250, @229, @246, @204, @244, @225, @252, @230, @227, @137];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){147, (Byte *)data.bytes, 30};
        noti_imageAfterMsg = [self StringFromLaughData:&value];
    }
    return noti_imageAfterMsg;
}

//: send_group_card
+ (NSString *)show_guitarStr {
    /* static */ NSString *show_guitarStr = nil;
    if (!show_guitarStr) {
		NSArray<NSNumber *> *origin = @[@15, @25, @18, @24, @35, @27, @14, @19, @9, @12, @35, @31, @29, @14, @24, @81];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){124, (Byte *)data.bytes, 15};
        show_guitarStr = [self StringFromLaughData:&value];
    }
    return show_guitarStr;
}

//: new_owner_id
+ (NSString *)kMakeStr {
    /* static */ NSString *kMakeStr = nil;
    if (!kMakeStr) {
		NSArray<NSNumber *> *origin = @[@141, @134, @148, @188, @140, @148, @141, @134, @145, @188, @138, @135, @127];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){227, (Byte *)data.bytes, 12};
        kMakeStr = [self StringFromLaughData:&value];
    }
    return kMakeStr;
}

//: ic_announcement
+ (NSString *)showClickValue {
    /* static */ NSString *showClickValue = nil;
    if (!showClickValue) {
		NSArray<NSNumber *> *origin = @[@21, @31, @35, @29, @18, @18, @19, @9, @18, @31, @25, @17, @25, @18, @8, @77];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){124, (Byte *)data.bytes, 15};
        showClickValue = [self StringFromLaughData:&value];
    }
    return showClickValue;
}

//: message_info_activity_msg_notice
+ (NSString *)k_selectIdent {
    /* static */ NSString *k_selectIdent = nil;
    if (!k_selectIdent) {
		NSArray<NSNumber *> *origin = @[@129, @137, @159, @159, @141, @139, @137, @179, @133, @130, @138, @131, @179, @141, @143, @152, @133, @154, @133, @152, @149, @179, @129, @159, @139, @179, @130, @131, @152, @133, @143, @137, @236];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){236, (Byte *)data.bytes, 32};
        k_selectIdent = [self StringFromLaughData:&value];
    }
    return k_selectIdent;
}

//: activity_group_info_group_nick
+ (NSString *)showCornerMessage {
    /* static */ NSString *showCornerMessage = nil;
    if (!showCornerMessage) {
		NSArray<NSNumber *> *origin = @[@177, @179, @164, @185, @166, @185, @164, @169, @143, @183, @162, @191, @165, @160, @143, @185, @190, @182, @191, @143, @183, @162, @191, @165, @160, @143, @190, @185, @179, @187, @89];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){208, (Byte *)data.bytes, 30};
        showCornerMessage = [self StringFromLaughData:&value];
    }
    return showCornerMessage;
}

//: /team/destory
+ (NSString *)kFinCenterFormat {
    /* static */ NSString *kFinCenterFormat = nil;
    if (!kFinCenterFormat) {
		NSArray<NSNumber *> *origin = @[@106, @49, @32, @36, @40, @106, @33, @32, @54, @49, @42, @55, @60, @116];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){69, (Byte *)data.bytes, 13};
        kFinCenterFormat = [self StringFromLaughData:&value];
    }
    return kFinCenterFormat;
}

//: ic_group_introduction
+ (NSString *)notiHonestlyTitle {
    /* static */ NSString *notiHonestlyTitle = nil;
    if (!notiHonestlyTitle) {
		NSArray<NSNumber *> *origin = @[@54, @60, @0, @56, @45, @48, @42, @47, @0, @54, @49, @43, @45, @48, @59, @42, @60, @43, @54, @48, @49, @96];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){95, (Byte *)data.bytes, 21};
        notiHonestlyTitle = [self StringFromLaughData:&value];
    }
    return notiHonestlyTitle;
}

//: Transfer_group_exit
+ (NSString *)main_situationValue {
    /* static */ NSString *main_situationValue = nil;
    if (!main_situationValue) {
		NSArray<NSNumber *> *origin = @[@62, @24, @11, @4, @25, @12, @15, @24, @53, @13, @24, @5, @31, @26, @53, @15, @18, @3, @30, @58];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){106, (Byte *)data.bytes, 19};
        main_situationValue = [self StringFromLaughData:&value];
    }
    return main_situationValue;
}

//: clear_history
+ (NSString *)notiRedTitle {
    /* static */ NSString *notiRedTitle = nil;
    if (!notiRedTitle) {
		NSArray<NSNumber *> *origin = @[@17, @30, @23, @19, @0, @45, @26, @27, @1, @6, @29, @0, @11, @37];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){114, (Byte *)data.bytes, 13};
        notiRedTitle = [self StringFromLaughData:&value];
    }
    return notiRedTitle;
}

//: 图片保存失败，请重试
+ (NSString *)mValueKey {
    /* static */ NSString *mValueKey = nil;
    if (!mValueKey) {
		NSArray<NSNumber *> *origin = @[@211, @173, @136, @209, @191, @177, @210, @137, @171, @211, @155, @174, @211, @146, @135, @222, @130, @147, @217, @138, @186, @222, @153, @129, @223, @177, @187, @222, @153, @163, @22];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){54, (Byte *)data.bytes, 30};
        mValueKey = [self StringFromLaughData:&value];
    }
    return mValueKey;
}

//: group_info_activity_op_failed
+ (NSString *)show_enableFormat {
    /* static */ NSString *show_enableFormat = nil;
    if (!show_enableFormat) {
		NSArray<NSNumber *> *origin = @[@87, @66, @95, @69, @64, @111, @89, @94, @86, @95, @111, @81, @83, @68, @89, @70, @89, @68, @73, @111, @95, @64, @111, @86, @81, @89, @92, @85, @84, @232];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){48, (Byte *)data.bytes, 29};
        show_enableFormat = [self StringFromLaughData:&value];
    }
    return show_enableFormat;
}

//: ic_group_notice
+ (NSString *)app_myText {
    /* static */ NSString *app_myText = nil;
    if (!app_myText) {
		NSArray<NSNumber *> *origin = @[@200, @194, @254, @198, @211, @206, @212, @209, @254, @207, @206, @213, @200, @194, @196, @205];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){161, (Byte *)data.bytes, 15};
        app_myText = [self StringFromLaughData:&value];
    }
    return app_myText;
}

//: name
+ (NSString *)k_objectTitle {
    /* static */ NSString *k_objectTitle = nil;
    if (!k_objectTitle) {
		NSArray<NSNumber *> *origin = @[@133, @138, @134, @142, @152];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){235, (Byte *)data.bytes, 4};
        k_objectTitle = [self StringFromLaughData:&value];
    }
    return k_objectTitle;
}

//: ic_invitee_verification
+ (NSString *)userMakeText {
    /* static */ NSString *userMakeText = nil;
    if (!userMakeText) {
		NSArray<NSNumber *> *origin = @[@91, @81, @109, @91, @92, @68, @91, @70, @87, @87, @109, @68, @87, @64, @91, @84, @91, @81, @83, @70, @91, @93, @92, @8];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){50, (Byte *)data.bytes, 23};
        userMakeText = [self StringFromLaughData:&value];
    }
    return userMakeText;
}

//: activity_group_info_group_mute
+ (NSString *)userSeparateText {
    /* static */ NSString *userSeparateText = nil;
    if (!userSeparateText) {
		NSArray<NSNumber *> *origin = @[@19, @17, @6, @27, @4, @27, @6, @11, @45, @21, @0, @29, @7, @2, @45, @27, @28, @20, @29, @45, @21, @0, @29, @7, @2, @45, @31, @7, @6, @23, @150];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){114, (Byte *)data.bytes, 30};
        userSeparateText = [self StringFromLaughData:&value];
    }
    return userSeparateText;
}

//: Transfer_group_ownership
+ (NSString *)kValueData {
    /* static */ NSString *kValueData = nil;
    if (!kValueData) {
		NSArray<NSNumber *> *origin = @[@145, @183, @164, @171, @182, @163, @160, @183, @154, @162, @183, @170, @176, @181, @154, @170, @178, @171, @160, @183, @182, @173, @172, @181, @252];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){197, (Byte *)data.bytes, 24};
        kValueData = [self StringFromLaughData:&value];
    }
    return kValueData;
}

//: ic_identity_authentication
+ (NSString *)dreamShowData {
    /* static */ NSString *dreamShowData = nil;
    if (!dreamShowData) {
		NSArray<NSNumber *> *origin = @[@46, @36, @24, @46, @35, @34, @41, @51, @46, @51, @62, @24, @38, @50, @51, @47, @34, @41, @51, @46, @36, @38, @51, @46, @40, @41, @47];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){71, (Byte *)data.bytes, 26};
        dreamShowData = [self StringFromLaughData:&value];
    }
    return dreamShowData;
}

//: ic_group_transfer
+ (NSString *)showSourcePath {
    /* static */ NSString *showSourcePath = nil;
    if (!showSourcePath) {
		NSArray<NSNumber *> *origin = @[@202, @192, @252, @196, @209, @204, @214, @211, @252, @215, @209, @194, @205, @208, @197, @198, @209, @72];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){163, (Byte *)data.bytes, 17};
        showSourcePath = [self StringFromLaughData:&value];
    }
    return showSourcePath;
}

//: modify_activity_modify_success
+ (NSString *)mainTextName {
    /* static */ NSString *mainTextName = nil;
    if (!mainTextName) {
		NSArray<NSNumber *> *origin = @[@251, @249, @242, @255, @240, @239, @201, @247, @245, @226, @255, @224, @255, @226, @239, @201, @251, @249, @242, @255, @240, @239, @201, @229, @227, @245, @245, @243, @229, @229, @252];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){150, (Byte *)data.bytes, 30};
        mainTextName = [self StringFromLaughData:&value];
    }
    return mainTextName;
}

//: ic_group_edit
+ (NSString *)main_rangePath {
    /* static */ NSString *main_rangePath = nil;
    if (!main_rangePath) {
		NSArray<NSNumber *> *origin = @[@97, @107, @87, @111, @122, @103, @125, @120, @87, @109, @108, @97, @124, @45];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){8, (Byte *)data.bytes, 13};
        main_rangePath = [self StringFromLaughData:&value];
    }
    return main_rangePath;
}

//: FF483D
+ (NSString *)mMessageValue {
    /* static */ NSString *mMessageValue = nil;
    if (!mMessageValue) {
		NSArray<NSNumber *> *origin = @[@210, @210, @160, @172, @167, @208, @23];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){148, (Byte *)data.bytes, 6};
        mMessageValue = [self StringFromLaughData:&value];
    }
    return mMessageValue;
}

//: Group_name
+ (NSString *)showCellPath {
    /* static */ NSString *showCellPath = nil;
    if (!showCellPath) {
		NSArray<NSNumber *> *origin = @[@201, @252, @225, @251, @254, @209, @224, @239, @227, @235, @172];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){142, (Byte *)data.bytes, 10};
        showCellPath = [self StringFromLaughData:&value];
    }
    return showCellPath;
}

//: ic_invite
+ (NSString *)k_semenFormat {
    /* static */ NSString *k_semenFormat = nil;
    if (!k_semenFormat) {
		NSArray<NSNumber *> *origin = @[@255, @245, @201, @255, @248, @224, @255, @226, @243, @132];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){150, (Byte *)data.bytes, 9};
        k_semenFormat = [self StringFromLaughData:&value];
    }
    return k_semenFormat;
}

//: ic_group_members
+ (NSString *)user_differentlyMsg {
    /* static */ NSString *user_differentlyMsg = nil;
    if (!user_differentlyMsg) {
		NSArray<NSNumber *> *origin = @[@197, @207, @243, @203, @222, @195, @217, @220, @243, @193, @201, @193, @206, @201, @222, @223, @109];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){172, (Byte *)data.bytes, 16};
        user_differentlyMsg = [self StringFromLaughData:&value];
    }
    return user_differentlyMsg;
}

//: /team/modifyowner
+ (NSString *)show_procedureStr {
    /* static */ NSString *show_procedureStr = nil;
    if (!show_procedureStr) {
		NSArray<NSNumber *> *origin = @[@60, @103, @118, @114, @126, @60, @126, @124, @119, @122, @117, @106, @124, @100, @125, @118, @97, @205];
		NSData *data = [LaughData LaughDataToData:origin];
        StructLaughData value = (StructLaughData){19, (Byte *)data.bytes, 17};
        show_procedureStr = [self StringFromLaughData:&value];
    }
    return show_procedureStr;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  PtolemaicSystemViewController.m
//  NIM
//
//  Created by chris on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFAdvancedTeamCardViewController.h"
#import "PtolemaicSystemViewController.h"
//: #import "FFFContactSelectViewController.h"
#import "BrandViewController.h"
//: #import "CCCTeamMemberListViewController.h"
#import "VersionViewController.h"
//: #import "FFFTeamMuteMemberListViewController.h"
#import "NameViewController.h"
//: #import "FFFTeamAnnouncementListViewController.h"
#import "TextViewController.h"
//: #import "FFFTeamCardRowItem.h"
#import "ToAGreaterExtentItem.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFTeamCardMemberItem.h"
#import "HomegirlFormat.h"
//: #import "FFFKitUtil.h"
#import "OffMore.h"
//: #import "FFFTeamCardHeaderView.h"
#import "LabelTagView.h"
//: #import "FFFTeamListDataManager.h"
#import "FindBaseballTeamManager.h"
//: #import "FFFKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "FFFTeamHelper.h"
#import "EnvelopingTitle.h"
//: #import "FFFTeamIntroduceViewController.h"
#import "CenterViewController.h"
//: #import "ZMONSetGroupNameView.h"
#import "ComponentView.h"
//: #import "ZMONSetGroupNickNameView.h"
#import "ColorView.h"
//: #import "ZMONAlartView.h"
#import "CanView.h"
//: #import "FFFGroupAvatarViewController.h"
#import "RubyViewController.h"
//: #import "NTESUserQRCodeViewController.h"
#import "ContentViewController.h"
//: #import "TeamMemberNormalViewController.h"
#import "RowViewController.h"
//: #import "NTESSessionMsgConverter.h"
#import "PraiseConverter.h"
//: #import "NTESShareCardAttachment.h"
#import "WithChild.h"
//: #import "ZOMNForwardViewController.h"
#import "SightViewController.h"
//: #import "NSSetAvater.h"
#import "ParameterView.h"

//: @interface FFFAdvancedTeamCardViewController ()<FFFTeamMemberListCellActionDelegate,
@interface PtolemaicSystemViewController ()<SoundShared,
//: NIMContactSelectDelegate,
NoticeBar,
//: NIMTeamSwitchProtocol,
GreenProtocol,
//: NIMTeamManagerDelegate,
NIMTeamManagerDelegate,
//: FFFTeamCardHeaderViewDelegate,
DeviceTingDelegate,
//: NIMTeamAnnouncementListVCDelegate,NTESCustomUIAlertDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
NamePlayer,TagTing,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

//: @property (nonatomic,strong) FFFTeamCardHeaderView *headerView;
@property (nonatomic,strong) LabelTagView *headerView;

//: @property (nonatomic, strong) UIView *userView;
@property (nonatomic, strong) UIView *userView;
//: @property (nonatomic, strong) UIImageView *accountheadImg;
@property (nonatomic, strong) UIImageView *accountheadImg;
//: @property (strong, nonatomic) UIButton *btnPhoto;
@property (strong, nonatomic) UIButton *btnPhoto;
//: @property (nonatomic, strong) UILabel *accountNickname;
@property (nonatomic, strong) UILabel *accountNickname;
//: @property (nonatomic, strong) UILabel *accountId;
@property (nonatomic, strong) UILabel *accountId;

//: @property (nonatomic, strong) UILabel *introduce;
@property (nonatomic, strong) UILabel *introduce;

//: @property (nonatomic, strong) UIView *footView;
@property (nonatomic, strong) UIView *footView;
//: @property (nonatomic, strong) ZMONSetGroupNameView *groupnameView;
@property (nonatomic, strong) ComponentView *groupnameView;
//: @property (nonatomic, strong) ZMONSetGroupNickNameView *groupNickNameView;
@property (nonatomic, strong) ColorView *groupNickNameView;
//: @property (nonatomic, strong) ZMONAlartView *groupAlartView;
@property (nonatomic, strong) CanView *groupAlartView;
//: @property (nonatomic, strong) NSSetAvater *aleartView;
@property (nonatomic, strong) ParameterView *aleartView;

//: @end
@end

//: @implementation FFFAdvancedTeamCardViewController
@implementation PtolemaicSystemViewController

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

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
}

//: - (void)reloadData {
- (void)isSession {
    //: [super reloadData];
    [super isSession];
}

//: - (void)didBuildTeamSwitchCell:(FFFTeamSwitchTableViewCell *)cell {
- (void)windowLock:(WithCellView *)cell {
    //: cell.switchDelegate = self;
    cell.switchDelegate = self;
}

//: - (void)didBuildTeamMemberCell:(FFFTeamMemberListCell *)cell {
- (void)picture:(WithView *)cell {
    //: cell.delegate = self;
    cell.delegate = self;
    //: cell.disableInvite = ![FFFKitUtil canInviteMemberToTeam:self.teamListManager.myTeamInfo];
    cell.disableInvite = ![OffMore include:self.teamListManager.myTeamInfo];
    //: NSMutableArray <NSDictionary *>*memberInfos = [NSMutableArray array];
    NSMutableArray <NSDictionary *>*memberInfos = [NSMutableArray array];
    //: for (int i = 0; i < ((cell.maxShowMemberCount) < (self.teamListManager.members.count) ? (cell.maxShowMemberCount) : (self.teamListManager.members.count)); i++) {
    for (int i = 0; i < ((cell.maxShowMemberCount) < (self.teamListManager.signal.count) ? (cell.maxShowMemberCount) : (self.teamListManager.signal.count)); i++) {
        //: FFFTeamCardMemberItem *obj = self.teamListManager.members[i];
        HomegirlFormat *obj = self.teamListManager.signal[i];
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        InfoGreenImage *option = [[InfoGreenImage alloc] init];
        //: option.session = self.teamListManager.session;
        option.session = self.teamListManager.transparency;
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:obj.userId option:option];
        Info *info = [[Case pastTop] consumer:obj.userId message:option];

        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[kTeamMember] = obj;
        dic[main_weekVersionName] = obj;
        //: dic[kTeamMemberInfo] = info;
        dic[noti_controlOnText] = info;
        //: [memberInfos addObject:dic];
        [memberInfos addObject:dic];

    }
    //: cell.infos = memberInfos;
    cell.infos = memberInfos;
}

//: #pragma mark - Data
#pragma mark - Data
//: - (NSArray<NSArray<FFFTeamCardRowItem *> *> *)buildBodyData{
- (NSArray<NSArray<ToAGreaterExtentItem *> *> *)teamCurrentContainer{
    //: NSArray *ret = nil;
    NSArray *ret = nil;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: BOOL canEdit = [FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    BOOL canEdit = [OffMore complete:self.teamListManager.myTeamInfo];
    //: BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
    BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
    //: BOOL isManager = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeManager;
    BOOL isManager = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeManager;

    //: FFFTeamCardRowItem *teamShareCart = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *teamShareCart = [[ToAGreaterExtentItem alloc] init];
    //: teamShareCart.title = [FFFLanguageManager getTextWithKey:@"send_group_card"];
    teamShareCart.title = [SendName streetSmart:[LaughData show_guitarStr]];
    //: teamShareCart.subTitle = self.teamListManager.team.teamName;
    teamShareCart.subTitle = self.teamListManager.team.teamName;
    //: teamShareCart.action = @selector(sendGroupCart);
    teamShareCart.action = @selector(languageEnd);
    //: teamShareCart.rowHeight = 50.f;
    teamShareCart.rowHeight = 50.f;
    //: teamShareCart.type = TeamCardRowItemTypeCommon;
    teamShareCart.type = TeamCardRowItemTypeCommon;
//    teamShareCart.actionDisabled = !canEdit;
    //: teamShareCart.img = [UIImage imageNamed:@"ic_card_share"];
    teamShareCart.img = [UIImage imageNamed:[LaughData m_cellName]];

    //: FFFTeamCardRowItem *teamMembers = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *teamMembers = [[ToAGreaterExtentItem alloc] init];
    //: teamMembers.title = [FFFLanguageManager getTextWithKey:@"group_info_activity_team_member"];
    teamMembers.title = [SendName streetSmart:[LaughData dream_mPath]];
    //: teamMembers.subTitle = self.teamListManager.team.teamName;
    teamMembers.subTitle = self.teamListManager.team.teamName;
    //: teamMembers.action = @selector(enterMemberCard);
    teamMembers.action = @selector(globalAction);
    //: teamMembers.rowHeight = 50.f;
    teamMembers.rowHeight = 50.f;
    //: teamMembers.type = TeamCardRowItemTypeCommon;
    teamMembers.type = TeamCardRowItemTypeCommon;
    //: teamMembers.actionDisabled = !self.canMemberInfo;
    teamMembers.actionDisabled = !self.canMemberInfo;
    //: teamMembers.img = [UIImage imageNamed:@"ic_group_members"];
    teamMembers.img = [UIImage imageNamed:[LaughData user_differentlyMsg]];

    //: FFFTeamCardRowItem *teamAnnoucement = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *teamAnnoucement = [[ToAGreaterExtentItem alloc] init];
    //: teamAnnoucement.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_toast"];
    teamAnnoucement.title = [SendName streetSmart:[LaughData kMessageIdent]];
    //: teamAnnoucement.subTitle = self.teamListManager.team.teamName;
    teamAnnoucement.subTitle = self.teamListManager.team.teamName;
    //: teamAnnoucement.action = @selector(updateTeamAnnouncement);
    teamAnnoucement.action = @selector(cellAnnouncement);
    //: teamAnnoucement.rowHeight = 50.f;
    teamAnnoucement.rowHeight = 50.f;
    //: teamAnnoucement.type = TeamCardRowItemTypeCommon;
    teamAnnoucement.type = TeamCardRowItemTypeCommon;
//    teamAnnoucement.actionDisabled = !canEdit;
    //: teamAnnoucement.img = [UIImage imageNamed:@"ic_announcement"];
    teamAnnoucement.img = [UIImage imageNamed:[LaughData showClickValue]];

    //: FFFTeamCardRowItem *teamName = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *teamName = [[ToAGreaterExtentItem alloc] init];
    //: teamName.title = [FFFLanguageManager getTextWithKey:@"Group_name"];
    teamName.title = [SendName streetSmart:[LaughData showCellPath]];
    //: teamName.subTitle = self.teamListManager.team.teamName;
    teamName.subTitle = self.teamListManager.team.teamName;
    //: teamName.action = @selector(updateTeamName);
    teamName.action = @selector(buttonTime);
    //: teamName.rowHeight = 50.f;
    teamName.rowHeight = 50.f;
    //: teamName.type = TeamCardRowItemTypeCommon;
    teamName.type = TeamCardRowItemTypeCommon;
    //: teamName.actionDisabled = !canEdit;
    teamName.actionDisabled = !canEdit;
    //: teamName.img = [UIImage imageNamed:@"ic_group_edit"];
    teamName.img = [UIImage imageNamed:[LaughData main_rangePath]];


    //: FFFTeamCardRowItem *teamNick = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *teamNick = [[ToAGreaterExtentItem alloc] init];
    //: teamNick.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_nick"];
    teamNick.title = [SendName streetSmart:[LaughData showCornerMessage]];
    //: teamNick.subTitle = self.teamListManager.myTeamInfo.nickname;
    teamNick.subTitle = self.teamListManager.myTeamInfo.nickname;
    //: teamNick.action = @selector(updateTeamNick);
    teamNick.action = @selector(restoreKeyGhb);
    //: teamNick.rowHeight = 50.f;
    teamNick.rowHeight = 50.f;
    //: teamNick.type = TeamCardRowItemTypeCommon;
    teamNick.type = TeamCardRowItemTypeCommon;
    //: teamNick.img = [UIImage imageNamed:@"ic_group_nick"];
    teamNick.img = [UIImage imageNamed:[LaughData dreamNeighborhoodIdent]];

    //: FFFTeamCardRowItem *teamIntro = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *teamIntro = [[ToAGreaterExtentItem alloc] init];
    //: teamIntro.title = [FFFLanguageManager getTextWithKey:@"team_info_set_activity_group_tip"];
    teamIntro.title = [SendName streetSmart:[LaughData m_currentlyIdent]];
    //: teamIntro.subTitle = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : (canEdit ? [FFFLanguageManager getTextWithKey:@"team_info_set_activity_default_group_tip"] : @"");
    teamIntro.subTitle = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : (canEdit ? [SendName streetSmart:[LaughData appSourceTitleContent]] : @"");
    //: teamIntro.action = @selector(updateTeamIntro);
    teamIntro.action = @selector(lastTing);
    //: teamIntro.rowHeight = 50.f;
    teamIntro.rowHeight = 50.f;
    //: teamIntro.type = TeamCardRowItemTypeCommon;
    teamIntro.type = TeamCardRowItemTypeCommon;
    //: teamIntro.actionDisabled = !canEdit;
    teamIntro.actionDisabled = !canEdit;
    //: teamIntro.img = [UIImage imageNamed:@"ic_group_introduction"];
    teamIntro.img = [UIImage imageNamed:[LaughData notiHonestlyTitle]];

//    ToAGreaterExtentItem *teamAnnouncement = [[ToAGreaterExtentItem alloc] init];
//    teamAnnouncement.title = @"群公告".nim_localized;
//    teamAnnouncement.subTitle = @"点击查看群公告".nim_localized;
//    teamAnnouncement.action = @selector(updateTeamAnnouncement);
//    teamAnnouncement.rowHeight = 50.f;
//    teamAnnouncement.type   = TeamCardRowItemTypeCommon;
//    teamAnnouncement.img = [UIImage imageNamed:@"ic_announcement"];

    //: BOOL inAllMuteMode = self.teamListManager.team.inAllMuteMode;
    BOOL inAllMuteMode = self.teamListManager.team.inAllMuteMode;
    //: FFFTeamCardRowItem *teamMute = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *teamMute = [[ToAGreaterExtentItem alloc] init];
    //: teamMute.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_mute"];
    teamMute.title = [SendName streetSmart:[LaughData userSeparateText]];
    //: teamMute.switchOn = inAllMuteMode;
    teamMute.switchOn = inAllMuteMode;
//    teamMute.subTitle = [EnvelopingTitle teamMuteText:inAllMuteMode];
    //: teamMute.rowHeight = 50.f;
    teamMute.rowHeight = 50.f;
    //: teamMute.type = TeamCardRowItemTypeSwitch;
    teamMute.type = TeamCardRowItemTypeSwitch;
    //: teamMute.optionItems = [FFFTeamHelper teamMuteItemsWithSeleced:inAllMuteMode];
    teamMute.optionItems = [EnvelopingTitle reply:inAllMuteMode];
    //: teamMute.actionDisabled = !canEdit;
    teamMute.actionDisabled = !canEdit;
    //: teamMute.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    teamMute.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamMute:[item.value integerValue]];
        [weakSelf path:[item.value integerValue]];
    //: };
    };
    //: teamMute.identify = NIMTeamCardSwithCellTypeMute;
    teamMute.identify = NIMTeamCardSwithCellTypeMute;
    //: teamMute.img = [UIImage imageNamed:@"ic_group_all"];
    teamMute.img = [UIImage imageNamed:[LaughData kReplyMessage]];

    //: FFFTeamCardRowItem *teamMuteList = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *teamMuteList = [[ToAGreaterExtentItem alloc] init];
    //: teamMuteList.title = [FFFLanguageManager getTextWithKey:@"group_mute_member_list_activity_title"];
    teamMuteList.title = [SendName streetSmart:[LaughData app_leadershipId]];
    //: teamMuteList.rowHeight = 50.f;
    teamMuteList.rowHeight = 50.f;
    //: teamMuteList.type = TeamCardRowItemTypeCommon;
    teamMuteList.type = TeamCardRowItemTypeCommon;
    //: teamMuteList.action = @selector(enterMuteList);
    teamMuteList.action = @selector(modeHeight);
    //: teamMuteList.img = [UIImage imageNamed:@"ic_card_black"];
    teamMuteList.img = [UIImage imageNamed:[LaughData mainCornerIdent]];

    //: FFFTeamCardRowItem *teamNotify = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *teamNotify = [[ToAGreaterExtentItem alloc] init];
    //: teamNotify.title = [FFFLanguageManager getTextWithKey:@"message_info_activity_msg_notice"];
    teamNotify.title = [SendName streetSmart:[LaughData k_selectIdent]];//@"消息提醒".nim_localized;
    //: teamNotify.subTitle = [FFFTeamHelper notifyStateText:self.teamListManager.team.notifyStateForNewMsg];
    teamNotify.subTitle = [EnvelopingTitle closedSession:self.teamListManager.team.notifyStateForNewMsg];
    //: teamNotify.rowHeight = 50.f;
    teamNotify.rowHeight = 50.f;
    //: teamNotify.type = TeamCardRowItemTypeSelected;
    teamNotify.type = TeamCardRowItemTypeSelected;
    //: teamNotify.optionItems = [FFFTeamHelper notifyStateItemsWithSeleced:self.teamListManager.team.notifyStateForNewMsg];
    teamNotify.optionItems = [EnvelopingTitle showAcross:self.teamListManager.team.notifyStateForNewMsg];
    //: teamNotify.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    teamNotify.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateNotifiyState:[item.value integerValue]];
        [weakSelf contentFor:[item.value integerValue]];
    //: };
    };
    //: teamNotify.img = [UIImage imageNamed:@"ic_group_notice"];
    teamNotify.img = [UIImage imageNamed:[LaughData app_myText]];


    //: FFFTeamCardRowItem *itemAuth = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *itemAuth = [[ToAGreaterExtentItem alloc] init];
    //: itemAuth.title = [FFFLanguageManager getTextWithKey:@"authentication"];
    itemAuth.title = [SendName streetSmart:[LaughData user_leadershipMemberMsg]];
    //: itemAuth.subTitle = [FFFTeamHelper jonModeText:self.teamListManager.team.joinMode];
    itemAuth.subTitle = [EnvelopingTitle bar:self.teamListManager.team.joinMode];
    //: itemAuth.actionDisabled = !canEdit;
    itemAuth.actionDisabled = !canEdit;
    //: itemAuth.rowHeight = 50.f;
    itemAuth.rowHeight = 50.f;
    //: itemAuth.type = TeamCardRowItemTypeSelected;
    itemAuth.type = TeamCardRowItemTypeSelected;
    //: itemAuth.optionItems = [FFFTeamHelper joinModeItemsWithSeleced:self.teamListManager.team.joinMode];
    itemAuth.optionItems = [EnvelopingTitle unite:self.teamListManager.team.joinMode];
    //: itemAuth.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    itemAuth.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didupdateTeamJoinMode:[item.value integerValue]];
        [weakSelf tip:[item.value integerValue]];
    //: };
    };
    //: itemAuth.img = [UIImage imageNamed:@"ic_identity_authentication"];
    itemAuth.img = [UIImage imageNamed:[LaughData dreamShowData]];

    //: FFFTeamCardRowItem *itemInvite = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *itemInvite = [[ToAGreaterExtentItem alloc] init];
    //: itemInvite.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_invite_permission"];
    itemInvite.title = [SendName streetSmart:[LaughData dream_replyStrikeFormat]];
    //: itemInvite.subTitle = [FFFTeamHelper InviteModeText:self.teamListManager.team.inviteMode];
    itemInvite.subTitle = [EnvelopingTitle user:self.teamListManager.team.inviteMode];
    //: itemInvite.actionDisabled = !canEdit;
    itemInvite.actionDisabled = !canEdit;
    //: itemInvite.rowHeight = 50.f;
    itemInvite.rowHeight = 50.f;
    //: itemInvite.type = TeamCardRowItemTypeSelected;
    itemInvite.type = TeamCardRowItemTypeSelected;
    //: itemInvite.optionItems = [FFFTeamHelper InviteModeItemsWithSeleced:self.teamListManager.team.inviteMode];
    itemInvite.optionItems = [EnvelopingTitle pin:self.teamListManager.team.inviteMode];
    //: itemInvite.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    itemInvite.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamInviteMode:[item.value integerValue]];
        [weakSelf imageOf:[item.value integerValue]];
    //: };
    };
    //: itemInvite.img = [UIImage imageNamed:@"ic_invite"];
    itemInvite.img = [UIImage imageNamed:[LaughData k_semenFormat]];

    //: FFFTeamCardRowItem *itemUpdateInfo = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *itemUpdateInfo = [[ToAGreaterExtentItem alloc] init];
    //: itemUpdateInfo.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_group_modify_permission"];
    itemUpdateInfo.title = [SendName streetSmart:[LaughData app_hockUrl]];
    //: itemUpdateInfo.subTitle = [FFFTeamHelper updateInfoModeText:self.teamListManager.team.updateInfoMode];
    itemUpdateInfo.subTitle = [EnvelopingTitle imageNameText:self.teamListManager.team.updateInfoMode];
    //: itemUpdateInfo.actionDisabled = !canEdit;
    itemUpdateInfo.actionDisabled = !canEdit;
    //: itemUpdateInfo.rowHeight = 50.f;
    itemUpdateInfo.rowHeight = 50.f;
    //: itemUpdateInfo.type = TeamCardRowItemTypeSelected;
    itemUpdateInfo.type = TeamCardRowItemTypeSelected;
    //: itemUpdateInfo.optionItems = [FFFTeamHelper updateInfoModeItemsWithSeleced:self.teamListManager.team.updateInfoMode];
    itemUpdateInfo.optionItems = [EnvelopingTitle bubbleSize:self.teamListManager.team.updateInfoMode];
    //: itemUpdateInfo.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    itemUpdateInfo.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamInfoMode:[item.value integerValue]];
        [weakSelf syncopateStyleModeView:[item.value integerValue]];
    //: };
    };
    //: itemUpdateInfo.img = [UIImage imageNamed:@"ic_modify"];
    itemUpdateInfo.img = [UIImage imageNamed:[LaughData app_currentlyPath]];

    //: FFFTeamCardRowItem *itemBeInvite = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *itemBeInvite = [[ToAGreaterExtentItem alloc] init];
    //: itemBeInvite.title = [FFFLanguageManager getTextWithKey:@"activity_group_info_invite_verify"];
    itemBeInvite.title = [SendName streetSmart:[LaughData notiShouldTightenKey]];
    //: itemBeInvite.subTitle = [FFFTeamHelper beInviteModeText:self.teamListManager.team.beInviteMode];
    itemBeInvite.subTitle = [EnvelopingTitle onTitle:self.teamListManager.team.beInviteMode];
    //: itemBeInvite.actionDisabled = !canEdit;
    itemBeInvite.actionDisabled = !canEdit;
    //: itemBeInvite.rowHeight = 50.f;
    itemBeInvite.rowHeight = 50.f;
    //: itemBeInvite.type = TeamCardRowItemTypeSelected;
    itemBeInvite.type = TeamCardRowItemTypeSelected;
    //: itemBeInvite.optionItems = [FFFTeamHelper beInviteModeItemsWithSeleced:self.teamListManager.team.beInviteMode];
    itemBeInvite.optionItems = [EnvelopingTitle messageRecord:self.teamListManager.team.beInviteMode];
    //: itemBeInvite.selectedBlock = ^(id<FFFKitSelectCardData> item) {
    itemBeInvite.selectedBlock = ^(id<FFFKitSelectCardData> item) {
        //: [weakSelf didUpdateTeamBeInviteMode:[item.value integerValue]];
        [weakSelf state:[item.value integerValue]];
    //: };
    };
    //: itemBeInvite.img = [UIImage imageNamed:@"ic_invitee_verification"];
    itemBeInvite.img = [UIImage imageNamed:[LaughData userMakeText]];

    //: FFFTeamCardRowItem *itemTop = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *itemTop = [[ToAGreaterExtentItem alloc] init];
    //: itemTop.title = [FFFLanguageManager getTextWithKey:@"Chat_settop"];
    itemTop.title = [SendName streetSmart:[LaughData m_honestlyTitle]];
    //: itemTop.switchOn = self.option.isTop;
    itemTop.switchOn = self.option.isTop;
    //: itemTop.rowHeight = 50.f;
    itemTop.rowHeight = 50.f;
    //: itemTop.type = TeamCardRowItemTypeSwitch;
    itemTop.type = TeamCardRowItemTypeSwitch;
    //: itemTop.identify = NIMTeamCardSwithCellTypeTop;
    itemTop.identify = NIMTeamCardSwithCellTypeTop;
    //: itemTop.img = [UIImage imageNamed:@"ic_group_top"];
    itemTop.img = [UIImage imageNamed:[LaughData notiLiterallyImageIdent]];

//        ToAGreaterExtentItem *itemQuit = [[ToAGreaterExtentItem alloc] init];
//        itemQuit.title = @"退出高级群".nim_localized;
//        itemQuit.action = @selector(quitTeam);
//        itemQuit.rowHeight = 50.f;
//        itemQuit.type   = TeamCardRowItemTypeRedButton;
//    itemQuit.img = [UIImage imageNamed:@"ic_announcement"];

        //: FFFTeamCardRowItem *itemDismiss = [[FFFTeamCardRowItem alloc] init];
        ToAGreaterExtentItem *itemDismiss = [[ToAGreaterExtentItem alloc] init];
        //: itemDismiss.title = [FFFLanguageManager getTextWithKey:@"group_info_activity_jiesan"];
        itemDismiss.title = [SendName streetSmart:[LaughData m_woodenChildIdent]];
        //: itemDismiss.action = @selector(dismissTeam);
        itemDismiss.action = @selector(createButton);
        //: itemDismiss.rowHeight = 50.f;
        itemDismiss.rowHeight = 50.f;
        //: itemDismiss.type = TeamCardRowItemTypeRedButton;
        itemDismiss.type = TeamCardRowItemTypeRedButton;
    //: itemDismiss.img = [UIImage imageNamed:@"ic_announcement"];
    itemDismiss.img = [UIImage imageNamed:[LaughData showClickValue]];

    //: FFFTeamCardRowItem *teamChange = [[FFFTeamCardRowItem alloc] init];
    ToAGreaterExtentItem *teamChange = [[ToAGreaterExtentItem alloc] init];
    //: teamChange.title = [FFFLanguageManager getTextWithKey:@"Transfer_group_ownership"];
    teamChange.title = [SendName streetSmart:[LaughData kValueData]];
    //: teamChange.rowHeight = 50.f;
    teamChange.rowHeight = 50.f;
    //: teamChange.type = TeamCardRowItemTypeCommon;
    teamChange.type = TeamCardRowItemTypeCommon;
    //: teamChange.action = @selector(onMore);
    teamChange.action = @selector(moreMessage);
    //: teamChange.img = [UIImage imageNamed:@"ic_group_transfer"];
    teamChange.img = [UIImage imageNamed:[LaughData showSourcePath]];


    //: if (isOwner) {
    if (isOwner) {
        //: ret = @[
        ret = @[
                  //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
                  @[teamMembers,teamName,teamIntro,teamAnnoucement],
                  //: @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
                  @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
                  //: @[teamMuteList,teamMute,itemTop],
                  @[teamMuteList,teamMute,itemTop],
                 //: ];
                 ];
    //: } else if (isManager){
    } else if (isManager){
        //: ret = @[
        ret = @[
            //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
            @[teamMembers,teamName,teamIntro,teamAnnoucement],
            //: @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
            @[teamNotify,itemInvite,itemBeInvite,itemAuth,itemUpdateInfo],
            //: @[teamMuteList,teamMute,itemTop],
            @[teamMuteList,teamMute,itemTop],
              //: ];
              ];
    //: } else {
    } else {
        //: ret = @[
        ret = @[
            //: @[teamMembers,teamName,teamIntro,teamAnnoucement],
            @[teamMembers,teamName,teamIntro,teamAnnoucement],
            //: @[teamNotify],
            @[teamNotify],
            //: @[itemTop],
            @[itemTop],
               //: ];
               ];
    }
    //: return ret;
    return ret;
}

//: #pragma mark - Refresh
#pragma mark - Refresh
//: - (void)reloadTableViewData {
- (void)limitData {
    //: self.datas = [self buildBodyData];
    self.datas = [self teamCurrentContainer];
    //: self.tableView.tableHeaderView = self.userView;
    self.tableView.tableHeaderView = self.userView;
    //: self.tableView.tableFooterView = self.footView;
    self.tableView.tableFooterView = self.footView;
}

//: #pragma mark - Actions
#pragma mark - Actions
//: - (void)sendGroupCart
- (void)languageEnd
{
    //: NTESShareCardAttachment *attachment = [[NTESShareCardAttachment alloc] init];
    WithChild *attachment = [[WithChild alloc] init];
    //: attachment.title = self.teamListManager.team.teamName;
    attachment.title = self.teamListManager.team.teamName;
    //: attachment.type = @"1";
    attachment.type = @"1";
    //: attachment.personCardId = self.teamListManager.team.teamId;
    attachment.personCardId = self.teamListManager.team.teamId;
    //: attachment.content = @"";
    attachment.content = @"";
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

//: - (void)onMore{
- (void)moreMessage{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertAction *action0 = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"group_info_activity_give_group"]//@"转让群".nim_localized
    UIAlertAction *action0 = [UIAlertAction actionWithTitle:[SendName streetSmart:[LaughData noti_imageAfterMsg]]//@"转让群".nim_localized
                                                      //: style:UIAlertActionStyleDefault
                                                      style:UIAlertActionStyleDefault
                                                    //: handler:^(UIAlertAction * _Nonnull action) {
                                                    handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didOntransferWithLeave:NO];
        [weakSelf messageLeave:NO];
    //: }];
    }];

    //: UIAlertAction *action1 = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"Transfer_group_exit"] //@"转让群并退出".nim_localized
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:[SendName streetSmart:[LaughData main_situationValue]] //@"转让群并退出".nim_localized
                                                      //: style:UIAlertActionStyleDefault
                                                      style:UIAlertActionStyleDefault
                                                    //: handler:^(UIAlertAction * _Nonnull action) {
                                                    handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didOntransferWithLeave:YES];
        [weakSelf messageLeave:YES];
    //: }];
    }];

    //: UIAlertController *alert = [self makeAlertSheetWithTitle:[FFFLanguageManager getTextWithKey:@"please_choose"]//@"请操作".nim_localized
    UIAlertController *alert = [self nameLink:[SendName streetSmart:[LaughData user_greenValue]]//@"请操作".nim_localized
                                                     //: actions:@[action0, action1]];
                                                     selectLabel:@[action0, action1]];
    //: [self showAlert:alert];
    [self on:alert];
}

//- (void)onTouchAvatar {
//    if(![OffMore canEditTeamInfo:self.teamListManager.myTeamInfo])
//        return ;
//    __weak typeof(self) weakSelf = self;
//    UIAlertAction *action0 = [UIAlertAction actionWithTitle:LangKey(@"message_send_camera") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        [weakSelf didUpdateTeamAvatarWithType:UIImagePickerControllerSourceTypeCamera];
//    }];
//    
//    UIAlertAction *action1 = [UIAlertAction actionWithTitle:LangKey(@"message_send_album") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        [weakSelf didUpdateTeamAvatarWithType:UIImagePickerControllerSourceTypePhotoLibrary];
//    }];
//    
//    UIAlertController *alert = [self makeAlertSheetWithTitle:LangKey(@"set_group_avater")
//                                                     actions:@[action0, action1]];
//    [self showAlert:alert];
//}

//: - (void)updateTeamName{
- (void)buttonTime{

    //: [self.view addSubview:self.groupnameView];
    [self.view addSubview:self.groupnameView];
    //: [self.groupnameView reloadWithNickname:self.teamListManager.team.teamName];
    [self.groupnameView scarlet:self.teamListManager.team.teamName];
    //: [self.groupnameView animationShow];
    [self.groupnameView thread];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupnameView.speiceBackBlock = ^(NSString *groupName){
        self.groupnameView.speiceBackBlock = ^(NSString *groupName){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didUpdateTeamName:groupName];
            [self putUp:groupName];

            //: NSMutableDictionary *dict = @{}.mutableCopy;
            NSMutableDictionary *dict = @{}.mutableCopy;
            //: dict[@"id"] = self.teamListManager.team.teamId;
            dict[@"id"] = self.teamListManager.team.teamId;
            //: dict[@"name"] = emptyString(groupName);
            dict[[LaughData k_objectTitle]] = cornerViewText(groupName);
            //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/modifyname"] params:dict isShow:NO success:^(id responseObject) {
            [TitleManageressManager size:[NSString stringWithFormat:[LaughData m_guitarKey]] read:dict indicator:NO spaceOf:^(id responseObject) {
                //: [self reloadData];
                [self isSession];
                //: self.accountNickname.text = groupName;
                self.accountNickname.text = groupName;
            //: } failed:^(id responseObject, NSError *error) {
            } session:^(id responseObject, NSError *error) {

            //: }];
            }];

            //: [self.groupnameView animationClose];
            [self.groupnameView tingShould];
        //: };
        };

}

//: - (void)updateTeamNick
- (void)restoreKeyGhb
{
    //: [self.view addSubview:self.groupNickNameView];
    [self.view addSubview:self.groupNickNameView];
    //: [self.groupNickNameView animationShow];
    [self.groupNickNameView bubbleUser];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
        self.groupNickNameView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didUpdateTeamNick:Name];
            [self userShadow:Name];
            //: [self.groupNickNameView animationClose];
            [self.groupNickNameView tingShould];
        //: };
        };
}

//: - (void)updateTeamIntro
- (void)lastTing
{
    //: FFFTeamIntroduceViewController *vc = [[FFFTeamIntroduceViewController alloc] init];
    CenterViewController *vc = [[CenterViewController alloc] init];
    //: vc.defaultContent = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : @"";
    vc.defaultContent = self.teamListManager.team.intro.length ? self.teamListManager.team.intro : @"";
    //: vc.canEdit = [FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    vc.canEdit = [OffMore complete:self.teamListManager.myTeamInfo];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
    //: vc.speiceBackBlock = ^(NSString *Introduce){
    vc.speiceBackBlock = ^(NSString *Introduce){
        @
         //: try{} @finally{} __typeof__(self) self = __weak_self__;
         try{} @finally{} __typeof__(self) self = __weak_self__;
        //: [self didUpdateTeamIntro:Introduce];
        [self direction:Introduce];

        //: _introduce.text = Introduce;
        _introduce.text = Introduce;
    //: };
    };
}

//: - (void)updateTeamAnnouncement{
- (void)cellAnnouncement{
    //: NIMTeamAnnouncementListOption *option = [[NIMTeamAnnouncementListOption alloc] init];
    WithOption *option = [[WithOption alloc] init];
    //: option.canCreateAnnouncement = [FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo];
    option.canCreateAnnouncement = [OffMore complete:self.teamListManager.myTeamInfo];
    //: option.announcement = self.teamListManager.team.announcement;
    option.announcement = self.teamListManager.team.announcement;
    //: option.nick = self.teamListManager.myTeamInfo.nickname;
    option.nick = self.teamListManager.myTeamInfo.nickname;
    //: option.team = self.teamListManager.team;
    option.team = self.teamListManager.team;

    //: FFFTeamAnnouncementListViewController *vc = [[FFFTeamAnnouncementListViewController alloc] initWithOption:option];
    TextViewController *vc = [[TextViewController alloc] initWithHigh:option];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)quitTeam {
- (void)titleSelect {
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:[FFFLanguageManager getTextWithKey:@"queren_quit_group"] preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:[SendName streetSmart:[LaughData main_ecruKey]] preferredStyle:UIAlertControllerStyleAlert];
    //: UIAlertAction *sure = [UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"queren"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    UIAlertAction *sure = [UIAlertAction actionWithTitle:[SendName streetSmart:[LaughData user_dismissMessage]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: [weakSelf didQuitTeam];
        [weakSelf diam];
    //: }];
    }];
    //: [alert addAction:sure];
    [alert addAction:sure];
    //: [alert addAction:[self makeCancelAction]];
    [alert addAction:[self large]];
    //: [self showAlert:alert];
    [self on:alert];
}

//: - (void)dismissTeam {
- (void)createButton {

    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[FFFLanguageManager getTextWithKey:@"Confirm_dismiss_group_chat"]];
    [self.groupAlartView completeOf:[SendName streetSmart:[LaughData showInputIdent]]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView equal];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: [self didDismissTeam];
            [self at];
            //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/destory"] params:@{@"id":self.teamListManager.team.teamId} isShow:NO success:^(id responseObject) {
            [TitleManageressManager size:[NSString stringWithFormat:[LaughData kFinCenterFormat]] read:@{@"id":self.teamListManager.team.teamId} indicator:NO spaceOf:^(id responseObject) {

            //: } failed:^(id responseObject, NSError *error) {
            } session:^(id responseObject, NSError *error) {

            //: }];
            }];

            //: [self.groupAlartView animationClose];
            [self.groupAlartView tingShould];
        //: };
        };
}

//: - (void)enterMemberCard{
- (void)globalAction{

    //: if([self.teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
    if([self.teamListManager.team.owner isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]){
        //: CCCTeamMemberListViewController *vc = [[CCCTeamMemberListViewController alloc] initWithDataSource:self.teamListManager];
        VersionViewController *vc = [[VersionViewController alloc] initWithOffSource:self.teamListManager];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    //: }else{
    }else{
        //: TeamMemberNormalViewController *vc = [[TeamMemberNormalViewController alloc]init];
        RowViewController *vc = [[RowViewController alloc]init];
        //: vc.teamListManager = self.teamListManager;
        vc.teamListManager = self.teamListManager;
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}

//: - (void)enterMuteList
- (void)modeHeight
{
    //: FFFTeamMuteMemberListViewController *vc = [[FFFTeamMuteMemberListViewController alloc] init];
    NameViewController *vc = [[NameViewController alloc] init];
    //: vc.teamListManager = self.teamListManager;
    vc.teamListManager = self.teamListManager;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: #pragma mark - NIMTeamSwitchProtocol
#pragma mark - GreenProtocol
//: - (void)cell:(FFFTeamSwitchTableViewCell *)cell onStateChanged:(BOOL)on{
- (void)media:(WithCellView *)cell menu:(BOOL)on{
    //: if (cell.identify == NIMTeamCardSwithCellTypeTop) {
    if (cell.identify == NIMTeamCardSwithCellTypeTop) {
        //: if ([self.delegate respondsToSelector:@selector(NIMTeamCardVCDidSetTop:)]) {
        if ([self.delegate respondsToSelector:@selector(uped:)]) {
            //: [self.delegate NIMTeamCardVCDidSetTop:on];
            [self.delegate uped:on];
        }
    }
    //: if (cell.identify == NIMTeamCardSwithCellTypeMute) {
    if (cell.identify == NIMTeamCardSwithCellTypeMute) {
//        if ([self.delegate respondsToSelector:@selector(NIMTeamCardVCDidSetMute:)]) {
//            [self.delegate NIMTeamCardVCDidSetMute:on];
//        }
//        [self didUpdateTeamMute:on];
        //: [[NIMSDK sharedSDK].teamManager updateMuteState:on
        [[NIMSDK sharedSDK].teamManager updateMuteState:on
                                                 //: inTeam:self.teamListManager.team.teamId
                                                 inTeam:self.teamListManager.team.teamId
                                             //: completion:^(NSError * _Nullable error) {
                                             completion:^(NSError * _Nullable error) {
            //: NSString *msg = nil;
            NSString *msg = nil;
            //: if (!error) {
            if (!error) {
                //: msg = [FFFLanguageManager getTextWithKey:@"modify_activity_modify_success"];
                msg = [SendName streetSmart:[LaughData mainTextName]];
            //: }else{
            }else{
                //: msg = [FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"];
                msg = [SendName streetSmart:[LaughData show_enableFormat]];
            }
            //: [self showToastMsg:msg];
            [self signature:msg];
        //: }];
        }];
    }
}

//: #pragma mark - NIMTeamAnnouncementListVCDelegate
#pragma mark - NamePlayer
//: - (void)didUpdateAnnouncement:(NSString *)content
- (void)lastCompletion:(NSString *)content
                   //: completion:(void (^)(NSError *error))completion {
                   redCompletion:(void (^)(NSError *error))completion {
    //: [self.teamListManager updateTeamAnnouncement:content
    [self.teamListManager holder:content
                             //: completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
                             iconIndependent:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        //: if (completion) {
        if (completion) {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: #pragma mark - FFFTeamMemberListCellActionDelegate
#pragma mark - SoundShared
//: - (void)didSelectAddOpeartor{
- (void)addressFrom{
    //: NSMutableArray *users = [self.teamListManager memberIds];
    NSMutableArray *users = [self.teamListManager memberIds];
    //: NSString *currentUserID = [self.teamListManager myAccount];
    NSString *currentUserID = [self.teamListManager myAccount];
    //: [users addObject:currentUserID];
    [users addObject:currentUserID];

    //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
    TitleConfig *config = [[TitleConfig alloc] init];
    //: config.filterIds = users;
    config.filterIds = users;
    //: config.needMutiSelected = YES;
    config.needMutiSelected = YES;
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
    //: vc.delegate = self;
    vc.delegate = self;
    //: [vc show];
    [vc totalRelation];
}

//: #pragma mark - ContactSelectDelegate
#pragma mark - ContactSelectDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts{
- (void)fillInSearch:(NSArray *)selectedContacts{
    //: [self didInviteUsers:selectedContacts completion:nil];
    [self nameShow:selectedContacts independent:nil];
}

//: #pragma mark - Function
#pragma mark - Function
//: - (void)didOntransferWithLeave:(BOOL)isLeave {
- (void)messageLeave:(BOOL)isLeave {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: __block ContactSelectFinishBlock finishBlock = ^(NSArray * memeber, NSString *name, UIImage *avater){
    __block ContactSelectFinishBlock finishBlock = ^(NSArray * memeber, NSString *name, UIImage *avater){
        //: NSString *newOwnerId = memeber.firstObject;
        NSString *newOwnerId = memeber.firstObject;
        //: [wself didOntransferToUser:newOwnerId leave:isLeave];
        [wself size:newOwnerId total:isLeave];
        //: NSMutableDictionary *dict = @{}.mutableCopy;
        NSMutableDictionary *dict = @{}.mutableCopy;
        //: dict[@"id"] = self.teamListManager.team.teamId;
        dict[@"id"] = self.teamListManager.team.teamId;
        //: dict[@"new_owner_id"] = newOwnerId;
        dict[[LaughData kMakeStr]] = newOwnerId;
        //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/team/modifyowner"] params:dict isShow:NO success:^(id responseObject) {
        [TitleManageressManager size:[NSString stringWithFormat:[LaughData show_procedureStr]] read:dict indicator:NO spaceOf:^(id responseObject) {
            //: [wself reloadData];
            [wself isSession];
        //: } failed:^(id responseObject, NSError *error) {
        } session:^(id responseObject, NSError *error) {

        //: }];
        }];
    //: };
    };
    //: NSString *currentUserID = [self.teamListManager myAccount];
    NSString *currentUserID = [self.teamListManager myAccount];
    //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
    ItemConfig *config = [[ItemConfig alloc] init];
    //: config.session = self.teamListManager.session;
    config.session = self.teamListManager.transparency;
    //: config.teamType = NIMKitTeamTypeNomal;
    config.teamType = NIMKitTeamTypeNomal;
    //: config.teamId = self.teamListManager.team.teamId;
    config.teamId = self.teamListManager.team.teamId;
    //: config.filterIds = @[currentUserID];
    config.filterIds = @[currentUserID];
    //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
    BrandViewController *vc = [[BrandViewController alloc] initWithMax:config];
    //: vc.finshBlock = finishBlock;
    vc.finshBlock = finishBlock;
    //: [vc show];
    [vc totalRelation];
}

//: -(void)handlerClear
-(void)todayDate
{
    //: [self.view addSubview:self.groupAlartView];
    [self.view addSubview:self.groupAlartView];
    //: [self.groupAlartView reloadWithTitlename:[FFFLanguageManager getTextWithKey:@"clear_history"]];
    [self.groupAlartView completeOf:[SendName streetSmart:[LaughData notiRedTitle]]];
    //: [self.groupAlartView animationShow];
    [self.groupAlartView equal];
        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
        //: self.groupAlartView.speiceBackBlock = ^(NSString *Name){
        self.groupAlartView.speiceBackBlock = ^(NSString *Name){
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
            //: NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            NIMSessionDeleteAllRemoteMessagesOptions *options = [[NIMSessionDeleteAllRemoteMessagesOptions alloc] init];
            //: options.removeOtherClients = YES;
            options.removeOtherClients = YES;
            //: [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.teamListManager.session options:options completion:^(NSError * _Nullable error) {
            [NIMSDK.sharedSDK.conversationManager deleteAllRemoteMessagesInSession:self.teamListManager.transparency options:options completion:^(NSError * _Nullable error) {
                //: if (error) {
                if (error) {
                    //: return;
                    return;
                }
                //: [self.navigationController popToRootViewControllerAnimated:YES];
                [self.navigationController popToRootViewControllerAnimated:YES];

            //: }];
            }];

            //: [self.groupAlartView animationClose];
            [self.groupAlartView tingShould];
        //: };
        };


}
//: - (void)handleQrbtn
- (void)mishandleSuccess
{
    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    ContentViewController *vc = [[ContentViewController alloc] init];
    //: vc.isTeam = YES;
    vc.isTeam = YES;
    //: vc.team = self.teamListManager.team;
    vc.team = self.teamListManager.team;
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)onTouchAvatar
- (void)telecastingBefore
{
    //: [self.view addSubview:self.aleartView];
    [self.view addSubview:self.aleartView];
    //: [self.aleartView animationShow];
    [self.aleartView animation];
}
//: #pragma mark - UIImagePickerControllerSourceType
#pragma mark - UIImagePickerControllerSourceType
//: - (void)didTouchTheBtnWith:(NSInteger )tag
- (void)canInfo:(NSInteger )tag
{
    //: if(tag == 101){
    if(tag == 101){
        //: [self showImagePicker:UIImagePickerControllerSourceTypeCamera];
        [self button:UIImagePickerControllerSourceTypeCamera];
    //: }else if (tag == 102){
    }else if (tag == 102){
        //: [self showImagePicker:UIImagePickerControllerSourceTypePhotoLibrary];
        [self button:UIImagePickerControllerSourceTypePhotoLibrary];
    }
}
//: - (void)showImagePicker:(UIImagePickerControllerSourceType)type{
- (void)button:(UIImagePickerControllerSourceType)type{

    //: UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    //: picker.delegate = self;
    picker.delegate = self;
    //: picker.sourceType = type;
    picker.sourceType = type;
    //: picker.allowsEditing = YES; 
    picker.allowsEditing = YES; // 允许裁剪
    //: self.modalPresentationStyle = UIModalPresentationFullScreen;
    self.modalPresentationStyle = UIModalPresentationFullScreen;
    //: [self presentViewController:picker animated:YES completion:nil];
    [self presentViewController:picker animated:YES completion:nil];
}
//: #pragma mark - UIImagePickerControllerDelegate
#pragma mark - UIImagePickerControllerDelegate
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: UIImage *image = info[UIImagePickerControllerEditedImage];
    UIImage *image = info[UIImagePickerControllerEditedImage];
    //: [weakSelf uploadImage:image];
    [weakSelf join:image];
    //: weakSelf.accountheadImg.image = image;
    weakSelf.accountheadImg.image = image;
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)uploadImage:(UIImage *)image
- (void)join:(UIImage *)image
{
    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image view:CGSizeMake(150, 150)];
    //: NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:@"jpg"];
    NSString *fileName = [[[[NSUUID UUID] UUIDString] lowercaseString] stringByAppendingPathExtension:[LaughData main_contentData]];
    //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:fileName];
    //: NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    NSData *data = UIImageJPEGRepresentation(imageForAvatarUpload, 1.0);
    //: BOOL success = data && [data writeToFile:filePath atomically:YES];
    BOOL success = data && [data writeToFile:filePath atomically:YES];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: if (success) {
    if (success) {
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: [self.teamListManager updateTeamAvatar:filePath completion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
        [self.teamListManager edgeCompletion:filePath fiveItemCompletion:^(NSError * _Nonnull error, NSString * _Nonnull msg) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: [wself showToastMsg:msg];
            [wself signature:msg];
        //: }];
        }];
    //: } else {
    } else {
        //: [wself showToastMsg:@"图片保存失败，请重试".nim_localized];
        [wself signature:[LaughData mValueKey].maxColor];
    }
}
//: #pragma mark - Getter
#pragma mark - Getter
//: - (NSSetAvater *)aleartView{
- (ParameterView *)aleartView{
    //: if(!_aleartView){
    if(!_aleartView){
        //: _aleartView = [[NSSetAvater alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _aleartView = [[ParameterView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _aleartView.delegate = self;
        _aleartView.delegate = self;
    }
    //: return _aleartView;
    return _aleartView;
}
//: - (UIView *)userView
- (UIView *)userView
{
    //: if(!_userView){
    if(!_userView){
        //: _userView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 200+[UIDevice vg_statusBarHeight])];
        _userView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-30, 200+[UIDevice statusOrLevel])];
        //: [_userView setBackgroundColor:[UIColor clearColor]];
        [_userView setBackgroundColor:[UIColor clearColor]];

        //: UIView *infoView = [[UIView alloc]initWithFrame:CGRectMake(0, 44, [[UIScreen mainScreen] bounds].size.width-30, 176)];
        UIView *infoView = [[UIView alloc]initWithFrame:CGRectMake(0, 44, [[UIScreen mainScreen] bounds].size.width-30, 176)];
        //: infoView.backgroundColor = [UIColor whiteColor];
        infoView.backgroundColor = [UIColor whiteColor];
        //: infoView.layer.cornerRadius = 12;
        infoView.layer.cornerRadius = 12;
        //: infoView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        infoView.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0400].CGColor;
        //: infoView.layer.shadowOffset = CGSizeMake(0,4);
        infoView.layer.shadowOffset = CGSizeMake(0,4);
        //: infoView.layer.shadowOpacity = 1;
        infoView.layer.shadowOpacity = 1;
        //: infoView.layer.shadowRadius = 16;
        infoView.layer.shadowRadius = 16;
        //: [_userView addSubview:infoView];
        [_userView addSubview:infoView];

        //: UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-88)/2, -44, 88, 88)];
        UIView *imgView = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-88)/2, -44, 88, 88)];
        //: [infoView addSubview:imgView];
        [infoView addSubview:imgView];

        //: self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 88, 88)];
        self.accountheadImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 88, 88)];
        //: self.accountheadImg.layer.cornerRadius = 44;
        self.accountheadImg.layer.cornerRadius = 44;
        //: self.accountheadImg.layer.masksToBounds = YES;
        self.accountheadImg.layer.masksToBounds = YES;
        //: self.accountheadImg.layer.borderWidth = 2;
        self.accountheadImg.layer.borderWidth = 2;
        //: self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        self.accountheadImg.layer.borderColor = [UIColor whiteColor].CGColor;
        //: [imgView addSubview:self.accountheadImg];
        [imgView addSubview:self.accountheadImg];
        //: [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.teamListManager.team.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
        [self.accountheadImg sd_setImageWithURL:[NSURL URLWithString:self.teamListManager.team.avatarUrl] placeholderImage:[UIImage imageNamed:[LaughData m_cornerMsg]]];
        //: UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(88-28, 88-28, 28, 28)];
        UIButton *cameraicon = [[UIButton alloc] initWithFrame:CGRectMake(88-28, 88-28, 28, 28)];
        //: [cameraicon setImage:[UIImage imageNamed:@"icon_photo"] forState:(UIControlStateNormal)];
        [cameraicon setImage:[UIImage imageNamed:[LaughData dream_disappointedId]] forState:(UIControlStateNormal)];
        //: cameraicon.layer.cornerRadius = 14;
        cameraicon.layer.cornerRadius = 14;
        //: cameraicon.layer.masksToBounds = YES;
        cameraicon.layer.masksToBounds = YES;
        //: [imgView addSubview:cameraicon];
        [imgView addSubview:cameraicon];
        //: cameraicon.hidden = YES;
        cameraicon.hidden = YES;
        //: [cameraicon addTarget:self action:@selector(onTouchAvatar) forControlEvents:(UIControlEventTouchUpInside)];
        [cameraicon addTarget:self action:@selector(telecastingBefore) forControlEvents:(UIControlEventTouchUpInside)];
        //: if([FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo]){
        if([OffMore complete:self.teamListManager.myTeamInfo]){
            //: cameraicon.hidden = NO;
            cameraicon.hidden = NO;
        }

        //: UIButton *editBtn = [[UIButton alloc] initWithFrame:CGRectMake(15, 15, 36, 36)];
        UIButton *editBtn = [[UIButton alloc] initWithFrame:CGRectMake(15, 15, 36, 36)];
        //: [editBtn setImage:[UIImage imageNamed:@"group_edit"] forState:(UIControlStateNormal)];
        [editBtn setImage:[UIImage imageNamed:[LaughData main_gateTitle]] forState:(UIControlStateNormal)];
        //: [editBtn addTarget:self action:@selector(updateTeamIntro) forControlEvents:(UIControlEventTouchUpInside)];
        [editBtn addTarget:self action:@selector(lastTing) forControlEvents:(UIControlEventTouchUpInside)];
        //: [infoView addSubview:editBtn];
        [infoView addSubview:editBtn];
        //: editBtn.hidden = YES;
        editBtn.hidden = YES;
        //: if([FFFKitUtil canEditTeamInfo:self.teamListManager.myTeamInfo]){
        if([OffMore complete:self.teamListManager.myTeamInfo]){
            //: editBtn.hidden = NO;
            editBtn.hidden = NO;
        }

//        UIButton *QrBtn= [UIButton buttonWithType:UIButtonTypeCustom];
//        QrBtn.frame = CGRectMake(SCREEN_WIDTH-30-15-36, 15, 36, 36);
////        QrBtn.backgroundColor = [UIColor whiteColor];
//        [QrBtn setImage:[UIImage imageNamed:@"his_qr"] forState:UIControlStateNormal];
//        [QrBtn addTarget:self action:@selector(handleQrbtn) forControlEvents:UIControlEventTouchUpInside];
//        QrBtn.layer.cornerRadius = 8;
//        [infoView addSubview:QrBtn];

        //: self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200-30)/2.f, imgView.bottom + 10, 200, 22)];
        self.accountNickname = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200-30)/2.f, imgView.bottom + 10, 200, 22)];
        //: self.accountNickname.font = [UIFont systemFontOfSize:20];
        self.accountNickname.font = [UIFont systemFontOfSize:20];
        //: self.accountNickname.textColor = [UIColor colorWithRed:28/255.0 green:45/255.0 blue:66/255.0 alpha:1.0];
        self.accountNickname.textColor = [UIColor colorWithRed:28/255.0 green:45/255.0 blue:66/255.0 alpha:1.0];
        //: self.accountNickname.textAlignment = NSTextAlignmentCenter;
        self.accountNickname.textAlignment = NSTextAlignmentCenter;
        //: self.accountNickname.text = self.teamListManager.team.teamName;
        self.accountNickname.text = self.teamListManager.team.teamName;
        //: [infoView addSubview:self.accountNickname];
        [infoView addSubview:self.accountNickname];

        //: _introduce = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+6, [[UIScreen mainScreen] bounds].size.width-60, 60)];
        _introduce = [[UILabel alloc] initWithFrame:CGRectMake(15, self.accountNickname.bottom+6, [[UIScreen mainScreen] bounds].size.width-60, 60)];
        //: _introduce.font = [UIFont systemFontOfSize:14];
        _introduce.font = [UIFont systemFontOfSize:14];
        //: _introduce.textColor = [UIColor colorWithHexString:@"2C3042"];
        _introduce.textColor = [UIColor status:[LaughData notiPathTelevisionValue]];
        //: _introduce.textAlignment = NSTextAlignmentCenter;
        _introduce.textAlignment = NSTextAlignmentCenter;
        //: _introduce.text = self.teamListManager.team.intro?:[FFFLanguageManager getTextWithKey:@"team_info_set_activity_group_tip"];
        _introduce.text = self.teamListManager.team.intro?:[SendName streetSmart:[LaughData m_currentlyIdent]];
        //: _introduce.numberOfLines = 0;
        _introduce.numberOfLines = 0;
        //: [infoView addSubview:_introduce];
        [infoView addSubview:_introduce];


    }
    //: return _userView;
    return _userView;
}
//: - (UIView *)footView{
- (UIView *)footView{
    //: if(!_footView){
    if(!_footView){
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30);
        //: _footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 110)];
        _footView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 110)];

        //: UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnClear = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnClear.frame = CGRectMake(0, 0, width, 44);
        btnClear.frame = CGRectMake(0, 0, width, 44);
        //: btnClear.backgroundColor = [UIColor whiteColor];
        btnClear.backgroundColor = [UIColor whiteColor];
        //: btnClear.layer.cornerRadius = 24;
        btnClear.layer.cornerRadius = 24;
        //: btnClear.layer.borderWidth = 1;
        btnClear.layer.borderWidth = 1;
        //: btnClear.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        btnClear.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: btnClear.titleLabel.font = [UIFont systemFontOfSize:14];
        btnClear.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnClear setTitleColor:[UIColor colorWithHexString:@"FF483D"] forState:UIControlStateNormal];
        [btnClear setTitleColor:[UIColor status:[LaughData mMessageValue]] forState:UIControlStateNormal];
        //: [btnClear setTitle:[FFFLanguageManager getTextWithKey:@"activity_user_profile_clear_chat"] forState:UIControlStateNormal];
        [btnClear setTitle:[SendName streetSmart:[LaughData dreamNearlyToTitle]] forState:UIControlStateNormal];
//        [btnClear setImage:[UIImage imageNamed:@"ic_clear"] forState:UIControlStateNormal];
        //: [btnClear addTarget:self action:@selector(handlerClear) forControlEvents:UIControlEventTouchUpInside];
        [btnClear addTarget:self action:@selector(todayDate) forControlEvents:UIControlEventTouchUpInside];
        //: [_footView addSubview:btnClear];
        [_footView addSubview:btnClear];


        //: UIButton *btnDet = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnDet = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnDet.frame = CGRectMake(0, btnClear.bottom+10, width, 48);
        btnDet.frame = CGRectMake(0, btnClear.bottom+10, width, 48);
        //: btnDet.backgroundColor = [UIColor whiteColor];
        btnDet.backgroundColor = [UIColor whiteColor];
        //: btnDet.layer.cornerRadius = 24;
        btnDet.layer.cornerRadius = 24;
        //: btnDet.layer.borderWidth = 1;
        btnDet.layer.borderWidth = 1;
        //: btnDet.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        btnDet.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: btnDet.titleLabel.font = [UIFont systemFontOfSize:14];
        btnDet.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnDet setTitleColor:[UIColor colorWithHexString:@"FF483D"] forState:UIControlStateNormal];
        [btnDet setTitleColor:[UIColor status:[LaughData mMessageValue]] forState:UIControlStateNormal];
        //: [_footView addSubview:btnDet];
        [_footView addSubview:btnDet];

        //: BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        BOOL isOwner = self.teamListManager.myTeamInfo.type == NIMTeamMemberTypeOwner;
        //: if(isOwner){
        if(isOwner){
//            [btnDet setImage:[UIImage imageNamed:@"ic_release"] forState:UIControlStateNormal];
            //: [btnDet setTitle:[FFFLanguageManager getTextWithKey:@"group_info_activity_jiesan"] forState:UIControlStateNormal];
            [btnDet setTitle:[SendName streetSmart:[LaughData m_woodenChildIdent]] forState:UIControlStateNormal];
            //: [btnDet addTarget:self action:@selector(dismissTeam) forControlEvents:UIControlEventTouchUpInside];
            [btnDet addTarget:self action:@selector(createButton) forControlEvents:UIControlEventTouchUpInside];
        //: }else{
        }else{
//            [btnDet setImage:[UIImage imageNamed:@"ic_exit"] forState:UIControlStateNormal];
            //: [btnDet setTitle:[FFFLanguageManager getTextWithKey:@"group_info_activity_exit"] forState:UIControlStateNormal];
            [btnDet setTitle:[SendName streetSmart:[LaughData mainLabelShouldValue]] forState:UIControlStateNormal];
            //: [btnDet addTarget:self action:@selector(quitTeam) forControlEvents:UIControlEventTouchUpInside];
            [btnDet addTarget:self action:@selector(titleSelect) forControlEvents:UIControlEventTouchUpInside];
        }
    }
    //: return _footView;
    return _footView;
}

//: - (ZMONSetGroupNameView *)groupnameView
- (ComponentView *)groupnameView
{
    //: if(!_groupnameView){
    if(!_groupnameView){
        //: _groupnameView = [[ZMONSetGroupNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupnameView = [[ComponentView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupnameView;
    return _groupnameView;
}

//: - (ZMONSetGroupNickNameView *)groupNickNameView{
- (ColorView *)groupNickNameView{
    //: if(!_groupNickNameView){
    if(!_groupNickNameView){
        //: _groupNickNameView = [[ZMONSetGroupNickNameView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupNickNameView = [[ColorView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupNickNameView;
    return _groupNickNameView;
}

//: - (ZMONAlartView *)groupAlartView{
- (CanView *)groupAlartView{
    //: if(!_groupAlartView){
    if(!_groupAlartView){
        //: _groupAlartView = [[ZMONAlartView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _groupAlartView = [[CanView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _groupAlartView;
    return _groupAlartView;
}

//: @end
@end