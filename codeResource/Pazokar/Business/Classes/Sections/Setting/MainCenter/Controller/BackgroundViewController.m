
#import <Foundation/Foundation.h>

typedef struct {
    Byte endow;
    Byte *imageTitle;
    unsigned int removeName;
	int imageViewTool;
	int districtManagerRed;
	int statuteNameGreen;
} StructAfterData;

@interface AfterData : NSObject

@end

@implementation AfterData

+ (NSData *)AfterDataToData:(NSString *)value {
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

+ (Byte *)AfterDataToByte:(StructAfterData *)data {
    for (int i = 0; i < data->removeName; i++) {
        data->imageTitle[i] ^= data->endow;
    }
    data->imageTitle[data->removeName] = 0;
	if (data->removeName >= 3) {
		data->imageViewTool = data->imageTitle[0];
		data->districtManagerRed = data->imageTitle[1];
		data->statuteNameGreen = data->imageTitle[2];
	}
    return data->imageTitle;
}

+ (NSString *)StringFromAfterData:(StructAfterData *)data {
    return [NSString stringWithUTF8String:(char *)[self AfterDataToByte:data]];
}

//: receiver_model
+ (NSString *)m_toolData {
    /* static */ NSString *m_toolData = nil;
    if (!m_toolData) {
		NSString *origin = @"504741474B5447507D4F4D46474E06";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){34, (Byte *)data.bytes, 14, 255, 147, 73};
        m_toolData = [self StringFromAfterData:&value];
    }
    return m_toolData;
}

//: Latvia
+ (NSString *)show_rangeCellUrl {
    /* static */ NSString *show_rangeCellUrl = nil;
    if (!show_rangeCellUrl) {
		NSString *origin = @"406D787A656D30";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){12, (Byte *)data.bytes, 6, 12, 115, 97};
        show_rangeCellUrl = [self StringFromAfterData:&value];
    }
    return show_rangeCellUrl;
}

//: Bulgaria
+ (NSString *)noti_objectValue {
    /* static */ NSString *noti_objectValue = nil;
    if (!noti_objectValue) {
		NSString *origin = @"B5829B9096859E9684";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){247, (Byte *)data.bytes, 8, 61, 237, 239};
        noti_objectValue = [self StringFromAfterData:&value];
    }
    return noti_objectValue;
}

//: activity_comment_setting_ys
+ (NSString *)show_afterId {
    /* static */ NSString *show_afterId = nil;
    if (!show_afterId) {
		NSString *origin = @"696B7C617E617C71576B6765656D667C577B6D7C7C61666F57717B1C";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){8, (Byte *)data.bytes, 27, 12, 15, 204};
        show_afterId = [self StringFromAfterData:&value];
    }
    return show_afterId;
}

//: system_change_language_title
+ (NSString *)dream_voiceMessage {
    /* static */ NSString *dream_voiceMessage = nil;
    if (!dream_voiceMessage) {
		NSString *origin = @"464C464150586A565D545B52506A59545B52405452506A415C415950B8";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){53, (Byte *)data.bytes, 28, 96, 238, 144};
        dream_voiceMessage = [self StringFromAfterData:&value];
    }
    return dream_voiceMessage;
}

//: #ffffff
+ (NSString *)show_titleMsg {
    /* static */ NSString *show_titleMsg = nil;
    if (!show_titleMsg) {
		NSString *origin = @"B1F4F4F4F4F4F441";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){146, (Byte *)data.bytes, 7, 149, 19, 176};
        show_titleMsg = [self StringFromAfterData:&value];
    }
    return show_titleMsg;
}

//: user_ic_2
+ (NSString *)user_showName {
    /* static */ NSString *user_showName = nil;
    if (!user_showName) {
		NSString *origin = @"5D5B4D5A77414B771A81";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){40, (Byte *)data.bytes, 9, 10, 44, 105};
        user_showName = [self StringFromAfterData:&value];
    }
    return user_showName;
}

//: Czech Republic
+ (NSString *)noti_viewData {
    /* static */ NSString *noti_viewData = nil;
    if (!noti_viewData) {
		NSString *origin = @"A9908F8982CAB88F9A9F8886838982";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){234, (Byte *)data.bytes, 14, 184, 118, 112};
        noti_viewData = [self StringFromAfterData:&value];
    }
    return noti_viewData;
}

//: Kiswahili
+ (NSString *)dream_viewData {
    /* static */ NSString *dream_viewData = nil;
    if (!dream_viewData) {
		NSString *origin = @"94B6ACA8BEB7B6B3B6F0";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){223, (Byte *)data.bytes, 9, 173, 24, 120};
        dream_viewData = [self StringFromAfterData:&value];
    }
    return dream_viewData;
}

//: fragment_my_version
+ (NSString *)k_messageName {
    /* static */ NSString *k_messageName = nil;
    if (!k_messageName) {
		NSString *origin = @"B9ADBEB8B2BAB1AB80B2A680A9BAADACB6B0B1E1";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){223, (Byte *)data.bytes, 19, 218, 238, 45};
        k_messageName = [self StringFromAfterData:&value];
    }
    return k_messageName;
}

//: CFBundleShortVersionString
+ (NSString *)notiAfterTitle {
    /* static */ NSString *notiAfterTitle = nil;
    if (!notiAfterTitle) {
		NSString *origin = @"C6C3C7F0EBE1E9E0D6EDEAF7F1D3E0F7F6ECEAEBD6F1F7ECEBE253";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){133, (Byte *)data.bytes, 26, 121, 62, 244};
        notiAfterTitle = [self StringFromAfterData:&value];
    }
    return notiAfterTitle;
}

//: Em alemão
+ (NSString *)app_memberStr {
    /* static */ NSString *app_memberStr = nil;
    if (!app_memberStr) {
		NSString *origin = @"7D551859545D55FB9B57C6";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){56, (Byte *)data.bytes, 10, 251, 86, 83};
        app_memberStr = [self StringFromAfterData:&value];
    }
    return app_memberStr;
}

//: contact_tag_fragment_sure
+ (NSString *)dream_nameFormat {
    /* static */ NSString *dream_nameFormat = nil;
    if (!dream_nameFormat) {
		NSString *origin = @"8884859F8A889FB49F8A8CB48D998A8C868E859FB4989E998EEF";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){235, (Byte *)data.bytes, 25, 158, 34, 221};
        dream_nameFormat = [self StringFromAfterData:&value];
    }
    return dream_nameFormat;
}

//: Portugal
+ (NSString *)userNameTitle {
    /* static */ NSString *userNameTitle = nil;
    if (!userNameTitle) {
		NSString *origin = @"2B14090F0E1C1A174E";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){123, (Byte *)data.bytes, 8, 45, 236, 68};
        userNameTitle = [self StringFromAfterData:&value];
    }
    return userNameTitle;
}

//: #F7D2F3
+ (NSString *)k_greenIdent {
    /* static */ NSString *k_greenIdent = nil;
    if (!k_greenIdent) {
		NSString *origin = @"20453447314530C3";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){3, (Byte *)data.bytes, 7, 44, 61, 151};
        k_greenIdent = [self StringFromAfterData:&value];
    }
    return k_greenIdent;
}

//: Greece
+ (NSString *)k_modeMsg {
    /* static */ NSString *k_modeMsg = nil;
    if (!k_modeMsg) {
		NSString *origin = @"07322525232506";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){64, (Byte *)data.bytes, 6, 55, 240, 100};
        k_modeMsg = [self StringFromAfterData:&value];
    }
    return k_modeMsg;
}

//: safe_setting_activity_title
+ (NSString *)mNameId {
    /* static */ NSString *mNameId = nil;
    if (!mNameId) {
		NSString *origin = @"F9EBECEFD5F9EFFEFEE3E4EDD5EBE9FEE3FCE3FEF3D5FEE3FEE6EF8D";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){138, (Byte *)data.bytes, 27, 34, 239, 246};
        mNameId = [self StringFromAfterData:&value];
    }
    return mNameId;
}

//: edit_profile
+ (NSString *)k_mName {
    /* static */ NSString *k_mName = nil;
    if (!k_mName) {
		NSString *origin = @"A3A2AFB299B6B4A9A0AFAAA3BE";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){198, (Byte *)data.bytes, 12, 63, 108, 54};
        k_mName = [self StringFromAfterData:&value];
    }
    return k_mName;
}

//: Luxembourg
+ (NSString *)noti_modeShowValue {
    /* static */ NSString *noti_modeShowValue = nil;
    if (!noti_modeShowValue) {
		NSString *origin = @"3F060B161E111C060114C7";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){115, (Byte *)data.bytes, 10, 47, 175, 82};
        noti_modeShowValue = [self StringFromAfterData:&value];
    }
    return noti_modeShowValue;
}

//: Español
+ (NSString *)main_shouldObjectOpenName {
    /* static */ NSString *main_shouldObjectOpenName = nil;
    if (!main_shouldObjectOpenName) {
		NSString *origin = @"1E282B3A98EA34377B";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){91, (Byte *)data.bytes, 8, 97, 44, 117};
        main_shouldObjectOpenName = [self StringFromAfterData:&value];
    }
    return main_shouldObjectOpenName;
}

//: Poland
+ (NSString *)dreamLetterData {
    /* static */ NSString *dreamLetterData = nil;
    if (!dreamLetterData) {
		NSString *origin = @"231C1F121D1764";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){115, (Byte *)data.bytes, 6, 147, 28, 12};
        dreamLetterData = [self StringFromAfterData:&value];
    }
    return dreamLetterData;
}

//: Việt nam
+ (NSString *)appMWithName {
    /* static */ NSString *appMWithName = nil;
    if (!appMWithName) {
		NSString *origin = @"7946CE94A85B0F414E42CF";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){47, (Byte *)data.bytes, 10, 2, 255, 54};
        appMWithName = [self StringFromAfterData:&value];
    }
    return appMWithName;
}

//: Romania
+ (NSString *)m_replyReadMValue {
    /* static */ NSString *m_replyReadMValue = nil;
    if (!m_replyReadMValue) {
		NSString *origin = @"2B161418171018A1";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){121, (Byte *)data.bytes, 7, 114, 157, 89};
        m_replyReadMValue = [self StringFromAfterData:&value];
    }
    return m_replyReadMValue;
}

//: user_qr_icon
+ (NSString *)k_withName {
    /* static */ NSString *k_withName = nil;
    if (!k_withName) {
		NSString *origin = @"717761765B75765B6D676B6AD9";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){4, (Byte *)data.bytes, 12, 95, 226, 254};
        k_withName = [self StringFromAfterData:&value];
    }
    return k_withName;
}

//: Denmark
+ (NSString *)app_nameStr {
    /* static */ NSString *app_nameStr = nil;
    if (!app_nameStr) {
		NSString *origin = @"D9F8F3F0FCEFF655";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){157, (Byte *)data.bytes, 7, 129, 59, 65};
        app_nameStr = [self StringFromAfterData:&value];
    }
    return app_nameStr;
}

//: Hungary
+ (NSString *)mainReadText {
    /* static */ NSString *mainReadText = nil;
    if (!mainReadText) {
		NSString *origin = @"6459424B4D5E551E";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){44, (Byte *)data.bytes, 7, 1, 12, 102};
        mainReadText = [self StringFromAfterData:&value];
    }
    return mainReadText;
}

//: Slovenija
+ (NSString *)k_numberPath {
    /* static */ NSString *k_numberPath = nil;
    if (!k_numberPath) {
		NSString *origin = @"241B180112191E1D16B1";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){119, (Byte *)data.bytes, 9, 136, 164, 244};
        k_numberPath = [self StringFromAfterData:&value];
    }
    return k_numberPath;
}

//: #CCECFC
+ (NSString *)noti_nextFileIdent {
    /* static */ NSString *noti_nextFileIdent = nil;
    if (!noti_nextFileIdent) {
		NSString *origin = @"C7A7A7A1A7A2A793";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){228, (Byte *)data.bytes, 7, 167, 143, 220};
        noti_nextFileIdent = [self StringFromAfterData:&value];
    }
    return noti_nextFileIdent;
}

//: my_log
+ (NSString *)notiClickId {
    /* static */ NSString *notiClickId = nil;
    if (!notiClickId) {
		NSString *origin = @"B3A781B2B1B92A";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){222, (Byte *)data.bytes, 6, 72, 219, 237};
        notiClickId = [self StringFromAfterData:&value];
    }
    return notiClickId;
}

//: user_ic_5
+ (NSString *)user_popName {
    /* static */ NSString *user_popName = nil;
    if (!user_popName) {
		NSString *origin = @"B2B4A2B598AEA498F2D8";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){199, (Byte *)data.bytes, 9, 24, 9, 63};
        user_popName = [self StringFromAfterData:&value];
    }
    return user_popName;
}

//: #2C3042
+ (NSString *)noti_factorContentPath {
    /* static */ NSString *noti_factorContentPath = nil;
    if (!noti_factorContentPath) {
		NSString *origin = @"1E0F7E0E0D090FA6";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){61, (Byte *)data.bytes, 7, 227, 59, 128};
        noti_factorContentPath = [self StringFromAfterData:&value];
    }
    return noti_factorContentPath;
}

//: 5D5F66
+ (NSString *)show_titleValue {
    /* static */ NSString *show_titleValue = nil;
    if (!show_titleValue) {
		NSString *origin = @"90E190E39393F8";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){165, (Byte *)data.bytes, 6, 246, 65, 85};
        show_titleValue = [self StringFromAfterData:&value];
    }
    return show_titleValue;
}

//: #999999
+ (NSString *)app_recentTitle {
    /* static */ NSString *app_recentTitle = nil;
    if (!app_recentTitle) {
		NSString *origin = @"3F25252525252501";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){28, (Byte *)data.bytes, 7, 242, 222, 47};
        app_recentTitle = [self StringFromAfterData:&value];
    }
    return app_recentTitle;
}

//: Netherlands
+ (NSString *)showRedMakeMsg {
    /* static */ NSString *showRedMakeMsg = nil;
    if (!showRedMakeMsg) {
		NSString *origin = @"DAF1E0FCF1E6F8F5FAF0E7B7";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){148, (Byte *)data.bytes, 11, 120, 105, 189};
        showRedMakeMsg = [self StringFromAfterData:&value];
    }
    return showRedMakeMsg;
}

//: Lithuania
+ (NSString *)dreamQueryCenterPath {
    /* static */ NSString *dreamQueryCenterPath = nil;
    if (!dreamQueryCenterPath) {
		NSString *origin = @"486D706C71656A6D6516";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){4, (Byte *)data.bytes, 9, 44, 192, 100};
        dreamQueryCenterPath = [self StringFromAfterData:&value];
    }
    return dreamQueryCenterPath;
}

//: Croatia
+ (NSString *)mListTitle {
    /* static */ NSString *mListTitle = nil;
    if (!mListTitle) {
		NSString *origin = @"B889949A8F929A0A";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){251, (Byte *)data.bytes, 7, 241, 211, 26};
        mListTitle = [self StringFromAfterData:&value];
    }
    return mListTitle;
}

//: user_edit_profile
+ (NSString *)userReadName {
    /* static */ NSString *userReadName = nil;
    if (!userReadName) {
		NSString *origin = @"2F293F28053F3E332E052A28353C33363F92";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){90, (Byte *)data.bytes, 17, 159, 240, 183};
        userReadName = [self StringFromAfterData:&value];
    }
    return userReadName;
}

//: Malta
+ (NSString *)mInfoMessage {
    /* static */ NSString *mInfoMessage = nil;
    if (!mInfoMessage) {
		NSString *origin = @"FFD3DEC6D36D";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){178, (Byte *)data.bytes, 5, 2, 127, 185};
        mInfoMessage = [self StringFromAfterData:&value];
    }
    return mInfoMessage;
}

//: Ireland
+ (NSString *)k_enableSuccessData {
    /* static */ NSString *k_enableSuccessData = nil;
    if (!k_enableSuccessData) {
		NSString *origin = @"0D362128252A201E";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){68, (Byte *)data.bytes, 7, 132, 112, 206};
        k_enableSuccessData = [self StringFromAfterData:&value];
    }
    return k_enableSuccessData;
}

//: user_edit_lang
+ (NSString *)showEnableValue {
    /* static */ NSString *showEnableValue = nil;
    if (!showEnableValue) {
		NSString *origin = @"7F796F78556F6E637E55666B646D3E";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){10, (Byte *)data.bytes, 14, 154, 92, 29};
        showEnableValue = [self StringFromAfterData:&value];
    }
    return showEnableValue;
}

//: Finland
+ (NSString *)dream_listTitle {
    /* static */ NSString *dream_listTitle = nil;
    if (!dream_listTitle) {
		NSString *origin = @"3B1413111C13192B";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){125, (Byte *)data.bytes, 7, 241, 112, 171};
        dream_listTitle = [self StringFromAfterData:&value];
    }
    return dream_listTitle;
}

//: contact_tag_fragment_cancel
+ (NSString *)show_pathName {
    /* static */ NSString *show_pathName = nil;
    if (!show_pathName) {
		NSString *origin = @"3F3332283D3F2803283D3B033A2E3D3B31393228033F3D323F3930FE";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){92, (Byte *)data.bytes, 27, 179, 246, 166};
        show_pathName = [self StringFromAfterData:&value];
    }
    return show_pathName;
}

//: France
+ (NSString *)mainContentStr {
    /* static */ NSString *mainContentStr = nil;
    if (!mainContentStr) {
		NSString *origin = @"3D091A15181E0B";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){123, (Byte *)data.bytes, 6, 76, 112, 179};
        mainContentStr = [self StringFromAfterData:&value];
    }
    return mainContentStr;
}

//: activity_comment_setting_exit
+ (NSString *)mainRangeUrl {
    /* static */ NSString *mainRangeUrl = nil;
    if (!mainRangeUrl) {
		NSString *origin = @"282A3D203F203D30162A2624242C273D163A2C3D3D20272E162C31203D10";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){73, (Byte *)data.bytes, 29, 174, 110, 245};
        mainRangeUrl = [self StringFromAfterData:&value];
    }
    return mainRangeUrl;
}

//: italiano
+ (NSString *)appPinPopMessage {
    /* static */ NSString *appPinPopMessage = nil;
    if (!appPinPopMessage) {
		NSString *origin = @"978A9F92979F909160";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){254, (Byte *)data.bytes, 8, 182, 71, 224};
        appPinPopMessage = [self StringFromAfterData:&value];
    }
    return appPinPopMessage;
}

//: 中文繁体
+ (NSString *)m_fromStr {
    /* static */ NSString *m_fromStr = nil;
    if (!m_fromStr) {
		NSString *origin = @"24786D265647277941247D53A8";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){192, (Byte *)data.bytes, 12, 212, 183, 226};
        m_fromStr = [self StringFromAfterData:&value];
    }
    return m_fromStr;
}

//: btn_right
+ (NSString *)kToolName {
    /* static */ NSString *kToolName = nil;
    if (!kToolName) {
		NSString *origin = @"43554F7E534846495570";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){33, (Byte *)data.bytes, 9, 242, 44, 242};
        kToolName = [self StringFromAfterData:&value];
    }
    return kToolName;
}

//: English
+ (NSString *)dream_viewMsg {
    /* static */ NSString *dream_viewMsg = nil;
    if (!dream_viewMsg) {
		NSString *origin = @"250E070C0913080A";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){96, (Byte *)data.bytes, 7, 117, 183, 228};
        dream_viewMsg = [self StringFromAfterData:&value];
    }
    return dream_viewMsg;
}

//: qrcode_activity_title
+ (NSString *)user_frameValue {
    /* static */ NSString *user_frameValue = nil;
    if (!user_frameValue) {
		NSString *origin = @"6467767A71704A7476617C637C616C4A617C61797019";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){21, (Byte *)data.bytes, 21, 124, 25, 101};
        user_frameValue = [self StringFromAfterData:&value];
    }
    return user_frameValue;
}

//: feedback_activity_title
+ (NSString *)showChildKey {
    /* static */ NSString *showChildKey = nil;
    if (!showChildKey) {
		NSString *origin = @"6D6E6E6F696A6860546A687F627D627F72547F627F676E0A";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){11, (Byte *)data.bytes, 23, 51, 226, 221};
        showChildKey = [self StringFromAfterData:&value];
    }
    return showChildKey;
}

//: common_bg
+ (NSString *)app_nextText {
    /* static */ NSString *app_nextText = nil;
    if (!app_nextText) {
		NSString *origin = @"4C4042424041704D4878";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){47, (Byte *)data.bytes, 9, 41, 57, 156};
        app_nextText = [self StringFromAfterData:&value];
    }
    return app_nextText;
}

//: Sverige
+ (NSString *)notiViewValue {
    /* static */ NSString *notiViewValue = nil;
    if (!notiViewValue) {
		NSString *origin = @"BF9A899E858B89EA";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){236, (Byte *)data.bytes, 7, 227, 117, 59};
        notiViewValue = [self StringFromAfterData:&value];
    }
    return notiViewValue;
}

//: hant
+ (NSString *)notiNameMessage {
    /* static */ NSString *notiNameMessage = nil;
    if (!notiNameMessage) {
		NSString *origin = @"19101F05E8";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){113, (Byte *)data.bytes, 4, 80, 174, 177};
        notiNameMessage = [self StringFromAfterData:&value];
    }
    return notiNameMessage;
}

//: user_my_log
+ (NSString *)dreamFromValue {
    /* static */ NSString *dreamFromValue = nil;
    if (!dreamFromValue) {
		NSString *origin = @"060016012C1E0A2C1F1C1403";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){115, (Byte *)data.bytes, 11, 28, 144, 81};
        dreamFromValue = [self StringFromAfterData:&value];
    }
    return dreamFromValue;
}

//: icon_close
+ (NSString *)dream_showTitleId {
    /* static */ NSString *dream_showTitleId = nil;
    if (!dream_showTitleId) {
		NSString *origin = @"9E949899A8949B9884920D";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){247, (Byte *)data.bytes, 10, 101, 147, 50};
        dream_showTitleId = [self StringFromAfterData:&value];
    }
    return dream_showTitleId;
}

//: Estonia
+ (NSString *)dreamSizeClickMsg {
    /* static */ NSString *dreamSizeClickMsg = nil;
    if (!dreamSizeClickMsg) {
		NSString *origin = @"4771766D6C6B635A";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){2, (Byte *)data.bytes, 7, 154, 202, 33};
        dreamSizeClickMsg = [self StringFromAfterData:&value];
    }
    return dreamSizeClickMsg;
}

//: icon_select_confirm
+ (NSString *)noti_popMyValue {
    /* static */ NSString *noti_popMyValue = nil;
    if (!noti_popMyValue) {
		NSString *origin = @"1F1519182905131A13150229151918101F041B40";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){118, (Byte *)data.bytes, 19, 255, 37, 184};
        noti_popMyValue = [self StringFromAfterData:&value];
    }
    return noti_popMyValue;
}

//: Slovakia
+ (NSString *)app_nameTitle {
    /* static */ NSString *app_nameTitle = nil;
    if (!app_nameTitle) {
		NSString *origin = @"B48B8891868C8E86EC";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){231, (Byte *)data.bytes, 8, 13, 154, 198};
        app_nameTitle = [self StringFromAfterData:&value];
    }
    return app_nameTitle;
}

//: spa
+ (NSString *)m_greenValue {
    /* static */ NSString *m_greenValue = nil;
    if (!m_greenValue) {
		NSString *origin = @"84879607";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){247, (Byte *)data.bytes, 3, 65, 148, 205};
        m_greenValue = [self StringFromAfterData:&value];
    }
    return m_greenValue;
}

//: #02D8C9
+ (NSString *)user_listName {
    /* static */ NSString *user_listName = nil;
    if (!user_listName) {
		NSString *origin = @"D7C4C6B0CCB7CD76";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){244, (Byte *)data.bytes, 7, 145, 2, 79};
        user_listName = [self StringFromAfterData:&value];
    }
    return user_listName;
}

//: Türkçe
+ (NSString *)k_teamStr {
    /* static */ NSString *k_teamStr = nil;
    if (!k_teamStr) {
		NSString *origin = @"7AED925C45ED894BEC";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){46, (Byte *)data.bytes, 8, 92, 246, 242};
        k_teamStr = [self StringFromAfterData:&value];
    }
    return k_teamStr;
}

//: user_ic_1
+ (NSString *)kModeMessage {
    /* static */ NSString *kModeMessage = nil;
    if (!kModeMessage) {
		NSString *origin = @"A6A0B6A18CBAB08CE25C";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){211, (Byte *)data.bytes, 9, 193, 190, 214};
        kModeMessage = [self StringFromAfterData:&value];
    }
    return kModeMessage;
}

//: user_ic_4
+ (NSString *)mEnableId {
    /* static */ NSString *mEnableId = nil;
    if (!mEnableId) {
		NSString *origin = @"E2E4F2E5C8FEF4C8A349";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){151, (Byte *)data.bytes, 9, 202, 32, 219};
        mEnableId = [self StringFromAfterData:&value];
    }
    return mEnableId;
}

//: user_ic_3
+ (NSString *)app_infoMessage {
    /* static */ NSString *app_infoMessage = nil;
    if (!app_infoMessage) {
		NSString *origin = @"2C2A3C2B06303A066AE6";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){89, (Byte *)data.bytes, 9, 206, 92, 65};
        app_infoMessage = [self StringFromAfterData:&value];
    }
    return app_infoMessage;
}

//: enable
+ (NSString *)dreamTitleStr {
    /* static */ NSString *dreamTitleStr = nil;
    if (!dreamTitleStr) {
		NSString *origin = @"FFF4FBF8F6FF36";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){154, (Byte *)data.bytes, 6, 178, 131, 11};
        dreamTitleStr = [self StringFromAfterData:&value];
    }
    return dreamTitleStr;
}

//: NotificationLogout
+ (NSString *)showShouldMessage {
    /* static */ NSString *showShouldMessage = nil;
    if (!showShouldMessage) {
		NSString *origin = @"EECFD4C9C6C9C3C1D4C9CFCEECCFC7CFD5D4ED";
		NSData *data = [AfterData AfterDataToData:origin];
        StructAfterData value = (StructAfterData){160, (Byte *)data.bytes, 18, 19, 45, 228};
        showShouldMessage = [self StringFromAfterData:&value];
    }
    return showShouldMessage;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  BackgroundViewController.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMainCenterViewController.h"
#import "BackgroundViewController.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "FFFCommonTableDelegate.h"
#import "MessageDelegate.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NTESBundleSetting.h"
#import "EnvironmentSetting.h"
//: #import "UIActionSheet+NTESBlock.h"
#import "UIActionSheet+Enable.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Enable.h"
//: #import "NTESNotificationCenter.h"
#import "CanLabel.h"
//: #import "NTESCustomNotificationDB.h"
#import "AppDb.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESColorButtonCell.h"
#import "LengthNameView.h"
//: #import "CCCBlackListViewController.h"
#import "ItemViewController.h"
//: #import "NTESUserUtil.h"
#import "InformationUtil.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "NTESMigrateMessageViewController.h"
#import "OpenViewController.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+Enable.h"
//: #import "FFFUserInfoViewController.h"//个人资料
#import "TabularMatterOrientationReadUserViewController.h"//个人资料
//: #import "NTESUserQRCodeViewController.h" //我的二维码
#import "ContentViewController.h" //我的二维码
//: #import "NTESSafetySetingController.h"   //安全设置
#import "ReloadViewController.h"   //安全设置
//: #import "NTESFeedbackViewController.h" //意见反馈
#import "BirdSEyeViewController.h" //意见反馈
//: #import "NTESLanguageViewController.h"
#import "ImageViewController.h"
//: #import "NTESOpinionBackViewController.h" //意见反馈
#import "BarViewController.h" //意见反馈
//: #import "ZMONPolicyPrivacyViewController.h"
#import "InformationViewController.h"
//: #import "MyLogViewController.h"
#import "ColumnViewController.h"

//: @interface NTESMainCenterViewController ()<NIMUserManagerDelegate>
@interface BackgroundViewController ()<NIMUserManagerDelegate>


//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;
//: @property (nonatomic,strong) UIImageView *headerImage;
@property (nonatomic,strong) UIImageView *headerImage;
//: @property (nonatomic,strong) UILabel *lablang;
@property (nonatomic,strong) UILabel *lablang;
//: @property (nonatomic ,strong) NSString *language;
@property (nonatomic ,strong) NSString *language;


//: @end
@end

//: @implementation NTESMainCenterViewController
@implementation BackgroundViewController

//: - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
    //: [self refreshUserInfo];
    [self arrayLightInfo];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
    //: [SVProgressHUD dismiss];
    [SVProgressHUD dismiss];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
    //: bg.image = [UIImage imageNamed:@"common_bg"];
    bg.image = [UIImage imageNamed:[AfterData app_nextText]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: [self initUI];
    [self initDoing];
    //: [[NIMSDK sharedSDK].userManager addDelegate:self];
    [[NIMSDK sharedSDK].userManager addDelegate:self];

    //: self.language = [self requestLanguage:[NIMUserDefaults standardUserDefaults].language];
    self.language = [self request:[DataMaxDefaults max].language];
}

//: - (void)refreshUserInfo
- (void)arrayLightInfo
{
    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    Info *info = [[Case pastTop] consumer:userID message:nil];

    //: self.titleLabel.text = me.userInfo.nickName;
    self.titleLabel.text = me.userInfo.nickName;
    //: self.accountLabel.text = [NSString stringWithFormat:@"%@",emptyString([NIMUserDefaults standardUserDefaults].accountName)];
    self.accountLabel.text = [NSString stringWithFormat:@"%@",cornerViewText([DataMaxDefaults max].accountName)];
    //: [self.headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    [self.headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];


    //: _lablang.text = self.language;
    _lablang.text = self.language;
}

//: - (NSString *)requestLanguage:(NSString *)langType {
- (NSString *)request:(NSString *)langType {

    //: NSString *resourceType = @"en";
    NSString *resourceType = @"en";
    //: if ([langType containsString:@"en"]) {
    if ([langType containsString:@"en"]) {
        //: resourceType = @"English";
        resourceType = [AfterData dream_viewMsg];
    //: }else if ([langType containsString:@"th"]){
    }else if ([langType containsString:@"th"]){
        //: resourceType = @"ภาษาไทย ";
        resourceType = @"ภาษาไทย ";
    //: }else if ([langType containsString:@"vi"]){
    }else if ([langType containsString:@"vi"]){
        //: resourceType = @"Việt nam";
        resourceType = [AfterData appMWithName];
    //: }else if ([langType containsString:@"hi"]){
    }else if ([langType containsString:@"hi"]){
        //: resourceType = @"हिंदी";
        resourceType = @"हिंदी";
    //: }else if ([langType containsString:@"ja"]){
    }else if ([langType containsString:@"ja"]){
        //: resourceType = @"にほんご";
        resourceType = @"にほんご";
    //: }else if ([langType containsString:@"ko"]){
    }else if ([langType containsString:@"ko"]){
        //: resourceType = @"한국어";
        resourceType = @"한국어";
    //: }else if ([langType containsString:@"spa"]){
    }else if ([langType containsString:[AfterData m_greenValue]]){
        //: resourceType = @"Español";
        resourceType = [AfterData main_shouldObjectOpenName];
    //: }else if ([langType containsString:@"pt"]){
    }else if ([langType containsString:@"pt"]){
        //: resourceType = @"Portugal";
        resourceType = [AfterData userNameTitle];
    //: }else if ([langType containsString:@"zh"]){
    }else if ([langType containsString:@"zh"]){
        //: resourceType = @"中文";
        resourceType = @"中文";
    //: }else if ([langType containsString:@"it"]){
    }else if ([langType containsString:@"it"]){
        //: resourceType = @"italiano";
        resourceType = [AfterData appPinPopMessage];
    //: }else if ([langType containsString:@"eg"]){
    }else if ([langType containsString:@"eg"]){
        //: resourceType = @"العربية المصرية";
        resourceType = @"العربية المصرية";
    //: }else if ([langType containsString:@"tr"]){
    }else if ([langType containsString:@"tr"]){
        //: resourceType = @"Türkçe";
        resourceType = [AfterData k_teamStr];
    //: }else if ([langType containsString:@"ug"]){
    }else if ([langType containsString:@"ug"]){
        //: resourceType = @"Kiswahili";
        resourceType = [AfterData dream_viewData];
    //: }else if ([langType containsString:@"de"]){
    }else if ([langType containsString:@"de"]){
        //: resourceType = @"Em alemão";
        resourceType = [AfterData app_memberStr];
    //: }else if ([langType containsString:@"pk"]){
    }else if ([langType containsString:@"pk"]){
        //: resourceType = @"‎اردو";
        resourceType = @"‎اردو";
    //: }else if ([langType containsString:@"sa"]){
    }else if ([langType containsString:@"sa"]){
        //: resourceType = @"العربية";
        resourceType = @"العربية";
    //: }else if ([langType containsString:@"ru"]){
    }else if ([langType containsString:@"ru"]){
        //: resourceType = @"русск";
        resourceType = @"русск";
    //: }else if ([langType containsString:@"bd"]){
    }else if ([langType containsString:@"bd"]){
        //: resourceType = @"বাঙ্গালি";
        resourceType = @"বাঙ্গালি";
    //: }else if ([langType containsString:@"fr"]){
    }else if ([langType containsString:@"fr"]){
        //: resourceType = @"France";
        resourceType = [AfterData mainContentStr];
    //: }else if ([langType containsString:@"hant"]){
    }else if ([langType containsString:[AfterData notiNameMessage]]){
        //: resourceType = @"中文繁体";
        resourceType = [AfterData m_fromStr];
    //: }else if ([langType containsString:@"sv"]){
    }else if ([langType containsString:@"sv"]){
        //: resourceType = @"Sverige";
        resourceType = [AfterData notiViewValue];
    //: }else if ([langType containsString:@"sl"]){
    }else if ([langType containsString:@"sl"]){
        //: resourceType = @"Slovenija";
        resourceType = [AfterData k_numberPath];
    //: }else if ([langType containsString:@"sk"]){
    }else if ([langType containsString:@"sk"]){
        //: resourceType = @"Slovakia";
        resourceType = [AfterData app_nameTitle];
    //: }else if ([langType containsString:@"ro"]){
    }else if ([langType containsString:@"ro"]){
        //: resourceType = @"Romania";
        resourceType = [AfterData m_replyReadMValue];
    //: }else if ([langType containsString:@"pl"]){
    }else if ([langType containsString:@"pl"]){
        //: resourceType = @"Poland";
        resourceType = [AfterData dreamLetterData];
    //: }else if ([langType containsString:@"nl"]){
    }else if ([langType containsString:@"nl"]){
        //: resourceType = @"Netherlands";
        resourceType = [AfterData showRedMakeMsg];
    //: }else if ([langType containsString:@"mt"]){
    }else if ([langType containsString:@"mt"]){
        //: resourceType = @"Malta";
        resourceType = [AfterData mInfoMessage];
    //: }else if ([langType containsString:@"lb"]){
    }else if ([langType containsString:@"lb"]){
        //: resourceType = @"Luxembourg";
        resourceType = [AfterData noti_modeShowValue];
    //: }else if ([langType containsString:@"lt"]){
    }else if ([langType containsString:@"lt"]){
        //: resourceType = @"Lithuania";
        resourceType = [AfterData dreamQueryCenterPath];
    //: }else if ([langType containsString:@"lv"]){
    }else if ([langType containsString:@"lv"]){
        //: resourceType = @"Latvia";
        resourceType = [AfterData show_rangeCellUrl];
    //: }else if ([langType containsString:@"bg"]){
    }else if ([langType containsString:@"bg"]){
        //: resourceType = @"Bulgaria";
        resourceType = [AfterData noti_objectValue];
    //: }else if ([langType containsString:@"hr"]){
    }else if ([langType containsString:@"hr"]){
        //: resourceType = @"Croatia";
        resourceType = [AfterData mListTitle];
    //: }else if ([langType containsString:@"cs"]){
    }else if ([langType containsString:@"cs"]){
        //: resourceType = @"Czech Republic";
        resourceType = [AfterData noti_viewData];
    //: }else if ([langType containsString:@"da"]){
    }else if ([langType containsString:@"da"]){
        //: resourceType = @"Denmark";
        resourceType = [AfterData app_nameStr];
    //: }else if ([langType containsString:@"et"]){
    }else if ([langType containsString:@"et"]){
        //: resourceType = @"Estonia";
        resourceType = [AfterData dreamSizeClickMsg];
    //: }else if ([langType containsString:@"fi"]){
    }else if ([langType containsString:@"fi"]){
        //: resourceType = @"Finland";
        resourceType = [AfterData dream_listTitle];
    //: }else if ([langType containsString:@"el"]){
    }else if ([langType containsString:@"el"]){
        //: resourceType = @"Greece";
        resourceType = [AfterData k_modeMsg];
    //: }else if ([langType containsString:@"hu"]){
    }else if ([langType containsString:@"hu"]){
        //: resourceType = @"Hungary";
        resourceType = [AfterData mainReadText];
    //: }else if ([langType containsString:@"ga"]){
    }else if ([langType containsString:@"ga"]){
        //: resourceType = @"Ireland";
        resourceType = [AfterData k_enableSuccessData];
    }

    //: NSLog(@"resourceType : %@",resourceType);

    //: return resourceType;
    return resourceType;
}

//: - (void)initUI{
- (void)initDoing{

    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    Info *info = [[Case pastTop] consumer:userID message:nil];

    //: _headerImage = [[UIImageView alloc] initWithFrame:CGRectMake(20,(44.0f + [UIDevice vg_statusBarHeight]), 64, 64)];
    _headerImage = [[UIImageView alloc] initWithFrame:CGRectMake(20,(44.0f + [UIDevice statusOrLevel]), 64, 64)];
    //: [self.view addSubview:_headerImage];
    [self.view addSubview:_headerImage];
    //: _headerImage.layer.cornerRadius = 32;
    _headerImage.layer.cornerRadius = 32;
    //: _headerImage.layer.borderColor = [UIColor whiteColor].CGColor;
    _headerImage.layer.borderColor = [UIColor whiteColor].CGColor;
    //: _headerImage.layer.borderWidth = 1;
    _headerImage.layer.borderWidth = 1;
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:me.userInfo.avatarUrl] placeholderImage:info.avatarImage];

    //: [self.view addSubview:self.titleLabel];
    [self.view addSubview:self.titleLabel];
    //: self.titleLabel.text = me.userInfo.nickName;
    self.titleLabel.text = me.userInfo.nickName;
    //: self.titleLabel.frame = CGRectMake(_headerImage.right+10, (44.0f + [UIDevice vg_statusBarHeight])+7, 150, 25);
    self.titleLabel.frame = CGRectMake(_headerImage.right+10, (44.0f + [UIDevice statusOrLevel])+7, 150, 25);
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];

    //: [self.view addSubview:self.accountLabel];
    [self.view addSubview:self.accountLabel];
    //: self.accountLabel.text = [NSString stringWithFormat:@"%@",emptyString([NIMUserDefaults standardUserDefaults].accountName)];
    self.accountLabel.text = [NSString stringWithFormat:@"%@",cornerViewText([DataMaxDefaults max].accountName)];
    //: self.accountLabel.frame = CGRectMake(_headerImage.right+10, self.titleLabel.bottom, 250, 25);
    self.accountLabel.frame = CGRectMake(_headerImage.right+10, self.titleLabel.bottom, 250, 25);

    //: UIButton *qrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *qrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: qrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-53-15, (44.0f + [UIDevice vg_statusBarHeight])+2, 53, 60);
    qrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-53-15, (44.0f + [UIDevice statusOrLevel])+2, 53, 60);
    //: qrBtn.backgroundColor = [UIColor whiteColor];
    qrBtn.backgroundColor = [UIColor whiteColor];
    //: qrBtn.layer.cornerRadius = 12;
    qrBtn.layer.cornerRadius = 12;
    //: [qrBtn setImage:[UIImage imageNamed:@"user_qr_icon"] forState:(UIControlStateNormal)];
    [qrBtn setImage:[UIImage imageNamed:[AfterData k_withName]] forState:(UIControlStateNormal)];
    //: [qrBtn addTarget:self action:@selector(handlebtnQr) forControlEvents:UIControlEventTouchUpInside];
    [qrBtn addTarget:self action:@selector(totalClear) forControlEvents:UIControlEventTouchUpInside];
    //: qrBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    qrBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    //: [qrBtn setTitleColor:[UIColor colorWithHexString:@"#02D8C9"] forState:UIControlStateNormal];
    [qrBtn setTitleColor:[UIColor status:[AfterData user_listName]] forState:UIControlStateNormal];
    //: [qrBtn setTitle:[FFFLanguageManager getTextWithKey:@"qrcode_activity_title"] forState:UIControlStateNormal];
    [qrBtn setTitle:[SendName streetSmart:[AfterData user_frameValue]] forState:UIControlStateNormal];
    //: [qrBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
    [qrBtn reloadSession:(MKButtonEdgeInsetsStyleTop) text:10];
    //: [self.view addSubview:qrBtn];
    [self.view addSubview:qrBtn];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+100, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(49.0f))];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice statusOrLevel])+100, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice statusOrLevel])-(49.0f))];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    contentView.backgroundColor = [UIColor status:[AfterData show_titleMsg]];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-45)/2;
    //: UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, width, 52)];
    UIView *editView = [[UIView alloc]initWithFrame:CGRectMake(15, 15, width, 52)];
    //: editView.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
    editView.backgroundColor = [UIColor status:[AfterData k_greenIdent]];
    //: editView.layer.cornerRadius = 12;
    editView.layer.cornerRadius = 12;
    //: [contentView addSubview:editView];
    [contentView addSubview:editView];
    //: editView.userInteractionEnabled = YES;
    editView.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(userInfoCenter)];
    UITapGestureRecognizer *singleTap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(sizeShow)];
    //: [editView addGestureRecognizer:singleTap1];
    [editView addGestureRecognizer:singleTap1];
    //: UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    UIImageView *editimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    //: editimg.image = [UIImage imageNamed:@"user_edit_profile"];
    editimg.image = [UIImage imageNamed:[AfterData userReadName]];
    //: editimg.contentMode = UIViewContentModeScaleAspectFill;
    editimg.contentMode = UIViewContentModeScaleAspectFill;
    //: [editView addSubview:editimg];
    [editView addSubview:editimg];
    //: UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    UILabel *labedit = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    //: labedit.font = [UIFont systemFontOfSize:14];
    labedit.font = [UIFont systemFontOfSize:14];
    //: labedit.textColor = [UIColor colorWithHexString:@"#2C3042"];
    labedit.textColor = [UIColor status:[AfterData noti_factorContentPath]];
    //: labedit.text = [FFFLanguageManager getTextWithKey:@"edit_profile"];
    labedit.text = [SendName streetSmart:[AfterData k_mName]];
    //: [editView addSubview:labedit];
    [editView addSubview:labedit];

    //: UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width+30, 15, width, 52)];
    UIView *langView = [[UIView alloc]initWithFrame:CGRectMake(width+30, 15, width, 52)];
    //: langView.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
    langView.backgroundColor = [UIColor status:[AfterData noti_nextFileIdent]];
    //: langView.layer.cornerRadius = 12;
    langView.layer.cornerRadius = 12;
    //: [contentView addSubview:langView];
    [contentView addSubview:langView];
    //: langView.userInteractionEnabled = YES;
    langView.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(changeLang)];
    UITapGestureRecognizer *singleTap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(showFull)];
    //: [langView addGestureRecognizer:singleTap2];
    [langView addGestureRecognizer:singleTap2];
    //: UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    UIImageView *langimg = [[UIImageView alloc]initWithFrame:CGRectMake(width-165, 0, 165, 52)];
    //: langimg.image = [UIImage imageNamed:@"user_edit_lang"];
    langimg.image = [UIImage imageNamed:[AfterData showEnableValue]];
    //: langimg.contentMode = UIViewContentModeScaleAspectFill;
    langimg.contentMode = UIViewContentModeScaleAspectFill;
    //: [langView addSubview:langimg];
    [langView addSubview:langimg];
    //: _lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    _lablang = [[UILabel alloc] initWithFrame:CGRectMake(15, 0, width-30, 52)];
    //: _lablang.font = [UIFont systemFontOfSize:14];
    _lablang.font = [UIFont systemFontOfSize:14];
    //: _lablang.textColor = [UIColor colorWithHexString:@"#2C3042"];
    _lablang.textColor = [UIColor status:[AfterData noti_factorContentPath]];
    //: _lablang.text = @"English";
    _lablang.text = [AfterData dream_viewMsg];
    //: [langView addSubview:_lablang];
    [langView addSubview:_lablang];

    //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, editView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(15, editView.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    //: [contentView addSubview:view1];
    [contentView addSubview:view1];
    //: view1.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    view1.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: view1.layer.cornerRadius = 12;
    view1.layer.cornerRadius = 12;
    //: view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    view1.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    //: view1.layer.shadowOffset = CGSizeMake(0,4);
    view1.layer.shadowOffset = CGSizeMake(0,4);
    //: view1.layer.shadowOpacity = 1;
    view1.layer.shadowOpacity = 1;
    //: view1.layer.shadowRadius = 16;
    view1.layer.shadowRadius = 16;

    //: UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box1 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box1.backgroundColor = [UIColor clearColor];
    box1.backgroundColor = [UIColor clearColor];
    //: [view1 addSubview:box1];
    [view1 addSubview:box1];

    //: UIImageView *image11 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_1"]];
    UIImageView *image11 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[AfterData kModeMessage]]];
    //: image11.frame = CGRectMake(0, 13, 28, 28);
    image11.frame = CGRectMake(0, 13, 28, 28);
    //: [box1 addSubview:image11];
    [box1 addSubview:image11];
    //: UILabel *label11 = [[UILabel alloc] initWithFrame:CGRectMake(image11.right+12, image11.top, [[UIScreen mainScreen] bounds].size.width-90-60, 28)];
    UILabel *label11 = [[UILabel alloc] initWithFrame:CGRectMake(image11.right+12, image11.top, [[UIScreen mainScreen] bounds].size.width-90-60, 28)];
    //: label11.font = [UIFont systemFontOfSize:13.f];
    label11.font = [UIFont systemFontOfSize:13.f];
    //: label11.textColor = [UIColor blackColor];
    label11.textColor = [UIColor blackColor];
    //: label11.text = [FFFLanguageManager getTextWithKey:@"receiver_model"];
    label11.text = [SendName streetSmart:[AfterData m_toolData]];
    //: [box1 addSubview:label11];
    [box1 addSubview:label11];
    //: UISwitch *switch11 = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, image11.top-3, 51, 31)];
    UISwitch *switch11 = [[UISwitch alloc]initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-51, image11.top-3, 51, 31)];
    //: switch11.onTintColor = [UIColor colorWithHexString:@"#02D8C9"];
    switch11.onTintColor = [UIColor status:[AfterData user_listName]];
    //: [switch11 addTarget:self action:@selector(switchWith:) forControlEvents:UIControlEventValueChanged];
    [switch11 addTarget:self action:@selector(quantitied:) forControlEvents:UIControlEventValueChanged];
    //: [box1 addSubview:switch11];
    [box1 addSubview:switch11];


    //: UIView *boxlog = [[UIView alloc]initWithFrame:CGRectMake(15, box1.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *boxlog = [[UIView alloc]initWithFrame:CGRectMake(15, box1.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: boxlog.backgroundColor = [UIColor clearColor];
    boxlog.backgroundColor = [UIColor clearColor];
    //: [view1 addSubview:boxlog];
    [view1 addSubview:boxlog];
    //: boxlog.userInteractionEnabled = YES;
    boxlog.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap8 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(gotoMyLog)];
    UITapGestureRecognizer *singleTap8 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(messageDismissOrigin)];
    //: [boxlog addGestureRecognizer:singleTap8];
    [boxlog addGestureRecognizer:singleTap8];

    //: UIImageView *imagelog = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_my_log"]];
    UIImageView *imagelog = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[AfterData dreamFromValue]]];
    //: imagelog.frame = CGRectMake(0, 13, 28, 28);
    imagelog.frame = CGRectMake(0, 13, 28, 28);
    //: [boxlog addSubview:imagelog];
    [boxlog addSubview:imagelog];
    //: UILabel *labellog = [[UILabel alloc] initWithFrame:CGRectMake(imagelog.right+12, imagelog.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *labellog = [[UILabel alloc] initWithFrame:CGRectMake(imagelog.right+12, imagelog.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: labellog.font = [UIFont systemFontOfSize:13.f];
    labellog.font = [UIFont systemFontOfSize:13.f];
    //: labellog.textColor = [UIColor blackColor];
    labellog.textColor = [UIColor blackColor];
    //: labellog.text = [FFFLanguageManager getTextWithKey:@"my_log"];
    labellog.text = [SendName streetSmart:[AfterData notiClickId]];
    //: [boxlog addSubview:labellog];
    [boxlog addSubview:labellog];
    //: UIImageView *arrowrightlog = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowrightlog = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowrightlog.image = [UIImage imageNamed:@"btn_right"];
    arrowrightlog.image = [UIImage imageNamed:[AfterData kToolName]];
    //: [boxlog addSubview:arrowrightlog];
    [boxlog addSubview:arrowrightlog];

    //: UIView *box6 = [[UIView alloc]initWithFrame:CGRectMake(15, boxlog.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box6 = [[UIView alloc]initWithFrame:CGRectMake(15, boxlog.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box6.backgroundColor = [UIColor clearColor];
    box6.backgroundColor = [UIColor clearColor];
    //: [view1 addSubview:box6];
    [view1 addSubview:box6];
    //: box6.userInteractionEnabled = YES;
    box6.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap7 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(safetySeting)];
    UITapGestureRecognizer *singleTap7 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(stepIn)];
    //: [box6 addGestureRecognizer:singleTap7];
    [box6 addGestureRecognizer:singleTap7];

    //: UIImageView *image23 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_2"]];
    UIImageView *image23 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[AfterData user_showName]]];
    //: image23.frame = CGRectMake(0, 13, 28, 28);
    image23.frame = CGRectMake(0, 13, 28, 28);
    //: [box6 addSubview:image23];
    [box6 addSubview:image23];
    //: UILabel *label23 = [[UILabel alloc] initWithFrame:CGRectMake(image23.right+12, image23.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label23 = [[UILabel alloc] initWithFrame:CGRectMake(image23.right+12, image23.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label23.font = [UIFont systemFontOfSize:13.f];
    label23.font = [UIFont systemFontOfSize:13.f];
    //: label23.textColor = [UIColor blackColor];
    label23.textColor = [UIColor blackColor];
    //: label23.text = [FFFLanguageManager getTextWithKey:@"safe_setting_activity_title"];
    label23.text = [SendName streetSmart:[AfterData mNameId]];
    //: [box6 addSubview:label23];
    [box6 addSubview:label23];
    //: UIImageView *arrowright6 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowright6 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowright6.image = [UIImage imageNamed:@"btn_right"];
    arrowright6.image = [UIImage imageNamed:[AfterData kToolName]];
    //: [box6 addSubview:arrowright6];
    [box6 addSubview:arrowright6];


    //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(15, view1.bottom+10, [[UIScreen mainScreen] bounds].size.width-30, 162)];
    //: [contentView addSubview:view2];
    [contentView addSubview:view2];
    //: view2.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    view2.layer.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1].CGColor;
    //: view2.layer.cornerRadius = 12;
    view2.layer.cornerRadius = 12;
    //: view2.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    view2.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0500].CGColor;
    //: view2.layer.shadowOffset = CGSizeMake(0,4);
    view2.layer.shadowOffset = CGSizeMake(0,4);
    //: view2.layer.shadowOpacity = 1;
    view2.layer.shadowOpacity = 1;
    //: view2.layer.shadowRadius = 16;
    view2.layer.shadowRadius = 16;



    //: UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box3 = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box3.backgroundColor = [UIColor clearColor];
    box3.backgroundColor = [UIColor clearColor];
    //: [view2 addSubview:box3];
    [view2 addSubview:box3];

    //: UIImageView *image14 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_3"]];
    UIImageView *image14 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[AfterData app_infoMessage]]];
    //: image14.frame = CGRectMake(0, 13, 28, 28);
    image14.frame = CGRectMake(0, 13, 28, 28);
    //: [box3 addSubview:image14];
    [box3 addSubview:image14];
    //: UILabel *label14 = [[UILabel alloc] initWithFrame:CGRectMake(image14.right+12, image14.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label14 = [[UILabel alloc] initWithFrame:CGRectMake(image14.right+12, image14.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label14.font = [UIFont systemFontOfSize:13.f];
    label14.font = [UIFont systemFontOfSize:13.f];
    //: label14.textColor = [UIColor blackColor];
    label14.textColor = [UIColor blackColor];
    //: label14.text = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
    label14.text = [SendName streetSmart:[AfterData show_afterId]];//@"用户协议和隐私协议";
    //: [box3 addSubview:label14];
    [box3 addSubview:label14];
    //: UIImageView *arrowright2 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowright2 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowright2.image = [UIImage imageNamed:@"btn_right"];
    arrowright2.image = [UIImage imageNamed:[AfterData kToolName]];
    //: [box3 addSubview:arrowright2];
    [box3 addSubview:arrowright2];
    //: box3.userInteractionEnabled = YES;
    box3.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(jumpAgreement)];
    UITapGestureRecognizer *singleTap4 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(nameAgreement)];
    //: [box3 addGestureRecognizer:singleTap4];
    [box3 addGestureRecognizer:singleTap4];

    //: UIView *box5 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box5 = [[UIView alloc]initWithFrame:CGRectMake(15, box3.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box5.backgroundColor = [UIColor clearColor];
    box5.backgroundColor = [UIColor clearColor];
    //: [view2 addSubview:box5];
    [view2 addSubview:box5];
    //: box5.userInteractionEnabled = YES;
    box5.userInteractionEnabled = YES;
    //: UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(opinionBack)];
    UITapGestureRecognizer *singleTap6 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(preconceivedNotionMode)];
    //: [box5 addGestureRecognizer:singleTap6];
    [box5 addGestureRecognizer:singleTap6];

    //: UIImageView *image22 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_4"]];
    UIImageView *image22 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[AfterData mEnableId]]];
    //: image22.frame = CGRectMake(0, 13, 28, 28);
    image22.frame = CGRectMake(0, 13, 28, 28);
    //: [box5 addSubview:image22];
    [box5 addSubview:image22];
    //: UILabel *label22 = [[UILabel alloc] initWithFrame:CGRectMake(image22.right+12, image22.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label22 = [[UILabel alloc] initWithFrame:CGRectMake(image22.right+12, image22.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label22.font = [UIFont systemFontOfSize:13.f];
    label22.font = [UIFont systemFontOfSize:13.f];
    //: label22.textColor = [UIColor blackColor];
    label22.textColor = [UIColor blackColor];
    //: label22.text = [FFFLanguageManager getTextWithKey:@"feedback_activity_title"];
    label22.text = [SendName streetSmart:[AfterData showChildKey]];
    //: [box5 addSubview:label22];
    [box5 addSubview:label22];

    //: UIImageView *arrowright5 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    UIImageView *arrowright5 = [[UIImageView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width-60-12, 21, 12, 12)];
    //: arrowright5.image = [UIImage imageNamed:@"btn_right"];
    arrowright5.image = [UIImage imageNamed:[AfterData kToolName]];
    //: [box5 addSubview:arrowright5];
    [box5 addSubview:arrowright5];






    //: UIView *box7 = [[UIView alloc]initWithFrame:CGRectMake(15, box5.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    UIView *box7 = [[UIView alloc]initWithFrame:CGRectMake(15, box5.bottom, [[UIScreen mainScreen] bounds].size.width-60, 54)];
    //: box7.backgroundColor = [UIColor clearColor];
    box7.backgroundColor = [UIColor clearColor];
    //: [view2 addSubview:box7];
    [view2 addSubview:box7];

    //: UIImageView *image31 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_ic_5"]];
    UIImageView *image31 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[AfterData user_popName]]];
    //: image31.frame = CGRectMake(0, 13, 28, 28);
    image31.frame = CGRectMake(0, 13, 28, 28);
    //: [box7 addSubview:image31];
    [box7 addSubview:image31];
    //: UILabel *label31 = [[UILabel alloc] initWithFrame:CGRectMake(image31.right+12, image31.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    UILabel *label31 = [[UILabel alloc] initWithFrame:CGRectMake(image31.right+12, image31.top, [[UIScreen mainScreen] bounds].size.width-60-60, 28)];
    //: label31.font = [UIFont systemFontOfSize:13.f];
    label31.font = [UIFont systemFontOfSize:13.f];
    //: label31.textColor = [UIColor blackColor];
    label31.textColor = [UIColor blackColor];
    //: [box7 addSubview:label31];
    [box7 addSubview:label31];
    //: NSString *fragment_my_version = [FFFLanguageManager getTextWithKey:@"fragment_my_version"];
    NSString *fragment_my_version = [SendName streetSmart:[AfterData k_messageName]];
    //: NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    NSDictionary *infoDic = [[NSBundle mainBundle] infoDictionary];
    //: NSString *appVersion = [infoDic objectForKey:@"CFBundleShortVersionString"];
    NSString *appVersion = [infoDic objectForKey:[AfterData notiAfterTitle]];// 获取App的版本号
    //: label31.text = [NSString stringWithFormat: @"%@：%@",fragment_my_version,appVersion];
    label31.text = [NSString stringWithFormat: @"%@：%@",fragment_my_version,appVersion];

    //: UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: loginButton.frame = CGRectMake(15, view2.bottom+20, [[UIScreen mainScreen] bounds].size.width-30, 44);
    loginButton.frame = CGRectMake(15, view2.bottom+20, [[UIScreen mainScreen] bounds].size.width-30, 44);
    //: loginButton.titleLabel.font = [UIFont systemFontOfSize:14];
    loginButton.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [loginButton setTitleColor:[UIColor colorWithHexString:@"5D5F66"] forState:UIControlStateNormal];
    [loginButton setTitleColor:[UIColor status:[AfterData show_titleValue]] forState:UIControlStateNormal];
    //: [loginButton setTitle:[FFFLanguageManager getTextWithKey:@"activity_comment_setting_exit"] forState:UIControlStateNormal];
    [loginButton setTitle:[SendName streetSmart:[AfterData mainRangeUrl]] forState:UIControlStateNormal];
    //: [loginButton addTarget:self action:@selector(logoutCurrentAccount) forControlEvents:UIControlEventTouchUpInside];
    [loginButton addTarget:self action:@selector(logoutOf) forControlEvents:UIControlEventTouchUpInside];
    //: [contentView addSubview:loginButton];
    [contentView addSubview:loginButton];
    //: loginButton.layer.borderWidth = 1;
    loginButton.layer.borderWidth = 1;
    //: loginButton.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    loginButton.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
    //: loginButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    loginButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
    //: loginButton.layer.cornerRadius = 22;
    loginButton.layer.cornerRadius = 22;



}
//: #pragma mark - NTESMainCenterDelegate
#pragma mark - NTESMainCenterDelegate
//: -(void)userInfoCenter{
-(void)sizeShow{
    //: FFFUserInfoViewController *vc = [[FFFUserInfoViewController alloc] init];
    TabularMatterOrientationReadUserViewController *vc = [[TabularMatterOrientationReadUserViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(void)handlebtnQr{
-(void)totalClear{

    //: NTESUserQRCodeViewController *vc = [[NTESUserQRCodeViewController alloc] init];
    ContentViewController *vc = [[ContentViewController alloc] init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)opinionBack{
-(void)preconceivedNotionMode{

    //: NTESFeedbackViewController *vc = [[NTESFeedbackViewController alloc] init];
    BirdSEyeViewController *vc = [[BirdSEyeViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}
//: -(void)safetySeting{
-(void)stepIn{
    //: NTESSafetySetingController *vc = [[NTESSafetySetingController alloc] init];
    ReloadViewController *vc = [[ReloadViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)gotoMyLog
- (void)messageDismissOrigin
{
    //: MyLogViewController *vc = [[MyLogViewController alloc] init];
    ColumnViewController *vc = [[ColumnViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: -(void)switchWith:(UISwitch *)switchView{
-(void)quantitied:(UISwitch *)switchView{

    //: NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    //: if (switchView.on) {
    if (switchView.on) {
        //: [dict setObject:@"1" forKey:@"enable"];
        [dict setObject:@"1" forKey:[AfterData dreamTitleStr]];

        // 启用听筒模式
        //: [self setEarpieceMode:YES];
        [self setEarpieceRecord:YES];

    //: }else{
    }else{
        //: [dict setObject:@"0" forKey:@"enable"];
        [dict setObject:@"0" forKey:[AfterData dreamTitleStr]];

        // 禁用听筒模式
        //: [self setEarpieceMode:NO];
        [self setEarpieceRecord:NO];
    }
}

//: - (void)setEarpieceMode:(BOOL)enabled {
- (void)setEarpieceRecord:(BOOL)enabled {
    //: NSError *error = nil;
    NSError *error = nil;

    // 获取当前的音频会话
    //: AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];

    // 配置音频会话为播放和录制
    //: [audioSession setCategory:AVAudioSessionCategoryPlayAndRecord error:&error];
    [audioSession setCategory:AVAudioSessionCategoryPlayAndRecord error:&error];

    //: if (error) {
    if (error) {
        //: NSLog(@"Error setting audio session category: %@", error);
        //: return;
        return;
    }

    // 激活音频会话
    //: [audioSession setActive:YES error:&error];
    [audioSession setActive:YES error:&error];

    //: if (error) {
    if (error) {
        //: NSLog(@"Error activating audio session: %@", error);
        //: return;
        return;
    }

    // 根据开关设置听筒模式
    //: if (enabled) {
    if (enabled) {
        // 切换到听筒
        //: [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideSpeaker error:&error];
        [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideSpeaker error:&error];
    //: } else {
    } else {
        // 使用默认音频输出设备（即听筒模式）
        //: [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideNone error:&error];
        [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideNone error:&error];
    }

    //: if (error) {
    if (error) {
        //: NSLog(@"Error overriding audio port: %@", error);
    }
}


//: -(void)changeLang
-(void)showFull
{
    //: NTESLanguageViewController *vc = [[NTESLanguageViewController alloc]init];
    ImageViewController *vc = [[ImageViewController alloc]init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}
//: -(void)exitApp{
-(void)littlenessReceive{
    //: NSString *alertStr = [FFFLanguageManager getTextWithKey:@"system_change_language_title"];
    NSString *alertStr = [SendName streetSmart:[AfterData dream_voiceMessage]];
    //: UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:alertStr preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:alertStr preferredStyle:UIAlertControllerStyleAlert];
    //: [alert addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alert addAction:[UIAlertAction actionWithTitle:[SendName streetSmart:[AfterData dream_nameFormat]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: exit(0);
        exit(0);
    //: }]];
    }]];

    //: [alert addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    [alert addAction:[UIAlertAction actionWithTitle:[SendName streetSmart:[AfterData show_pathName]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {

    //: }]];
    }]];

    //: UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //: [rootVC presentViewController:alert animated:YES completion:nil];
    [rootVC presentViewController:alert animated:YES completion:nil];

}

//: -(void)jumpAgreement{
-(void)nameAgreement{

    //: ZMONPolicyPrivacyViewController *vc = [[ZMONPolicyPrivacyViewController alloc] init];
    InformationViewController *vc = [[InformationViewController alloc] init];
    //: vc.webTitle = [FFFLanguageManager getTextWithKey:@"activity_comment_setting_ys"];
    vc.webTitle = [SendName streetSmart:[AfterData show_afterId]];//@"隐私协议";
    //: vc.urlString = [NIMUserDefaults standardUserDefaults].yshref;
    vc.urlString = [DataMaxDefaults max].yshref;

    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)logoutCurrentAccount
- (void)logoutOf
{

    //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
    [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
     {
        //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
        [[NSNotificationCenter defaultCenter] postNotificationName:[AfterData showShouldMessage] object:nil];
    //: }];
    }];

}


//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:22.f];
        _titleLabel.font = [UIFont systemFontOfSize:22.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)accountLabel{
- (UILabel *)accountLabel{
    //: if (!_accountLabel) {
    if (!_accountLabel) {
        //: _accountLabel = [[UILabel alloc] init];
        _accountLabel = [[UILabel alloc] init];
        //: _accountLabel.font = [UIFont systemFontOfSize:12.f];
        _accountLabel.font = [UIFont systemFontOfSize:12.f];
        //: _accountLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _accountLabel.textColor = [UIColor status:[AfterData app_recentTitle]];
    }
    //: return _accountLabel;
    return _accountLabel;
}

//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        //: [_closeBtn setImage:[UIImage imageNamed:@"icon_close"] forState:UIControlStateNormal];
        [_closeBtn setImage:[UIImage imageNamed:[AfterData dream_showTitleId]] forState:UIControlStateNormal];
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn setImage:[UIImage imageNamed:@"icon_select_confirm"] forState:UIControlStateNormal];
        [_sureBtn setImage:[UIImage imageNamed:[AfterData noti_popMyValue]] forState:UIControlStateNormal];
        //        [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _sureBtn;
    return _sureBtn;
}



//: @end
@end