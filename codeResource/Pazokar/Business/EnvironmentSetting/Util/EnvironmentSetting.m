
#import <Foundation/Foundation.h>

@interface FainData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation FainData

+ (instancetype)sharedInstance {
    static FainData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)FainDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)FainDataToCache:(Byte *)data {
    int vasopressin = data[0];
    Byte replyChildShould = data[1];
    int pathDraft = data[2];
    for (int i = pathDraft; i < pathDraft + vasopressin; i++) {
        int value = data[i] - replyChildShould;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[pathDraft + vasopressin] = 0;
    return data + pathDraft;
}

- (NSString *)StringFromFainData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FainDataToCache:data]];
}

//: nim_rsa_padding_mode
- (NSString *)dream_mentorValue {
    /* static */ NSString *dream_mentorValue = nil;
    if (!dream_mentorValue) {
		NSArray<NSNumber *> *origin = @[@20, @68, @8, @41, @181, @23, @175, @101, @178, @173, @177, @163, @182, @183, @165, @163, @180, @165, @168, @168, @173, @178, @171, @163, @177, @179, @168, @169, @181];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_mentorValue = [self StringFromFainData:value];
    }
    return dream_mentorValue;
}

//: enable_revoke_msg_ps
- (NSString *)mainVoiceKey {
    /* static */ NSString *mainVoiceKey = nil;
    if (!mainVoiceKey) {
		NSArray<NSNumber *> *origin = @[@20, @42, @12, @122, @34, @153, @250, @149, @21, @116, @210, @55, @143, @152, @139, @140, @150, @143, @137, @156, @143, @160, @153, @149, @143, @137, @151, @157, @145, @137, @154, @157, @214];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainVoiceKey = [self StringFromFainData:value];
    }
    return mainVoiceKey;
}

//: socks5_password
- (NSString *)dream_tightenProjectMessage {
    /* static */ NSString *dream_tightenProjectMessage = nil;
    if (!dream_tightenProjectMessage) {
		NSArray<NSNumber *> *origin = @[@15, @71, @10, @134, @118, @182, @67, @64, @74, @6, @186, @182, @170, @178, @186, @124, @166, @183, @168, @186, @186, @190, @182, @185, @171, @122];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_tightenProjectMessage = [self StringFromFainData:value];
    }
    return dream_tightenProjectMessage;
}

//: disable_audio_session_reset
- (NSString *)mainInfoPath {
    /* static */ NSString *mainInfoPath = nil;
    if (!mainInfoPath) {
		NSArray<NSNumber *> *origin = @[@27, @89, @6, @70, @138, @236, @189, @194, @204, @186, @187, @197, @190, @184, @186, @206, @189, @194, @200, @184, @204, @190, @204, @204, @194, @200, @199, @184, @203, @190, @204, @190, @205, @188];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainInfoPath = [self StringFromFainData:value];
    }
    return mainInfoPath;
}

//: local_search_time_order_desc
- (NSString *)m_formationMessage {
    /* static */ NSString *m_formationMessage = nil;
    if (!m_formationMessage) {
		NSArray<NSNumber *> *origin = @[@28, @96, @6, @165, @231, @228, @204, @207, @195, @193, @204, @191, @211, @197, @193, @210, @195, @200, @191, @212, @201, @205, @197, @191, @207, @210, @196, @197, @210, @191, @196, @197, @211, @195, @229];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_formationMessage = [self StringFromFainData:value];
    }
    return m_formationMessage;
}

//: using_amr
- (NSString *)showStrikeMsg {
    /* static */ NSString *showStrikeMsg = nil;
    if (!showStrikeMsg) {
		NSArray<NSNumber *> *origin = @[@9, @14, @6, @171, @132, @122, @131, @129, @119, @124, @117, @109, @111, @123, @128, @32];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showStrikeMsg = [self StringFromFainData:value];
    }
    return showStrikeMsg;
}

//: nim_asym_crypto_type
- (NSString *)appOilMsg {
    /* static */ NSString *appOilMsg = nil;
    if (!appOilMsg) {
		NSArray<NSNumber *> *origin = @[@20, @11, @10, @251, @112, @35, @67, @250, @126, @62, @121, @116, @120, @106, @108, @126, @132, @120, @106, @110, @125, @132, @123, @127, @122, @106, @127, @132, @123, @112, @143];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appOilMsg = [self StringFromFainData:value];
    }
    return appOilMsg;
}

//: socks5_type
- (NSString *)kFormationText {
    /* static */ NSString *kFormationText = nil;
    if (!kFormationText) {
		NSArray<NSNumber *> *origin = @[@11, @44, @5, @161, @68, @159, @155, @143, @151, @159, @97, @139, @160, @165, @156, @145, @229];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kFormationText = [self StringFromFainData:value];
    }
    return kFormationText;
}

//: animated_image_thumbnail_enabled
- (NSString *)appDisappointedText {
    /* static */ NSString *appDisappointedText = nil;
    if (!appDisappointedText) {
		NSArray<NSNumber *> *origin = @[@32, @15, @13, @96, @152, @67, @186, @3, @171, @169, @185, @5, @195, @112, @125, @120, @124, @112, @131, @116, @115, @110, @120, @124, @112, @118, @116, @110, @131, @119, @132, @124, @113, @125, @112, @120, @123, @110, @116, @125, @112, @113, @123, @116, @115, @181];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appDisappointedText = [self StringFromFainData:value];
    }
    return appDisappointedText;
}

//: ipv6_default_link
- (NSString *)m_doorwayMsg {
    /* static */ NSString *m_doorwayMsg = nil;
    if (!m_doorwayMsg) {
		NSArray<NSNumber *> *origin = @[@17, @89, @13, @135, @23, @216, @13, @205, @218, @207, @193, @10, @172, @194, @201, @207, @143, @184, @189, @190, @191, @186, @206, @197, @205, @184, @197, @194, @199, @196, @13];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_doorwayMsg = [self StringFromFainData:value];
    }
    return m_doorwayMsg;
}

//: enabled_remove_recent_session
- (NSString *)main_inputStr {
    /* static */ NSString *main_inputStr = nil;
    if (!main_inputStr) {
		NSArray<NSNumber *> *origin = @[@29, @8, @10, @234, @174, @249, @8, @121, @189, @14, @109, @118, @105, @106, @116, @109, @108, @103, @122, @109, @117, @119, @126, @109, @103, @122, @109, @107, @109, @118, @124, @103, @123, @109, @123, @123, @113, @119, @118, @106];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_inputStr = [self StringFromFainData:value];
    }
    return main_inputStr;
}

//: count_team_notification
- (NSString *)userExplainValue {
    /* static */ NSString *userExplainValue = nil;
    if (!userExplainValue) {
		NSArray<NSNumber *> *origin = @[@23, @47, @10, @25, @254, @144, @8, @4, @6, @122, @146, @158, @164, @157, @163, @142, @163, @148, @144, @156, @142, @157, @158, @163, @152, @149, @152, @146, @144, @163, @152, @158, @157, @83];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userExplainValue = [self StringFromFainData:value];
    }
    return userExplainValue;
}

//: menu_delete_msg_from_server
- (NSString *)kPotatoIdent {
    /* static */ NSString *kPotatoIdent = nil;
    if (!kPotatoIdent) {
		NSArray<NSNumber *> *origin = @[@27, @31, @5, @179, @58, @140, @132, @141, @148, @126, @131, @132, @139, @132, @147, @132, @126, @140, @146, @134, @126, @133, @145, @142, @140, @126, @146, @132, @145, @149, @132, @145, @60];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kPotatoIdent = [self StringFromFainData:value];
    }
    return kPotatoIdent;
}

//: sync_when_remote_fetch_messages
- (NSString *)user_contemplateData {
    /* static */ NSString *user_contemplateData = nil;
    if (!user_contemplateData) {
		NSArray<NSNumber *> *origin = @[@31, @20, @3, @135, @141, @130, @119, @115, @139, @124, @121, @130, @115, @134, @121, @129, @131, @136, @121, @115, @122, @121, @136, @119, @124, @115, @129, @121, @135, @135, @117, @123, @121, @135, @245];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_contemplateData = [self StringFromFainData:value];
    }
    return user_contemplateData;
}

//: custom_client_type
- (NSString *)appWithData {
    /* static */ NSString *appWithData = nil;
    if (!appWithData) {
		NSArray<NSNumber *> *origin = @[@18, @39, @5, @158, @76, @138, @156, @154, @155, @150, @148, @134, @138, @147, @144, @140, @149, @155, @134, @155, @160, @151, @140, @14];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appWithData = [self StringFromFainData:value];
    }
    return appWithData;
}

//: enable_file_quick_transfer
- (NSString *)appForbidFormat {
    /* static */ NSString *appForbidFormat = nil;
    if (!appForbidFormat) {
		NSArray<NSNumber *> *origin = @[@26, @75, @10, @198, @11, @123, @54, @208, @82, @40, @176, @185, @172, @173, @183, @176, @170, @177, @180, @183, @176, @170, @188, @192, @180, @174, @182, @170, @191, @189, @172, @185, @190, @177, @176, @189, @246];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appForbidFormat = [self StringFromFainData:value];
    }
    return appForbidFormat;
}

//: socks5
- (NSString *)showTopicKey {
    /* static */ NSString *showTopicKey = nil;
    if (!showTopicKey) {
		NSArray<NSNumber *> *origin = @[@6, @82, @13, @6, @242, @3, @208, @244, @173, @136, @205, @122, @144, @197, @193, @181, @189, @197, @135, @147];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showTopicKey = [self StringFromFainData:value];
    }
    return showTopicKey;
}

//: menu_delete_msg_from_db
- (NSString *)dreamRegardingMsg {
    /* static */ NSString *dreamRegardingMsg = nil;
    if (!dreamRegardingMsg) {
		NSArray<NSNumber *> *origin = @[@23, @61, @10, @246, @113, @46, @191, @180, @43, @162, @170, @162, @171, @178, @156, @161, @162, @169, @162, @177, @162, @156, @170, @176, @164, @156, @163, @175, @172, @170, @156, @161, @159, @22];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamRegardingMsg = [self StringFromFainData:value];
    }
    return dreamRegardingMsg;
}

//: server_record_mode
- (NSString *)dream_situationMessage {
    /* static */ NSString *dream_situationMessage = nil;
    if (!dream_situationMessage) {
		NSArray<NSNumber *> *origin = @[@18, @95, @10, @203, @97, @122, @113, @147, @242, @149, @210, @196, @209, @213, @196, @209, @190, @209, @196, @194, @206, @209, @195, @190, @204, @206, @195, @196, @216];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_situationMessage = [self StringFromFainData:value];
    }
    return dream_situationMessage;
}

//: nim_test_disable_traceroute
- (NSString *)showContemplateUrl {
    /* static */ NSString *showContemplateUrl = nil;
    if (!showContemplateUrl) {
		NSArray<NSNumber *> *origin = @[@27, @3, @11, @111, @37, @189, @103, @181, @162, @254, @197, @113, @108, @112, @98, @119, @104, @118, @119, @98, @103, @108, @118, @100, @101, @111, @104, @98, @119, @117, @100, @102, @104, @117, @114, @120, @119, @104, @130];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showContemplateUrl = [self StringFromFainData:value];
    }
    return showContemplateUrl;
}

//: custom_apns_content_type
- (NSString *)notiDoorwayStr {
    /* static */ NSString *notiDoorwayStr = nil;
    if (!notiDoorwayStr) {
		NSArray<NSNumber *> *origin = @[@24, @65, @6, @138, @181, @11, @164, @182, @180, @181, @176, @174, @160, @162, @177, @175, @180, @160, @164, @176, @175, @181, @166, @175, @181, @160, @181, @186, @177, @166, @233];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiDoorwayStr = [self StringFromFainData:value];
    }
    return notiDoorwayStr;
}

//: enable_sdk_video_render
- (NSString *)mainDisappointedValue {
    /* static */ NSString *mainDisappointedValue = nil;
    if (!mainDisappointedValue) {
		NSArray<NSNumber *> *origin = @[@23, @62, @13, @104, @73, @209, @121, @37, @67, @137, @157, @233, @87, @163, @172, @159, @160, @170, @163, @157, @177, @162, @169, @157, @180, @167, @162, @163, @173, @157, @176, @163, @172, @162, @163, @176, @156];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainDisappointedValue = [self StringFromFainData:value];
    }
    return mainDisappointedValue;
}

//: enable_rotate
- (NSString *)mainToElectronStr {
    /* static */ NSString *mainToElectronStr = nil;
    if (!mainToElectronStr) {
		NSArray<NSNumber *> *origin = @[@13, @75, @9, @70, @45, @106, @105, @55, @64, @176, @185, @172, @173, @183, @176, @170, @189, @186, @191, @172, @191, @176, @85];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainToElectronStr = [self StringFromFainData:value];
    }
    return mainToElectronStr;
}

//: enabled_drop_msg_table
- (NSString *)userBeamValue {
    /* static */ NSString *userBeamValue = nil;
    if (!userBeamValue) {
		NSArray<NSNumber *> *origin = @[@22, @72, @12, @166, @88, @73, @65, @92, @247, @57, @28, @99, @173, @182, @169, @170, @180, @173, @172, @167, @172, @186, @183, @184, @167, @181, @187, @175, @167, @188, @169, @170, @180, @173, @253];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userBeamValue = [self StringFromFainData:value];
    }
    return userBeamValue;
}

//: socks5_addr
- (NSString *)noti_imageId {
    /* static */ NSString *noti_imageId = nil;
    if (!noti_imageId) {
		NSArray<NSNumber *> *origin = @[@11, @78, @5, @102, @78, @193, @189, @177, @185, @193, @131, @173, @175, @178, @178, @192, @5];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_imageId = [self StringFromFainData:value];
    }
    return noti_imageId;
}

//: Settings
- (NSString *)dreamInputUrl {
    /* static */ NSString *dreamInputUrl = nil;
    if (!dreamInputUrl) {
		NSArray<NSNumber *> *origin = @[@8, @10, @7, @170, @178, @81, @2, @93, @111, @126, @126, @115, @120, @113, @125, @60];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamInputUrl = [self StringFromFainData:value];
    }
    return dreamInputUrl;
}

//: custom
- (NSString *)mainDeserveUrl {
    /* static */ NSString *mainDeserveUrl = nil;
    if (!mainDeserveUrl) {
		NSArray<NSNumber *> *origin = @[@6, @59, @11, @246, @19, @3, @131, @44, @231, @30, @57, @158, @176, @174, @175, @170, @168, @148];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainDeserveUrl = [self StringFromFainData:value];
    }
    return mainDeserveUrl;
}

//: Key
- (NSString *)dream_greenName {
    /* static */ NSString *dream_greenName = nil;
    if (!dream_greenName) {
		NSArray<NSNumber *> *origin = @[@3, @74, @6, @16, @114, @63, @149, @175, @195, @243];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_greenName = [self StringFromFainData:value];
    }
    return dream_greenName;
}

//: videochat_auto_disable_audiosession
- (NSString *)userNameText {
    /* static */ NSString *userNameText = nil;
    if (!userNameText) {
		NSArray<NSNumber *> *origin = @[@35, @86, @11, @19, @80, @187, @94, @214, @14, @39, @151, @204, @191, @186, @187, @197, @185, @190, @183, @202, @181, @183, @203, @202, @197, @181, @186, @191, @201, @183, @184, @194, @187, @181, @183, @203, @186, @191, @197, @201, @187, @201, @201, @191, @197, @196, @14];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userNameText = [self StringFromFainData:value];
    }
    return userNameText;
}

//: show_fps_for_app
- (NSString *)show_makeValueKey {
    /* static */ NSString *show_makeValueKey = nil;
    if (!show_makeValueKey) {
		NSArray<NSNumber *> *origin = @[@16, @59, @13, @231, @103, @138, @77, @176, @82, @173, @254, @221, @101, @174, @163, @170, @178, @154, @161, @171, @174, @154, @161, @170, @173, @154, @156, @171, @171, @49];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_makeValueKey = [self StringFromFainData:value];
    }
    return show_makeValueKey;
}

//: socks5_username
- (NSString *)mToolIdent {
    /* static */ NSString *mToolIdent = nil;
    if (!mToolIdent) {
		NSArray<NSNumber *> *origin = @[@15, @35, @6, @51, @206, @14, @150, @146, @134, @142, @150, @88, @130, @152, @150, @136, @149, @145, @132, @144, @136, @65];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mToolIdent = [self StringFromFainData:value];
    }
    return mToolIdent;
}

//: videochat_prefer_hd_audio
- (NSString *)notiVoiceFormat {
    /* static */ NSString *notiVoiceFormat = nil;
    if (!notiVoiceFormat) {
		NSArray<NSNumber *> *origin = @[@25, @16, @6, @251, @39, @81, @134, @121, @116, @117, @127, @115, @120, @113, @132, @111, @128, @130, @117, @118, @117, @130, @111, @120, @116, @111, @113, @133, @116, @121, @127, @175];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiVoiceFormat = [self StringFromFainData:value];
    }
    return notiVoiceFormat;
}

//: enable_thread_cloud_pull
- (NSString *)main_greenMessage {
    /* static */ NSString *main_greenMessage = nil;
    if (!main_greenMessage) {
		NSArray<NSNumber *> *origin = @[@24, @74, @9, @142, @217, @141, @127, @126, @199, @175, @184, @171, @172, @182, @175, @169, @190, @178, @188, @175, @171, @174, @169, @173, @182, @185, @191, @174, @169, @186, @191, @182, @182, @59];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_greenMessage = [self StringFromFainData:value];
    }
    return main_greenMessage;
}

//: nim_test_msg_env
- (NSString *)userRedData {
    /* static */ NSString *userRedData = nil;
    if (!userRedData) {
		NSArray<NSNumber *> *origin = @[@16, @45, @3, @155, @150, @154, @140, @161, @146, @160, @161, @140, @154, @160, @148, @140, @146, @155, @163, @118];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userRedData = [self StringFromFainData:value];
    }
    return userRedData;
}

//: nim_sym_crypto_type
- (NSString *)mainAdequateIdent {
    /* static */ NSString *mainAdequateIdent = nil;
    if (!mainAdequateIdent) {
		NSArray<NSNumber *> *origin = @[@19, @9, @10, @241, @24, @70, @85, @62, @214, @65, @119, @114, @118, @104, @124, @130, @118, @104, @108, @123, @130, @121, @125, @120, @104, @125, @130, @121, @110, @101];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainAdequateIdent = [self StringFromFainData:value];
    }
    return mainAdequateIdent;
}

//: Root.plist
- (NSString *)mFainValue {
    /* static */ NSString *mFainValue = nil;
    if (!mFainValue) {
		NSArray<NSNumber *> *origin = @[@10, @71, @7, @68, @170, @17, @98, @153, @182, @182, @187, @117, @183, @179, @176, @186, @187, @88];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mFainValue = [self StringFromFainData:value];
    }
    return mFainValue;
}

//: rts_socks5_password
- (NSString *)app_aggressiveKey {
    /* static */ NSString *app_aggressiveKey = nil;
    if (!app_aggressiveKey) {
		NSArray<NSNumber *> *origin = @[@19, @12, @5, @21, @151, @126, @128, @127, @107, @127, @123, @111, @119, @127, @65, @107, @124, @109, @127, @127, @131, @123, @126, @112, @177];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_aggressiveKey = [self StringFromFainData:value];
    }
    return app_aggressiveKey;
}

//: server_record_whiteboard_data
- (NSString *)app_overseeText {
    /* static */ NSString *app_overseeText = nil;
    if (!app_overseeText) {
		NSArray<NSNumber *> *origin = @[@29, @32, @13, @103, @85, @195, @227, @68, @199, @35, @40, @99, @91, @147, @133, @146, @150, @133, @146, @127, @146, @133, @131, @143, @146, @132, @127, @151, @136, @137, @148, @133, @130, @143, @129, @146, @132, @127, @132, @129, @148, @129, @32];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_overseeText = [self StringFromFainData:value];
    }
    return app_overseeText;
}

//: server_record_host
- (NSString *)userPregnantMsg {
    /* static */ NSString *userPregnantMsg = nil;
    if (!userPregnantMsg) {
		NSArray<NSNumber *> *origin = @[@18, @76, @13, @211, @130, @196, @178, @214, @28, @165, @225, @254, @237, @191, @177, @190, @194, @177, @190, @171, @190, @177, @175, @187, @190, @176, @171, @180, @187, @191, @192, @153];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userPregnantMsg = [self StringFromFainData:value];
    }
    return userPregnantMsg;
}

//: bundle
- (NSString *)dreamTopicMessage {
    /* static */ NSString *dreamTopicMessage = nil;
    if (!dreamTopicMessage) {
		NSArray<NSNumber *> *origin = @[@6, @18, @8, @110, @5, @185, @248, @136, @116, @135, @128, @118, @126, @119, @128];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamTopicMessage = [self StringFromFainData:value];
    }
    return dreamTopicMessage;
}

//: videochat_start_with_back_camera
- (NSString *)notiExplainDisappointedMsg {
    /* static */ NSString *notiExplainDisappointedMsg = nil;
    if (!notiExplainDisappointedMsg) {
		NSArray<NSNumber *> *origin = @[@32, @33, @8, @88, @26, @249, @121, @158, @151, @138, @133, @134, @144, @132, @137, @130, @149, @128, @148, @149, @130, @147, @149, @128, @152, @138, @149, @137, @128, @131, @130, @132, @140, @128, @132, @130, @142, @134, @147, @130, @76];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiExplainDisappointedMsg = [self StringFromFainData:value];
    }
    return notiExplainDisappointedMsg;
}

//: videochat_auto_rotate_remote_video
- (NSString *)kPinKey {
    /* static */ NSString *kPinKey = nil;
    if (!kPinKey) {
		NSArray<NSNumber *> *origin = @[@34, @10, @8, @110, @136, @197, @220, @102, @128, @115, @110, @111, @121, @109, @114, @107, @126, @105, @107, @127, @126, @121, @105, @124, @121, @126, @107, @126, @111, @105, @124, @111, @119, @121, @126, @111, @105, @128, @115, @110, @111, @121, @15];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kPinKey = [self StringFromFainData:value];
    }
    return kPinKey;
}

//: ipv4_default_link
- (NSString *)main_adeUrl {
    /* static */ NSString *main_adeUrl = nil;
    if (!main_adeUrl) {
		NSArray<NSNumber *> *origin = @[@17, @60, @10, @135, @215, @101, @240, @248, @6, @154, @165, @172, @178, @112, @155, @160, @161, @162, @157, @177, @168, @176, @155, @168, @165, @170, @167, @183];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_adeUrl = [self StringFromFainData:value];
    }
    return main_adeUrl;
}

//: PreferenceSpecifiers
- (NSString *)appTitleId {
    /* static */ NSString *appTitleId = nil;
    if (!appTitleId) {
		NSArray<NSNumber *> *origin = @[@20, @15, @3, @95, @129, @116, @117, @116, @129, @116, @125, @114, @116, @98, @127, @116, @114, @120, @117, @120, @116, @129, @130, @102];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appTitleId = [self StringFromFainData:value];
    }
    return appTitleId;
}

//: ignore_team_types
- (NSString *)dreamCrisisData {
    /* static */ NSString *dreamCrisisData = nil;
    if (!dreamCrisisData) {
		NSArray<NSNumber *> *origin = @[@17, @1, @12, @242, @212, @7, @155, @209, @87, @171, @167, @23, @106, @104, @111, @112, @115, @102, @96, @117, @102, @98, @110, @96, @117, @122, @113, @102, @116, @134];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamCrisisData = [self StringFromFainData:value];
    }
    return dreamCrisisData;
}

//: rts_socks5_username
- (NSString *)appPateSeedName {
    /* static */ NSString *appPateSeedName = nil;
    if (!appPateSeedName) {
		NSArray<NSNumber *> *origin = @[@19, @50, @6, @213, @33, @162, @164, @166, @165, @145, @165, @161, @149, @157, @165, @103, @145, @167, @165, @151, @164, @160, @147, @159, @151, @6];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appPateSeedName = [self StringFromFainData:value];
    }
    return appPateSeedName;
}

//: server_record_video
- (NSString *)mDisappointedName {
    /* static */ NSString *mDisappointedName = nil;
    if (!mDisappointedName) {
		NSArray<NSNumber *> *origin = @[@19, @20, @13, @44, @119, @157, @147, @255, @142, @161, @254, @98, @217, @135, @121, @134, @138, @121, @134, @115, @134, @121, @119, @131, @134, @120, @115, @138, @125, @120, @121, @131, @209];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mDisappointedName = [self StringFromFainData:value];
    }
    return mDisappointedName;
}

//: maximum_log_days
- (NSString *)notiRangeMentorMsg {
    /* static */ NSString *notiRangeMentorMsg = nil;
    if (!notiRangeMentorMsg) {
		NSArray<NSNumber *> *origin = @[@16, @76, @11, @115, @38, @192, @147, @120, @167, @38, @204, @185, @173, @196, @181, @185, @193, @185, @171, @184, @187, @179, @171, @176, @173, @197, @191, @209];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiRangeMentorMsg = [self StringFromFainData:value];
    }
    return notiRangeMentorMsg;
}

//: rts_socks5_type
- (NSString *)showVoiceStr {
    /* static */ NSString *showVoiceStr = nil;
    if (!showVoiceStr) {
		NSArray<NSNumber *> *origin = @[@15, @52, @7, @90, @70, @92, @157, @166, @168, @167, @147, @167, @163, @151, @159, @167, @105, @147, @168, @173, @164, @153, @118];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showVoiceStr = [self StringFromFainData:value];
    }
    return showVoiceStr;
}

//: videochat_audio_denoise
- (NSString *)dream_sizePath {
    /* static */ NSString *dream_sizePath = nil;
    if (!dream_sizePath) {
		NSArray<NSNumber *> *origin = @[@23, @3, @4, @152, @121, @108, @103, @104, @114, @102, @107, @100, @119, @98, @100, @120, @103, @108, @114, @98, @103, @104, @113, @114, @108, @118, @104, @111];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_sizePath = [self StringFromFainData:value];
    }
    return dream_sizePath;
}

//: auto_remove_snap_message
- (NSString *)m_ahUrl {
    /* static */ NSString *m_ahUrl = nil;
    if (!m_ahUrl) {
		NSArray<NSNumber *> *origin = @[@24, @6, @12, @175, @102, @79, @73, @60, @58, @229, @47, @184, @103, @123, @122, @117, @101, @120, @107, @115, @117, @124, @107, @101, @121, @116, @103, @118, @101, @115, @107, @121, @121, @103, @109, @107, @177];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_ahUrl = [self StringFromFainData:value];
    }
    return m_ahUrl;
}

//: auto_remove_alias
- (NSString *)kDecorateMessage {
    /* static */ NSString *kDecorateMessage = nil;
    if (!kDecorateMessage) {
		NSArray<NSNumber *> *origin = @[@17, @64, @5, @160, @122, @161, @181, @180, @175, @159, @178, @165, @173, @175, @182, @165, @159, @161, @172, @169, @161, @179, @228];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kDecorateMessage = [self StringFromFainData:value];
    }
    return kDecorateMessage;
}

//: server_record_audio
- (NSString *)user_constraintContent {
    /* static */ NSString *user_constraintContent = nil;
    if (!user_constraintContent) {
		NSArray<NSNumber *> *origin = @[@19, @89, @5, @41, @137, @204, @190, @203, @207, @190, @203, @184, @203, @190, @188, @200, @203, @189, @184, @186, @206, @189, @194, @200, @116];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_constraintContent = [self StringFromFainData:value];
    }
    return user_constraintContent;
}

//: chatroom_enter_retry_count
- (NSString *)main_titleIdent {
    /* static */ NSString *main_titleIdent = nil;
    if (!main_titleIdent) {
		NSArray<NSNumber *> *origin = @[@26, @84, @13, @36, @11, @226, @130, @181, @247, @97, @57, @108, @52, @183, @188, @181, @200, @198, @195, @195, @193, @179, @185, @194, @200, @185, @198, @179, @198, @185, @200, @198, @205, @179, @183, @195, @201, @194, @200, @219];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_titleIdent = [self StringFromFainData:value];
    }
    return main_titleIdent;
}

//: nim_link_address_type
- (NSString *)m_voiceMessage {
    /* static */ NSString *m_voiceMessage = nil;
    if (!m_voiceMessage) {
		NSArray<NSNumber *> *origin = @[@21, @40, @4, @120, @150, @145, @149, @135, @148, @145, @150, @147, @135, @137, @140, @140, @154, @141, @155, @155, @135, @156, @161, @152, @141, @242];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_voiceMessage = [self StringFromFainData:value];
    }
    return m_voiceMessage;
}

//: use_rts_socks5
- (NSString *)user_ecruInfoIdent {
    /* static */ NSString *user_ecruInfoIdent = nil;
    if (!user_ecruInfoIdent) {
		NSArray<NSNumber *> *origin = @[@14, @18, @13, @152, @206, @53, @246, @210, @225, @167, @137, @59, @204, @135, @133, @119, @113, @132, @134, @133, @113, @133, @129, @117, @125, @133, @71, @206];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_ecruInfoIdent = [self StringFromFainData:value];
    }
    return user_ecruInfoIdent;
}

//: use_socks5
- (NSString *)dream_pepStatueConsciousnessId {
    /* static */ NSString *dream_pepStatueConsciousnessId = nil;
    if (!dream_pepStatueConsciousnessId) {
		NSArray<NSNumber *> *origin = @[@10, @34, @13, @216, @243, @244, @220, @164, @73, @190, @6, @20, @203, @151, @149, @135, @129, @149, @145, @133, @141, @149, @87, @35];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_pepStatueConsciousnessId = [self StringFromFainData:value];
    }
    return dream_pepStatueConsciousnessId;
}

//: auto_fetch_attachment
- (NSString *)noti_attemptCargoNameUrl {
    /* static */ NSString *noti_attemptCargoNameUrl = nil;
    if (!noti_attemptCargoNameUrl) {
		NSArray<NSNumber *> *origin = @[@21, @82, @12, @208, @47, @251, @70, @166, @211, @123, @37, @12, @179, @199, @198, @193, @177, @184, @183, @198, @181, @186, @177, @179, @198, @198, @179, @181, @186, @191, @183, @192, @198, @153];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_attemptCargoNameUrl = [self StringFromFainData:value];
    }
    return noti_attemptCargoNameUrl;
}

//: disable_proxmity_monitor
- (NSString *)show_minPath {
    /* static */ NSString *show_minPath = nil;
    if (!show_minPath) {
		NSArray<NSNumber *> *origin = @[@24, @14, @10, @226, @45, @30, @110, @58, @167, @121, @114, @119, @129, @111, @112, @122, @115, @109, @126, @128, @125, @134, @123, @119, @130, @135, @109, @123, @125, @124, @119, @130, @125, @128, @252];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        show_minPath = [self StringFromFainData:value];
    }
    return show_minPath;
}

//: videochat_local_record_video_kbps
- (NSString *)mainMallSoundPath {
    /* static */ NSString *mainMallSoundPath = nil;
    if (!mainMallSoundPath) {
		NSArray<NSNumber *> *origin = @[@33, @36, @3, @154, @141, @136, @137, @147, @135, @140, @133, @152, @131, @144, @147, @135, @133, @144, @131, @150, @137, @135, @147, @150, @136, @131, @154, @141, @136, @137, @147, @131, @143, @134, @148, @151, @190];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainMallSoundPath = [self StringFromFainData:value];
    }
    return mainMallSoundPath;
}

//: DefaultValue
- (NSString *)mEnemyText {
    /* static */ NSString *mEnemyText = nil;
    if (!mEnemyText) {
		NSArray<NSNumber *> *origin = @[@12, @44, @8, @232, @225, @170, @82, @115, @112, @145, @146, @141, @161, @152, @160, @130, @141, @152, @161, @145, @52];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mEnemyText = [self StringFromFainData:value];
    }
    return mEnemyText;
}

//: create_recent_when_sync_remote_messages
- (NSString *)dreamImageTextKey {
    /* static */ NSString *dreamImageTextKey = nil;
    if (!dreamImageTextKey) {
		NSArray<NSNumber *> *origin = @[@39, @21, @8, @105, @137, @13, @18, @108, @120, @135, @122, @118, @137, @122, @116, @135, @122, @120, @122, @131, @137, @116, @140, @125, @122, @131, @116, @136, @142, @131, @120, @116, @135, @122, @130, @132, @137, @122, @116, @130, @122, @136, @136, @118, @124, @122, @136, @188];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamImageTextKey = [self StringFromFainData:value];
    }
    return dreamImageTextKey;
}

//: exception_upload_log_enabled
- (NSString *)showTrulyStr {
    /* static */ NSString *showTrulyStr = nil;
    if (!showTrulyStr) {
		NSArray<NSNumber *> *origin = @[@28, @92, @6, @50, @85, @243, @193, @212, @191, @193, @204, @208, @197, @203, @202, @187, @209, @204, @200, @203, @189, @192, @187, @200, @203, @195, @187, @193, @202, @189, @190, @200, @193, @192, @232];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showTrulyStr = [self StringFromFainData:value];
    }
    return showTrulyStr;
}

//: enable_apns_prefix
- (NSString *)m_toTitle {
    /* static */ NSString *m_toTitle = nil;
    if (!m_toTitle) {
		NSArray<NSNumber *> *origin = @[@18, @16, @7, @220, @193, @29, @251, @117, @126, @113, @114, @124, @117, @111, @113, @128, @126, @131, @111, @128, @130, @117, @118, @121, @136, @76];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_toTitle = [self StringFromFainData:value];
    }
    return m_toTitle;
}

//: videochat_remote_video_content_mode
- (NSString *)k_haoFormat {
    /* static */ NSString *k_haoFormat = nil;
    if (!k_haoFormat) {
		NSArray<NSNumber *> *origin = @[@35, @90, @12, @221, @93, @229, @156, @13, @40, @201, @122, @82, @208, @195, @190, @191, @201, @189, @194, @187, @206, @185, @204, @191, @199, @201, @206, @191, @185, @208, @195, @190, @191, @201, @185, @189, @201, @200, @206, @191, @200, @206, @185, @199, @201, @190, @191, @85];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_haoFormat = [self StringFromFainData:value];
    }
    return k_haoFormat;
}

//: file_download_token_enabled
- (NSString *)user_formationPath {
    /* static */ NSString *user_formationPath = nil;
    if (!user_formationPath) {
		NSArray<NSNumber *> *origin = @[@27, @56, @5, @78, @236, @158, @161, @164, @157, @151, @156, @167, @175, @166, @164, @167, @153, @156, @151, @172, @167, @163, @157, @166, @151, @157, @166, @153, @154, @164, @157, @156, @169];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_formationPath = [self StringFromFainData:value];
    }
    return user_formationPath;
}

//: videochat_voice_detect
- (NSString *)m_oofStr {
    /* static */ NSString *m_oofStr = nil;
    if (!m_oofStr) {
		NSArray<NSNumber *> *origin = @[@22, @1, @13, @60, @202, @190, @125, @113, @18, @10, @231, @38, @207, @119, @106, @101, @102, @112, @100, @105, @98, @117, @96, @119, @112, @106, @100, @102, @96, @101, @102, @117, @102, @100, @117, @70];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_oofStr = [self StringFromFainData:value];
    }
    return m_oofStr;
}

//: auto_remove_remote_session
- (NSString *)main_nearlyMakeName {
    /* static */ NSString *main_nearlyMakeName = nil;
    if (!main_nearlyMakeName) {
		NSArray<NSNumber *> *origin = @[@26, @54, @8, @59, @9, @12, @155, @11, @151, @171, @170, @165, @149, @168, @155, @163, @165, @172, @155, @149, @168, @155, @163, @165, @170, @155, @149, @169, @155, @169, @169, @159, @165, @164, @219];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_nearlyMakeName = [self StringFromFainData:value];
    }
    return main_nearlyMakeName;
}

//: tester_recent_session_most_enable
- (NSString *)noti_situationMessage {
    /* static */ NSString *noti_situationMessage = nil;
    if (!noti_situationMessage) {
		NSArray<NSNumber *> *origin = @[@33, @40, @8, @114, @80, @53, @213, @8, @156, @141, @155, @156, @141, @154, @135, @154, @141, @139, @141, @150, @156, @135, @155, @141, @155, @155, @145, @151, @150, @135, @149, @151, @155, @156, @135, @141, @150, @137, @138, @148, @141, @2];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_situationMessage = [self StringFromFainData:value];
    }
    return noti_situationMessage;
}

//: ignore_message_type
- (NSString *)notiInmateFainTitle {
    /* static */ NSString *notiInmateFainTitle = nil;
    if (!notiInmateFainTitle) {
		NSArray<NSNumber *> *origin = @[@19, @42, @9, @83, @249, @156, @242, @182, @240, @147, @145, @152, @153, @156, @143, @137, @151, @143, @157, @157, @139, @145, @143, @137, @158, @163, @154, @143, @133];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiInmateFainTitle = [self StringFromFainData:value];
    }
    return notiInmateFainTitle;
}

//: enable_sync_stick_top_session
- (NSString *)userRedFormat {
    /* static */ NSString *userRedFormat = nil;
    if (!userRedFormat) {
		NSArray<NSNumber *> *origin = @[@29, @59, @7, @67, @227, @178, @219, @160, @169, @156, @157, @167, @160, @154, @174, @180, @169, @158, @154, @174, @175, @164, @158, @166, @154, @175, @170, @171, @154, @174, @160, @174, @174, @164, @170, @169, @163];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userRedFormat = [self StringFromFainData:value];
    }
    return userRedFormat;
}

//: videochat_video_encode_max_kbps
- (NSString *)showEraseKey {
    /* static */ NSString *showEraseKey = nil;
    if (!showEraseKey) {
		NSArray<NSNumber *> *origin = @[@31, @30, @11, @175, @241, @209, @137, @204, @127, @213, @203, @148, @135, @130, @131, @141, @129, @134, @127, @146, @125, @148, @135, @130, @131, @141, @125, @131, @140, @129, @141, @130, @131, @125, @139, @127, @150, @125, @137, @128, @142, @145, @96];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showEraseKey = [self StringFromFainData:value];
    }
    return showEraseKey;
}

//: add_friend_need_verify
- (NSString *)mainPotatoKey {
    /* static */ NSString *mainPotatoKey = nil;
    if (!mainPotatoKey) {
		NSArray<NSNumber *> *origin = @[@22, @83, @13, @5, @214, @137, @44, @17, @34, @150, @27, @149, @187, @180, @183, @183, @178, @185, @197, @188, @184, @193, @183, @178, @193, @184, @184, @183, @178, @201, @184, @197, @188, @185, @204, @161];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainPotatoKey = [self StringFromFainData:value];
    }
    return mainPotatoKey;
}

//: enable_team_apns_force
- (NSString *)user_recommendMessage {
    /* static */ NSString *user_recommendMessage = nil;
    if (!user_recommendMessage) {
		NSArray<NSNumber *> *origin = @[@22, @16, @7, @215, @119, @245, @29, @117, @126, @113, @114, @124, @117, @111, @132, @117, @113, @125, @111, @113, @128, @126, @131, @111, @118, @127, @130, @115, @117, @169];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_recommendMessage = [self StringFromFainData:value];
    }
    return user_recommendMessage;
}

//: rts_socks5_addr
- (NSString *)main_numberPath {
    /* static */ NSString *main_numberPath = nil;
    if (!main_numberPath) {
		NSArray<NSNumber *> *origin = @[@15, @64, @12, @32, @35, @92, @202, @232, @41, @212, @186, @18, @178, @180, @179, @159, @179, @175, @163, @171, @179, @117, @159, @161, @164, @164, @178, @223];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_numberPath = [self StringFromFainData:value];
    }
    return main_numberPath;
}

//: enable_revoke_count
- (NSString *)m_tightenKey {
    /* static */ NSString *m_tightenKey = nil;
    if (!m_tightenKey) {
		NSArray<NSNumber *> *origin = @[@19, @64, @6, @208, @243, @255, @165, @174, @161, @162, @172, @165, @159, @178, @165, @182, @175, @171, @165, @159, @163, @175, @181, @174, @180, @132];
		NSData *data = [FainData FainDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_tightenKey = [self StringFromFainData:value];
    }
    return m_tightenKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  EnvironmentSetting.m
//  NIM
//
//  Created by chris on 15/7/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"

//: @implementation NTESBundleSetting
@implementation EnvironmentSetting

//: + (instancetype)sharedConfig
+ (instancetype)configLocation
{
    //: static NTESBundleSetting *instance = nil;
    static EnvironmentSetting *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[NTESBundleSetting alloc] init];
        instance = [[EnvironmentSetting alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}


//: - (instancetype)init
- (instancetype)init
{
    //: if(self = [super init]) {
    if(self = [super init]) {
        //: [self checkSocks5DefaultSetting];
        [self removeRange];
        //: NSDictionary *dict = @{
        NSDictionary *dict = @{
                               //: @"exception_upload_log_enabled" : @(NO),
                               [[FainData sharedInstance] showTrulyStr] : @(NO),
                               //: @"custom_apns_content_type" : @"custom"
                               [[FainData sharedInstance] notiDoorwayStr] : [[FainData sharedInstance] mainDeserveUrl]
                               //: };
                               };
        //: [[NSUserDefaults standardUserDefaults] registerDefaults:dict];
        [[NSUserDefaults standardUserDefaults] registerDefaults:dict];
    }
    //: return self;
    return self;
}

//: - (void)checkSocks5DefaultSetting {
- (void)removeRange {
    //: NSString *settingBundlePath = [[NSBundle mainBundle] pathForResource:@"Settings" ofType:@"bundle"];
    NSString *settingBundlePath = [[NSBundle mainBundle] pathForResource:[[FainData sharedInstance] dreamInputUrl] ofType:[[FainData sharedInstance] dreamTopicMessage]];
    //: NSString *plistPath = [settingBundlePath stringByAppendingPathComponent:@"Root.plist"];
    NSString *plistPath = [settingBundlePath stringByAppendingPathComponent:[[FainData sharedInstance] mFainValue]];
    //: NSDictionary *plistDict = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    NSDictionary *plistDict = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    //: NSArray *preferences = [plistDict valueForKey:@"PreferenceSpecifiers"];
    NSArray *preferences = [plistDict valueForKey:[[FainData sharedInstance] appTitleId]];
    //: NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

    //: for(NSDictionary *setting in preferences) {
    for(NSDictionary *setting in preferences) {
        // 如果NSUserDefaults里有，则优先使用UserDefaults里的
        //: NSString *key = [setting valueForKey:@"Key"];
        NSString *key = [setting valueForKey:[[FainData sharedInstance] dream_greenName]];

        //: if (key && key.length>0 && [key containsString:@"socks5"]) {
        if (key && key.length>0 && [key containsString:[[FainData sharedInstance] showTopicKey]]) {
            // 从Plist中获取值填充
            //: id value = [setting valueForKey:@"DefaultValue"];
            id value = [setting valueForKey:[[FainData sharedInstance] mEnemyText]];
            //: if(value) {
            if(value) {
                //: [userDefaults setObject:value forKey:key];
                [userDefaults setObject:value forKey:key];
            }
        }
    }
}

//: - (BOOL)removeSessionWhenDeleteMessages{
- (BOOL)value{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"enabled_remove_recent_session"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] main_inputStr]] boolValue];
}

//: - (BOOL)dropTableWhenDeleteMessages
- (BOOL)shared
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"enabled_drop_msg_table"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] userBeamValue]] boolValue];

}

//: - (BOOL)localSearchOrderByTimeDesc{
- (BOOL)publicTransportAndSize{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"local_search_time_order_desc"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] m_formationMessage]] boolValue];
}


//: - (BOOL)autoRemoveRemoteSession
- (BOOL)blunt
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"auto_remove_remote_session"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] main_nearlyMakeName]] boolValue];
}

//: - (BOOL)autoRemoveAlias
- (BOOL)coupeContentCrimson
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"auto_remove_alias"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] kDecorateMessage]] boolValue];
}

//: - (BOOL)autoRemoveSnapMessage
- (BOOL)totalRelation
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"auto_remove_snap_message"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] m_ahUrl]] boolValue];
}

//: - (BOOL)needVerifyForFriend
- (BOOL)tingBubble
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"add_friend_need_verify"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] mainPotatoKey]] boolValue];
}

//: - (BOOL)showFps{
- (BOOL)compartment{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"show_fps_for_app"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] show_makeValueKey]] boolValue];
}

//: - (BOOL)disableProximityMonitor
- (BOOL)incapacitateGreen
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"disable_proxmity_monitor"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] show_minPath]] boolValue];
}

//: - (BOOL)animatedImageThumbnailEnabled
- (BOOL)to
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"animated_image_thumbnail_enabled"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] appDisappointedText]] boolValue];
}

//: - (BOOL)enableRotate
- (BOOL)allOrNone
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"enable_rotate"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] mainToElectronStr]] boolValue];
}

//: - (BOOL)usingAmr
- (BOOL)bar
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"using_amr"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] showStrikeMsg]] boolValue];
}

//: - (BOOL)fileQuickTransferEnabled
- (BOOL)actionOpenEnabled
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_file_quick_transfer"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] appForbidFormat]];
    //: if(value) {
    if(value) {
        //: return [value boolValue];
        return [value boolValue];
    //: }else {
    }else {
        //: return YES;
        return YES;
    }
}

//: - (BOOL)enableAPNsPrefix
- (BOOL)user
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_apns_prefix"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] m_toTitle]];
    //: if(value) {
    if(value) {
        //: return [value boolValue];
        return [value boolValue];
    //: }else {
    }else {
        //: return YES;
        return YES;
    }
}

//: - (BOOL)enableTeamAPNsForce
- (BOOL)lengthBy
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_team_apns_force"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] user_recommendMessage]];
    //: if (value) {
    if (value) {
        //: return [value boolValue];
        return [value boolValue];
    }
    //: else
    else
    {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)enableAudioSessionReset
- (BOOL)range
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"disable_audio_session_reset"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] mainInfoPath]];
    //: if (value) {
    if (value) {
        //: return [value boolValue];
        return [value boolValue];
    }
    //: else
    else
    {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)exceptionLogUploadEnabled
- (BOOL)withOpend
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"exception_upload_log_enabled"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] showTrulyStr]];
    //: if (value) {
    if (value) {
        //: return [value boolValue];
        return [value boolValue];
    }
    //: else
    else
    {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)enableLocalAnti
- (BOOL)hiddenAnti
{
    //: return YES;
    return YES;
}

//: - (BOOL)enableSdkRemoteRender
- (BOOL)barRender
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_sdk_video_render"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] mainDisappointedValue]];
    //: if (value)
    if (value)
    {
        //: return [value boolValue];
        return [value boolValue];
    }
    //: else
    else
    {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)enableSyncWhenFetchRemoteMessages
- (BOOL)descriptionMedia
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"sync_when_remote_fetch_messages"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] user_contemplateData]] boolValue];
}

//: - (BOOL)enableCreateRecentSessionsWhenSyncRemoteMessages
- (BOOL)back
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"create_recent_when_sync_remote_messages"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] dreamImageTextKey]] boolValue];
}

//: - (BOOL)countTeamNotification
- (BOOL)appear
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"count_team_notification"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] userExplainValue]] boolValue];
}


//: - (NSArray *)ignoreTeamNotificationTypes
- (NSArray *)midRecording
{
    //: static NSArray *types = nil;
    static NSArray *types = nil;
    //: if (types == nil)
    if (types == nil)
    {
        //: NSString *value = [[NSUserDefaults standardUserDefaults] objectForKey:@"ignore_team_types"];
        NSString *value = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] dreamCrisisData]];
        //: if ([value isKindOfClass:[NSString class]])
        if ([value isKindOfClass:[NSString class]])
        {
            //: NSString *typeDescription = [value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSString *typeDescription = [value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            //: if ([typeDescription length])
            if ([typeDescription length])
            {
                //: types = [typeDescription componentsSeparatedByString:@","];
                types = [typeDescription componentsSeparatedByString:@","];
            }
        }
    }
    //: if (types == nil)
    if (types == nil)
    {
        //: types = [NSArray array];
        types = [NSArray array];
    }
    //: return types;
    return types;
}


//: - (BOOL)serverRecordAudio
- (BOOL)language
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_audio"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] user_constraintContent]] boolValue];
}

//: - (BOOL)serverRecordVideo
- (BOOL)endue
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_video"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] mDisappointedName]] boolValue];
}

//: - (BOOL)serverRecordHost
- (BOOL)recent
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_host"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] userPregnantMsg]] boolValue];
}

//: - (int)serverRecordMode
- (int)mode
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_mode"] intValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] dream_situationMessage]] intValue];
}

//: - (BOOL)useSocks
- (BOOL)alongArrayWith
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"use_socks5"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] dream_pepStatueConsciousnessId]] boolValue];
}

//: - (NSString *)customAPNsType
- (NSString *)tingTool
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"custom_apns_content_type"];
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] notiDoorwayStr]];
}

//: - (NSString *)socks5Addr
- (NSString *)endFile
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"socks5_addr"]? : @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] noti_imageId]]? : @"";
}

//: - (NSUInteger)socks5Type
- (NSUInteger)myPath
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"socks5_type"] intValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] kFormationText]] intValue];
}

//: - (NSString *)socksUsername
- (NSString *)ofValueColor
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"socks5_username"]? : @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] mToolIdent]]? : @"";
}

//: - (NSString *)socksPassword
- (NSString *)success
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"socks5_password"] ?: @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] dream_tightenProjectMessage]] ?: @"";
}

//: - (BOOL)useRTSSocks
- (BOOL)useLanguage
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"use_rts_socks5"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] user_ecruInfoIdent]] boolValue];
}

//: - (NSString *)socks5RTSAddr
- (NSString *)belowSession
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"rts_socks5_addr"]? : @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] main_numberPath]]? : @"";
}

//: - (NSUInteger )socks5RTSType
- (NSUInteger )userView
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"rts_socks5_type"] intValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] showVoiceStr]] intValue];
}

//: - (NSString *)socksRTSUsername
- (NSString *)toImage
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"rts_socks5_username"]? : @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] appPateSeedName]]? : @"";
}

//: - (NSString *)socksRTSPassword
- (NSString *)dogTag
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"rts_socks5_password"] ?: @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] app_aggressiveKey]] ?: @"";
}



//: - (BOOL)serverRecordWhiteboardData
- (BOOL)show
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_whiteboard_data"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] app_overseeText]] boolValue];
}


//: - (NSInteger)maximumLogDays
- (NSInteger)key
{
    //: id object = [[NSUserDefaults standardUserDefaults] objectForKey:@"maximum_log_days"];
    id object = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] notiRangeMentorMsg]];
    //: NSInteger days = object? [object integerValue]: 7;
    NSInteger days = object? [object integerValue]: 7;
    //: return days;
    return days;
}

//: - (BOOL)videochatAutoRotateRemoteVideo
- (BOOL)rank
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_auto_rotate_remote_video"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] kPinKey]] boolValue];
}

//: - (UIViewContentMode)videochatRemoteVideoContentMode
- (UIViewContentMode)tempMode
{
    //: NSInteger setting = [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_remote_video_content_mode"] integerValue];
    NSInteger setting = [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] k_haoFormat]] integerValue];
    //: return (setting == 0) ? UIViewContentModeScaleAspectFill : UIViewContentModeScaleAspectFit;
    return (setting == 0) ? UIViewContentModeScaleAspectFill : UIViewContentModeScaleAspectFit;
}

//: - (BOOL)startWithBackCamera
- (BOOL)atTo
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_start_with_back_camera"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] notiExplainDisappointedMsg]] boolValue];
}

//: - (NSUInteger)videoMaxEncodeKbps
- (NSUInteger)doingKbps
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_video_encode_max_kbps"] integerValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] showEraseKey]] integerValue];
}

//: - (NSUInteger)localRecordVideoKbps
- (NSUInteger)dismissRead
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_local_record_video_kbps"] integerValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] mainMallSoundPath]] integerValue];
}

//: - (NSUInteger)localRecordVideoQuality
- (NSUInteger)hideEnable
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@""] unsignedIntegerValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:@""] unsignedIntegerValue];
}

//: - (BOOL)autoDeactivateAudioSession
- (BOOL)add
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_auto_disable_audiosession"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] userNameText]];

    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    }
    //: else {
    else {
        //: return YES;
        return YES;
    }
}

//: - (BOOL)audioDenoise
- (BOOL)saneDenoise
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_audio_denoise"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] dream_sizePath]];

    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    }
    //: else {
    else {
        //: return YES;
        return YES;
    }

}

//: - (BOOL)voiceDetect
- (BOOL)direction
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_voice_detect"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] m_oofStr]];

    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    }
    //: else {
    else {
        //: return YES;
        return YES;
    }

}

//: - (BOOL)preferHDAudio
- (BOOL)byAudio
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_prefer_hd_audio"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] notiVoiceFormat]];

    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    }
    //: else {
    else {
        //: return NO;
        return NO;
    }
}

//: - (NSInteger)chatroomRetryCount
- (NSInteger)tinkle
{
    //: id count = [[NSUserDefaults standardUserDefaults] objectForKey:@"chatroom_enter_retry_count"];
    id count = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] main_titleIdent]];
    //: return count == nil ? 3 : [count integerValue];
    return count == nil ? 3 : [count integerValue];
}

//: - (BOOL)fileDownloadTokenEnabled {
- (BOOL)before {
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"file_download_token_enabled"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] user_formationPath]];
    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    //: } else {
    } else {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)autoFetchAttachment
- (BOOL)componentPart
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"auto_fetch_attachment"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] noti_attemptCargoNameUrl]];
    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    //: } else {
    } else {
        //: return NO;
        return NO;
    }
}

//: - (NIMAsymEncryptionType)AsymEncryptionType {
- (NIMAsymEncryptionType)tap {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_asym_crypto_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] appOilMsg]];
    //: return (ret == nil ? 1 : [ret integerValue]);
    return (ret == nil ? 1 : [ret integerValue]);
}

//: - (NIMRSAPaddingMode)rsaPaddingMode
- (NIMRSAPaddingMode)container
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_rsa_padding_mode"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] dream_mentorValue]];
    //: return [ret integerValue];
    return [ret integerValue];
}

//: - (NIMSymEncryptionType)SymEncryptionType {
- (NIMSymEncryptionType)ting {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_sym_crypto_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] mainAdequateIdent]];
    //: return (ret == nil ? 1 : [ret integerValue]);
    return (ret == nil ? 1 : [ret integerValue]);
}

//: - (NIMLinkAddressType)LbsLinkAddressType {
- (NIMLinkAddressType)grindCan {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_link_address_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] m_voiceMessage]];
    //: return [ret integerValue];
    return [ret integerValue];
}

//: - (NSString *)ipv4DefaultLink {
- (NSString *)custom {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"ipv4_default_link"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] main_adeUrl]];
    //: return ret;
    return ret;
}

//: - (NSString *)ipv6DefaultLink {
- (NSString *)showLink {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"ipv6_default_link"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] m_doorwayMsg]];
    //: return ret;
    return ret;
}

//: - (BOOL)asyncLoadRecentSessionEnabled {
- (BOOL)offd {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"tester_recent_session_most_enable"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] noti_situationMessage]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (NSInteger)ignoreMessageType {
- (NSInteger)modelMessage {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"ignore_message_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] notiInmateFainTitle]];
    //: if (ret) {
    if (ret) {
        //: return [ret integerValue];
        return [ret integerValue];

    //: } else {
    } else {
        //: return -1;
        return -1;
    }
}

//: - (BOOL)isDeleteMsgFromServer
- (BOOL)fromServerDelete
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"menu_delete_msg_from_server"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] kPotatoIdent]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (BOOL)isDeleteMsgFromDB
- (BOOL)mottle
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"menu_delete_msg_from_db"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] dreamRegardingMsg]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (BOOL)isIgnoreRevokeMessageCount
- (BOOL)basket
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_revoke_count"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] m_tightenKey]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (BOOL)enablePullSubMessagesFromServer
- (BOOL)replacement
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_thread_cloud_pull"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] main_greenMessage]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (BOOL)enableSyncStickTopSessionInfos
- (BOOL)sourceInfos
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_sync_stick_top_session"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] userRedFormat]];
    //: return ret ? [ret boolValue] : YES;
    return ret ? [ret boolValue] : YES;
}

//: - (NSInteger)customClientType {
- (NSInteger)toWith {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"custom_client_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] appWithData]];
    //: return ret ? [ret integerValue] : 0;
    return ret ? [ret integerValue] : 0;
}

//: - (BOOL)enableRevokeMsgPostscript {
- (BOOL)unsullied {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_revoke_msg_ps"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] mainVoiceKey]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (NSString *)messageEnv {
- (NSString *)cur {
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_msg_env"];
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] userRedData]];
}

//: - (BOOL)disableTraceroute
- (BOOL)find
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_disable_traceroute"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[FainData sharedInstance] showContemplateUrl]];
    //: return ret ? [ret boolValue] : NO;
    return ret ? [ret boolValue] : NO;
}

//: - (NSString *)description
- (NSString *)description
{
    //: return [NSString stringWithFormat:
    return [NSString stringWithFormat:
                //: @"\n\n\n" "enabled_remove_recent_session %d\n" "local_search_time_order_desc %d\n" "auto_remove_remote_session %d\n" "auto_remove_alias %d\n" "auto_remove_snap_message %d\n" "add_friend_need_verify %d\n" "show app %d\n" "maximum log days %zd\n" "using amr %d\n" "ignore_team_types %@ \n" "server_record_audio %d\n" "server_record_video %d\n" "server_record_whiteboard_data %d\n" "videochat_auto_rotate_remote_video %d \n" "videochat_start_with_back_camera %zd\n" "videochat_video_encode_max_kbps %zd\n" "videochat_local_record_video_kbps %zd\n" "videochat_local_record_video_quality %zd\n" "videochat_auto_disable_audiosession %zd\n" "videochat_audio_denoise %zd\n" "videochat_voice_detect %zd\n" "videochat_prefer_hd_audio %zd\n" "chatroom_retry_count %zd\n" "sync_when_remote_fetch_messages %zd\n" "enable_revoke_count %zd\n" "\n\n\n",
                @"\n\n\n" "enabled_remove_recent_session %d\n" "local_search_time_order_desc %d\n" "auto_remove_remote_session %d\n" "auto_remove_alias %d\n" "auto_remove_snap_message %d\n" "add_friend_need_verify %d\n" "show app %d\n" "maximum log days %zd\n" "using amr %d\n" "ignore_team_types %@ \n" "server_record_audio %d\n" "server_record_video %d\n" "server_record_whiteboard_data %d\n" "videochat_auto_rotate_remote_video %d \n" "videochat_start_with_back_camera %zd\n" "videochat_video_encode_max_kbps %zd\n" "videochat_local_record_video_kbps %zd\n" "videochat_local_record_video_quality %zd\n" "videochat_auto_disable_audiosession %zd\n" "videochat_audio_denoise %zd\n" "videochat_voice_detect %zd\n" "videochat_prefer_hd_audio %zd\n" "chatroom_retry_count %zd\n" "sync_when_remote_fetch_messages %zd\n" "enable_revoke_count %zd\n" "\n\n\n",
                //: [self removeSessionWhenDeleteMessages],
                [self value],
                //: [self localSearchOrderByTimeDesc],
                [self publicTransportAndSize],
                //: [self autoRemoveRemoteSession],
                [self blunt],
                //: [self autoRemoveAlias],
                [self coupeContentCrimson],
                //: [self autoRemoveSnapMessage],
                [self totalRelation],
                //: [self needVerifyForFriend],
                [self tingBubble],
                //: [self showFps],
                [self compartment],
                //: [self maximumLogDays],
                [self key],
                //: [self usingAmr],
                [self bar],
                //: [self ignoreTeamNotificationTypes],
                [self midRecording],
                //: [self serverRecordAudio],
                [self language],
                //: [self serverRecordVideo],
                [self endue],
                //: [self serverRecordWhiteboardData],
                [self show],
                //: [self videochatAutoRotateRemoteVideo],
                [self rank],
                //: (NSInteger)[self startWithBackCamera],
                (NSInteger)[self atTo],
                //: [self videoMaxEncodeKbps],
                [self doingKbps],
                //: [self localRecordVideoKbps],
                [self dismissRead],
                //: [self localRecordVideoQuality],
                [self hideEnable],
                //: (NSInteger)[self autoDeactivateAudioSession],
                (NSInteger)[self add],
                //: (NSInteger)[self audioDenoise],
                (NSInteger)[self saneDenoise],
                //: (NSInteger)[self voiceDetect],
                (NSInteger)[self direction],
                //: (NSInteger)[self preferHDAudio],
                (NSInteger)[self byAudio],
                //: [self chatroomRetryCount],
                [self tinkle],
                //: (NSInteger)[self enableSyncWhenFetchRemoteMessages],
                (NSInteger)[self descriptionMedia],
                //: (NSInteger)[self isIgnoreRevokeMessageCount]
                (NSInteger)[self basket]
            //: ];
            ];
}

//: @end
@end