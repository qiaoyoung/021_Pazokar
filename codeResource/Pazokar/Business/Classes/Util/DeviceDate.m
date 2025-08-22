
#import <Foundation/Foundation.h>

@interface TelevisionData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation TelevisionData

+ (instancetype)sharedInstance {
    static TelevisionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)TelevisionDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)TelevisionDataToCache:(Byte *)data {
    int myFee = data[0];
    Byte sirInmate = data[1];
    int supernaturalBeing = data[2];
    for (int i = supernaturalBeing; i < supernaturalBeing + myFee; i++) {
        int value = data[i] - sirInmate;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[supernaturalBeing + myFee] = 0;
    return data + supernaturalBeing;
}

- (NSString *)StringFromTelevisionData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TelevisionDataToCache:data]];
}

//: Web
- (NSString *)main_cornerFullText {
    /* static */ NSString *main_cornerFullText = nil;
    if (!main_cornerFullText) {
		NSArray<NSString *> *origin = @[@"3", @"32", @"3", @"119", @"133", @"130", @"81"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_cornerFullText = [self StringFromTelevisionData:value];
    }
    return main_cornerFullText;
}

//: Saturday
- (NSString *)m_oilMessage {
    /* static */ NSString *m_oilMessage = nil;
    if (!m_oilMessage) {
		NSArray<NSString *> *origin = @[@"8", @"97", @"9", @"64", @"195", @"41", @"145", @"204", @"162", @"180", @"194", @"213", @"214", @"211", @"197", @"194", @"218", @"191"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_oilMessage = [self StringFromTelevisionData:value];
    }
    return m_oilMessage;
}

//: %zd-%zd-%zd
- (NSString *)userAwarenessData {
    /* static */ NSString *userAwarenessData = nil;
    if (!userAwarenessData) {
		NSArray<NSString *> *origin = @[@"11", @"67", @"9", @"50", @"231", @"110", @"43", @"37", @"29", @"104", @"189", @"167", @"112", @"104", @"189", @"167", @"112", @"104", @"189", @"167", @"94"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userAwarenessData = [self StringFromTelevisionData:value];
    }
    return userAwarenessData;
}

//: before_yesterday
- (NSString *)notiGreenMessage {
    /* static */ NSString *notiGreenMessage = nil;
    if (!notiGreenMessage) {
		NSArray<NSString *> *origin = @[@"16", @"25", @"6", @"175", @"149", @"60", @"123", @"126", @"127", @"136", @"139", @"126", @"120", @"146", @"126", @"140", @"141", @"126", @"139", @"125", @"122", @"146", @"174"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiGreenMessage = [self StringFromTelevisionData:value];
    }
    return notiGreenMessage;
}

//: day_am
- (NSString *)mainFurtherDemonName {
    /* static */ NSString *mainFurtherDemonName = nil;
    if (!mainFurtherDemonName) {
		NSArray<NSString *> *origin = @[@"6", @"36", @"8", @"77", @"77", @"224", @"151", @"166", @"136", @"133", @"157", @"131", @"133", @"145", @"126"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainFurtherDemonName = [self StringFromTelevisionData:value];
    }
    return mainFurtherDemonName;
}

//: wrong_password
- (NSString *)notiMemberValue {
    /* static */ NSString *notiMemberValue = nil;
    if (!notiMemberValue) {
		NSArray<NSString *> *origin = @[@"14", @"8", @"11", @"97", @"110", @"66", @"159", @"10", @"39", @"56", @"110", @"127", @"122", @"119", @"118", @"111", @"103", @"120", @"105", @"123", @"123", @"127", @"119", @"122", @"108", @"50"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiMemberValue = [self StringFromTelevisionData:value];
    }
    return notiMemberValue;
}

//: online_state_event_manager_off_line
- (NSString *)showMessageEllData {
    /* static */ NSString *showMessageEllData = nil;
    if (!showMessageEllData) {
		NSArray<NSString *> *origin = @[@"35", @"49", @"3", @"160", @"159", @"157", @"154", @"159", @"150", @"144", @"164", @"165", @"146", @"165", @"150", @"144", @"150", @"167", @"150", @"159", @"165", @"144", @"158", @"146", @"159", @"146", @"152", @"150", @"163", @"144", @"160", @"151", @"151", @"144", @"157", @"154", @"159", @"150", @"129"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showMessageEllData = [self StringFromTelevisionData:value];
    }
    return showMessageEllData;
}

//: Monday
- (NSString *)showNegativeName {
    /* static */ NSString *showNegativeName = nil;
    if (!showNegativeName) {
		NSArray<NSString *> *origin = @[@"6", @"10", @"7", @"254", @"181", @"175", @"31", @"87", @"121", @"120", @"110", @"107", @"131", @"6"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showNegativeName = [self StringFromTelevisionData:value];
    }
    return showNegativeName;
}

//: Friday
- (NSString *)user_hqIdent {
    /* static */ NSString *user_hqIdent = nil;
    if (!user_hqIdent) {
		NSArray<NSString *> *origin = @[@"6", @"97", @"9", @"152", @"23", @"214", @"1", @"142", @"98", @"167", @"211", @"202", @"197", @"194", @"218", @"19"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_hqIdent = [self StringFromTelevisionData:value];
    }
    return user_hqIdent;
}

//: iOS
- (NSString *)appInkValue {
    /* static */ NSString *appInkValue = nil;
    if (!appInkValue) {
		NSArray<NSString *> *origin = @[@"3", @"45", @"8", @"23", @"10", @"249", @"138", @"86", @"150", @"124", @"128", @"145"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appInkValue = [self StringFromTelevisionData:value];
    }
    return appInkValue;
}

//: day_night
- (NSString *)user_draftDoorwayData {
    /* static */ NSString *user_draftDoorwayData = nil;
    if (!user_draftDoorwayData) {
		NSArray<NSString *> *origin = @[@"9", @"36", @"7", @"195", @"13", @"30", @"19", @"136", @"133", @"157", @"131", @"146", @"141", @"139", @"140", @"152", @"142"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_draftDoorwayData = [self StringFromTelevisionData:value];
    }
    return user_draftDoorwayData;
}

//: message_opposite
- (NSString *)dreamSideKey {
    /* static */ NSString *dreamSideKey = nil;
    if (!dreamSideKey) {
		NSArray<NSString *> *origin = @[@"16", @"44", @"12", @"101", @"101", @"229", @"173", @"41", @"157", @"218", @"121", @"149", @"153", @"145", @"159", @"159", @"141", @"147", @"145", @"139", @"155", @"156", @"156", @"155", @"159", @"149", @"160", @"145", @"149"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamSideKey = [self StringFromTelevisionData:value];
    }
    return dreamSideKey;
}

//: Android
- (NSString *)main_listToolRecentId {
    /* static */ NSString *main_listToolRecentId = nil;
    if (!main_listToolRecentId) {
		NSArray<NSString *> *origin = @[@"7", @"83", @"12", @"13", @"21", @"229", @"184", @"207", @"147", @"183", @"156", @"203", @"148", @"193", @"183", @"197", @"194", @"188", @"183", @"130"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_listToolRecentId = [self StringFromTelevisionData:value];
    }
    return main_listToolRecentId;
}

//: group_member_info_activity_team_admin
- (NSString *)k_watMessage {
    /* static */ NSString *k_watMessage = nil;
    if (!k_watMessage) {
		NSArray<NSString *> *origin = @[@"37", @"61", @"4", @"244", @"164", @"175", @"172", @"178", @"173", @"156", @"170", @"162", @"170", @"159", @"162", @"175", @"156", @"166", @"171", @"163", @"172", @"156", @"158", @"160", @"177", @"166", @"179", @"166", @"177", @"182", @"156", @"177", @"162", @"158", @"170", @"156", @"158", @"161", @"170", @"166", @"171", @"21"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        k_watMessage = [self StringFromTelevisionData:value];
    }
    return k_watMessage;
}

//: Tuesday
- (NSString *)userCellKey {
    /* static */ NSString *userCellKey = nil;
    if (!userCellKey) {
		NSArray<NSString *> *origin = @[@"7", @"17", @"13", @"99", @"102", @"224", @"103", @"36", @"228", @"219", @"51", @"249", @"170", @"101", @"134", @"118", @"132", @"117", @"114", @"138", @"198"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        userCellKey = [self StringFromTelevisionData:value];
    }
    return userCellKey;
}

//: Sunday
- (NSString *)user_topicMsg {
    /* static */ NSString *user_topicMsg = nil;
    if (!user_topicMsg) {
		NSArray<NSString *> *origin = @[@"6", @"40", @"6", @"254", @"156", @"190", @"123", @"157", @"150", @"140", @"137", @"161", @"39"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_topicMsg = [self StringFromTelevisionData:value];
    }
    return user_topicMsg;
}

//: message_online
- (NSString *)mainEmphasizeRedStr {
    /* static */ NSString *mainEmphasizeRedStr = nil;
    if (!mainEmphasizeRedStr) {
		NSArray<NSString *> *origin = @[@"14", @"89", @"10", @"241", @"206", @"162", @"194", @"189", @"226", @"97", @"198", @"190", @"204", @"204", @"186", @"192", @"190", @"184", @"200", @"199", @"197", @"194", @"199", @"190", @"21"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainEmphasizeRedStr = [self StringFromTelevisionData:value];
    }
    return mainEmphasizeRedStr;
}

//: group_member_info_activity_team_creator
- (NSString *)dreamJusticeId {
    /* static */ NSString *dreamJusticeId = nil;
    if (!dreamJusticeId) {
		NSArray<NSString *> *origin = @[@"39", @"85", @"11", @"206", @"132", @"157", @"116", @"181", @"19", @"78", @"58", @"188", @"199", @"196", @"202", @"197", @"180", @"194", @"186", @"194", @"183", @"186", @"199", @"180", @"190", @"195", @"187", @"196", @"180", @"182", @"184", @"201", @"190", @"203", @"190", @"201", @"206", @"180", @"201", @"186", @"182", @"194", @"180", @"184", @"199", @"186", @"182", @"201", @"196", @"199", @"152"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dreamJusticeId = [self StringFromTelevisionData:value];
    }
    return dreamJusticeId;
}

//: yesterday
- (NSString *)showYaValue {
    /* static */ NSString *showYaValue = nil;
    if (!showYaValue) {
		NSArray<NSString *> *origin = @[@"9", @"81", @"11", @"232", @"23", @"68", @"222", @"96", @"147", @"162", @"174", @"202", @"182", @"196", @"197", @"182", @"195", @"181", @"178", @"202", @"57"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showYaValue = [self StringFromTelevisionData:value];
    }
    return showYaValue;
}

//: postscript
- (NSString *)mPateFormat {
    /* static */ NSString *mPateFormat = nil;
    if (!mPateFormat) {
		NSArray<NSString *> *origin = @[@"10", @"74", @"7", @"252", @"193", @"236", @"12", @"186", @"185", @"189", @"190", @"189", @"173", @"188", @"179", @"186", @"190", @"215"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mPateFormat = [self StringFromTelevisionData:value];
    }
    return mPateFormat;
}

//: please_try_again
- (NSString *)appLetterName {
    /* static */ NSString *appLetterName = nil;
    if (!appLetterName) {
		NSArray<NSString *> *origin = @[@"16", @"95", @"7", @"91", @"237", @"170", @"177", @"207", @"203", @"196", @"192", @"210", @"196", @"190", @"211", @"209", @"216", @"190", @"192", @"198", @"192", @"200", @"205", @"214"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        appLetterName = [self StringFromTelevisionData:value];
    }
    return appLetterName;
}

//: Thursday
- (NSString *)main_hockMsg {
    /* static */ NSString *main_hockMsg = nil;
    if (!main_hockMsg) {
		NSArray<NSString *> *origin = @[@"8", @"85", @"13", @"238", @"19", @"133", @"120", @"175", @"101", @"83", @"142", @"254", @"97", @"169", @"189", @"202", @"199", @"200", @"185", @"182", @"206", @"204"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        main_hockMsg = [self StringFromTelevisionData:value];
    }
    return main_hockMsg;
}

//: Mac
- (NSString *)app_chapterName {
    /* static */ NSString *app_chapterName = nil;
    if (!app_chapterName) {
		NSArray<NSString *> *origin = @[@"3", @"83", @"12", @"119", @"37", @"205", @"15", @"17", @"36", @"51", @"1", @"131", @"160", @"180", @"182", @"65"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        app_chapterName = [self StringFromTelevisionData:value];
    }
    return app_chapterName;
}

//: day_pm
- (NSString *)mReadData {
    /* static */ NSString *mReadData = nil;
    if (!mReadData) {
		NSArray<NSString *> *origin = @[@"6", @"96", @"12", @"251", @"177", @"225", @"133", @"252", @"116", @"126", @"149", @"135", @"196", @"193", @"217", @"191", @"208", @"205", @"26"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mReadData = [self StringFromTelevisionData:value];
    }
    return mReadData;
}

//: retracted_message
- (NSString *)mTeamContent {
    /* static */ NSString *mTeamContent = nil;
    if (!mTeamContent) {
		NSArray<NSString *> *origin = @[@"17", @"13", @"9", @"15", @"68", @"208", @"246", @"6", @"121", @"127", @"114", @"129", @"127", @"110", @"112", @"129", @"114", @"113", @"108", @"122", @"114", @"128", @"128", @"110", @"116", @"114", @"118"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mTeamContent = [self StringFromTelevisionData:value];
    }
    return mTeamContent;
}

//: online_state_event_manager_on_line_busy
- (NSString *)notiConsciousnessMessage {
    /* static */ NSString *notiConsciousnessMessage = nil;
    if (!notiConsciousnessMessage) {
		NSArray<NSString *> *origin = @[@"39", @"60", @"13", @"31", @"23", @"217", @"24", @"190", @"47", @"142", @"141", @"117", @"207", @"171", @"170", @"168", @"165", @"170", @"161", @"155", @"175", @"176", @"157", @"176", @"161", @"155", @"161", @"178", @"161", @"170", @"176", @"155", @"169", @"157", @"170", @"157", @"163", @"161", @"174", @"155", @"171", @"170", @"155", @"168", @"165", @"170", @"161", @"155", @"158", @"177", @"175", @"181", @"98"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiConsciousnessMessage = [self StringFromTelevisionData:value];
    }
    return notiConsciousnessMessage;
}

//: Wednesday
- (NSString *)showYaPath {
    /* static */ NSString *showYaPath = nil;
    if (!showYaPath) {
		NSArray<NSString *> *origin = @[@"9", @"13", @"7", @"4", @"64", @"153", @"225", @"100", @"114", @"113", @"123", @"114", @"128", @"113", @"110", @"134", @"65"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showYaPath = [self StringFromTelevisionData:value];
    }
    return showYaPath;
}

//: login_failure
- (NSString *)m_popKey {
    /* static */ NSString *m_popKey = nil;
    if (!m_popKey) {
		NSArray<NSString *> *origin = @[@"13", @"77", @"6", @"34", @"160", @"240", @"185", @"188", @"180", @"182", @"187", @"172", @"179", @"174", @"182", @"185", @"194", @"191", @"178", @"77"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_popKey = [self StringFromTelevisionData:value];
    }
    return m_popKey;
}

//: wee_hours
- (NSString *)mainSolutionMessage {
    /* static */ NSString *mainSolutionMessage = nil;
    if (!mainSolutionMessage) {
		NSArray<NSString *> *origin = @[@"9", @"56", @"4", @"165", @"175", @"157", @"157", @"151", @"160", @"167", @"173", @"170", @"171", @"113"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainSolutionMessage = [self StringFromTelevisionData:value];
    }
    return mainSolutionMessage;
}

//: message_helper_you
- (NSString *)notiMentorSeedRegardingIdent {
    /* static */ NSString *notiMentorSeedRegardingIdent = nil;
    if (!notiMentorSeedRegardingIdent) {
		NSArray<NSString *> *origin = @[@"18", @"55", @"11", @"43", @"10", @"1", @"147", @"104", @"111", @"215", @"243", @"164", @"156", @"170", @"170", @"152", @"158", @"156", @"150", @"159", @"156", @"163", @"167", @"156", @"169", @"150", @"176", @"166", @"172", @"227"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        notiMentorSeedRegardingIdent = [self StringFromTelevisionData:value];
    }
    return notiMentorSeedRegardingIdent;
}

//: logged_another_device
- (NSString *)m_viewPath {
    /* static */ NSString *m_viewPath = nil;
    if (!m_viewPath) {
		NSArray<NSString *> *origin = @[@"21", @"49", @"10", @"49", @"21", @"145", @"76", @"77", @"135", @"89", @"157", @"160", @"152", @"152", @"150", @"149", @"144", @"146", @"159", @"160", @"165", @"153", @"150", @"163", @"144", @"149", @"150", @"167", @"154", @"148", @"150", @"37"];
		NSData *data = [TelevisionData TelevisionDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        m_viewPath = [self StringFromTelevisionData:value];
    }
    return m_viewPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceDate.m
//  NIMDemo
//
//  Created by ght on 15-1-27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "CCCLoginManager.h"
#import "RowTop.h"
//: #import "NTESSnapchatAttachment.h"
#import "MediaAttachment.h"
//: #import "NTESJanKenPonAttachment.h"
#import "MyAttachment.h"
//: #import "UIImage+NTES.h"
#import "UIImage+Date.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "NTESSnapchatAttachment.h"
#import "MediaAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "TagAttachment.h"
//: #import "BusyKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "NTESSubscribeManager.h"
#import "FindManager.h"
//: #import "BusyExtensionHelper.h"
#import "BusyExtensionHelper.h"
//: #import "NTESSubscribeDefine.h"
#import "NTESSubscribeDefine.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Doing.h"
//: #import "NTESDevice.h"
#import "SharedDataParent.h"

//: double OnedayTimeIntervalValue = 24*60*60; 
double showIconKey = 24*60*60; //一天的秒数

//: static NSString *const NTESRecentSessionAtMark = @"NTESRecentSessionAtMark";
static NSString *const mTeamFormat = @"NTESRecentSessionAtMark";
//: static NSString *const NTESRecentSessionTopMark = @"NTESRecentSessionTopMark";
static NSString *const dreamFromText = @"NTESRecentSessionTopMark";


//: @implementation NTESSessionUtil
@implementation DeviceDate

//: + (CGSize)getImageSizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)completeSize:(CGSize)originSize
                                  //: minSize:(CGSize)imageMinSize
                                  margin:(CGSize)imageMinSize
                                  //: maxSize:(CGSize)imageMaxSiz
                                  listBy:(CGSize)imageMaxSiz
{
    //: CGSize size;
    CGSize size;
    //: NSInteger imageWidth = originSize.width ,imageHeight = originSize.height;
    NSInteger imageWidth = originSize.width ,imageHeight = originSize.height;
    //: NSInteger imageMinWidth = imageMinSize.width, imageMinHeight = imageMinSize.height;
    NSInteger imageMinWidth = imageMinSize.width, imageMinHeight = imageMinSize.height;
    //: NSInteger imageMaxWidth = imageMaxSiz.width, imageMaxHeight = imageMaxSiz.height;
    NSInteger imageMaxWidth = imageMaxSiz.width, imageMaxHeight = imageMaxSiz.height;
    //: if (imageWidth > imageHeight) 
    if (imageWidth > imageHeight) //宽图
    {
        //: size.height = imageMinHeight; 
        size.height = imageMinHeight; //高度取最小高度
        //: size.width = imageWidth * imageMinHeight / imageHeight;
        size.width = imageWidth * imageMinHeight / imageHeight;
        //: if (size.width > imageMaxWidth)
        if (size.width > imageMaxWidth)
        {
            //: size.width = imageMaxWidth;
            size.width = imageMaxWidth;
        }
    }
    //: else if(imageWidth < imageHeight)
    else if(imageWidth < imageHeight)//高图
    {
        //: size.width = imageMinWidth;
        size.width = imageMinWidth;
        //: size.height = imageHeight *imageMinWidth / imageWidth;
        size.height = imageHeight *imageMinWidth / imageWidth;
        //: if (size.height > imageMaxHeight)
        if (size.height > imageMaxHeight)
        {
            //: size.height = imageMaxHeight;
            size.height = imageMaxHeight;
        }
    }
    //: else
    else//方图
    {
        //: if (imageWidth > imageMaxWidth)
        if (imageWidth > imageMaxWidth)
        {
            //: size.width = imageMaxWidth;
            size.width = imageMaxWidth;
            //: size.height = imageMaxHeight;
            size.height = imageMaxHeight;
        }
        //: else if(imageWidth > imageMinWidth)
        else if(imageWidth > imageMinWidth)
        {
            //: size.width = imageWidth;
            size.width = imageWidth;
            //: size.height = imageHeight;
            size.height = imageHeight;
        }
        //: else
        else
        {
            //: size.width = imageMinWidth;
            size.width = imageMinWidth;
            //: size.height = imageMinHeight;
            size.height = imageMinHeight;
        }
    }
    //: return size;
    return size;
}


//: +(BOOL)isTheSameDay:(NSTimeInterval)currentTime compareTime:(NSDateComponents*)older
+(BOOL)title:(NSTimeInterval)currentTime crop:(NSDateComponents*)older
{
    //: NSCalendarUnit currentComponents = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour | NSCalendarUnitMinute);
    NSCalendarUnit currentComponents = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour | NSCalendarUnitMinute);
    //: NSDateComponents *current = [[NSCalendar currentCalendar] components:currentComponents fromDate:[NSDate dateWithTimeIntervalSinceNow:currentTime]];
    NSDateComponents *current = [[NSCalendar currentCalendar] components:currentComponents fromDate:[NSDate dateWithTimeIntervalSinceNow:currentTime]];

    //: return current.year == older.year && current.month == older.month && current.day == older.day;
    return current.year == older.year && current.month == older.month && current.day == older.day;
}

//: +(NSString*)weekdayStr:(NSInteger)dayOfWeek
+(NSString*)content:(NSInteger)dayOfWeek
{
    //: static NSDictionary *daysOfWeekDict = nil;
    static NSDictionary *daysOfWeekDict = nil;
    //: daysOfWeekDict = @{@(1):[BusyLanguageManager getTextWithKey:@"Sunday"],//@"星期日",
    daysOfWeekDict = @{@(1):[SendName streetSmart:[[TelevisionData sharedInstance] user_topicMsg]],//@"星期日",
                       //: @(2):[BusyLanguageManager getTextWithKey:@"Monday"],//@"星期一",
                       @(2):[SendName streetSmart:[[TelevisionData sharedInstance] showNegativeName]],//@"星期一",
                       //: @(3):[BusyLanguageManager getTextWithKey:@"Tuesday"],//@"星期二",
                       @(3):[SendName streetSmart:[[TelevisionData sharedInstance] userCellKey]],//@"星期二",
                       //: @(4):[BusyLanguageManager getTextWithKey:@"Wednesday"],//@"星期三",
                       @(4):[SendName streetSmart:[[TelevisionData sharedInstance] showYaPath]],//@"星期三",
                       //: @(5):[BusyLanguageManager getTextWithKey:@"Thursday"],//@"星期四",
                       @(5):[SendName streetSmart:[[TelevisionData sharedInstance] main_hockMsg]],//@"星期四",
                       //: @(6):[BusyLanguageManager getTextWithKey:@"Friday"],//@"星期五",
                       @(6):[SendName streetSmart:[[TelevisionData sharedInstance] user_hqIdent]],//@"星期五",
                       //: @(7):[BusyLanguageManager getTextWithKey:@"Saturday"]};
                       @(7):[SendName streetSmart:[[TelevisionData sharedInstance] m_oilMessage]]};//@"星期六",};
    //: return [daysOfWeekDict objectForKey:@(dayOfWeek)];
    return [daysOfWeekDict objectForKey:@(dayOfWeek)];
}


//: +(NSDateComponents*)stringFromTimeInterval:(NSTimeInterval)messageTime components:(NSCalendarUnit)components
+(NSDateComponents*)utiliser:(NSTimeInterval)messageTime australianState:(NSCalendarUnit)components
{
    //: NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:components fromDate:[NSDate dateWithTimeIntervalSince1970:messageTime]];
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:components fromDate:[NSDate dateWithTimeIntervalSince1970:messageTime]];
    //: return dateComponents;
    return dateComponents;
}


//: + (NSString *)showNick:(NSString*)uid inSession:(NIMSession*)session{
+ (NSString *)inColor:(NSString*)uid ting:(NIMSession*)session{

    //: NSString *nickname = nil;
    NSString *nickname = nil;
    //: if (session.sessionType == NIMSessionTypeTeam)
    if (session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:uid inTeam:session.sessionId];
        NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:uid inTeam:session.sessionId];
        //: nickname = member.nickname;
        nickname = member.nickname;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam)
    else if (session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:uid inTeam:session.sessionId];
        NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:uid inTeam:session.sessionId];
        //: nickname = member.nickname;
        nickname = member.nickname;
    }
    //: if (!nickname.length) {
    if (!nickname.length) {
        //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:uid option:nil];
        Info *info = [[Case pastTop] consumer:uid message:nil];
        //: nickname = info.showName;
        nickname = info.showName;
    }
    //: return nickname;
    return nickname;
}


//: +(NSString*)showTime:(NSTimeInterval) msglastTime showDetail:(BOOL)showDetail
+(NSString*)close:(NSTimeInterval) msglastTime view:(BOOL)showDetail
{
    //今天的时间
    //: NSDate * nowDate = [NSDate date];
    NSDate * nowDate = [NSDate date];
    //: NSDate * msgDate = [NSDate dateWithTimeIntervalSince1970:msglastTime];
    NSDate * msgDate = [NSDate dateWithTimeIntervalSince1970:msglastTime];
    //: NSString *result = nil;
    NSString *result = nil;
    //: NSCalendarUnit components = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday|NSCalendarUnitHour | NSCalendarUnitMinute);
    NSCalendarUnit components = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday|NSCalendarUnitHour | NSCalendarUnitMinute);
    //: NSDateComponents *nowDateComponents = [[NSCalendar currentCalendar] components:components fromDate:nowDate];
    NSDateComponents *nowDateComponents = [[NSCalendar currentCalendar] components:components fromDate:nowDate];
    //: NSDateComponents *msgDateComponents = [[NSCalendar currentCalendar] components:components fromDate:msgDate];
    NSDateComponents *msgDateComponents = [[NSCalendar currentCalendar] components:components fromDate:msgDate];

    //: NSInteger hour = msgDateComponents.hour;
    NSInteger hour = msgDateComponents.hour;

    //: result = [NTESSessionUtil getPeriodOfTime:hour withMinute:msgDateComponents.minute];
    result = [DeviceDate stick:hour user:msgDateComponents.minute];
    //: if (hour > 12)
    if (hour > 12)
    {
        //: hour = hour - 12;
        hour = hour - 12;
    }
    //: if(nowDateComponents.day == msgDateComponents.day) 
    if(nowDateComponents.day == msgDateComponents.day) //同一天,显示时间
    {
        //: result = [[NSString alloc] initWithFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute];
        result = [[NSString alloc] initWithFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute];
    }
    //: else if(nowDateComponents.day == (msgDateComponents.day+1))
    else if(nowDateComponents.day == (msgDateComponents.day+1))//昨天
    {
        //: result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[BusyLanguageManager getTextWithKey:@"yesterday"], result,hour,(int)msgDateComponents.minute] : [BusyLanguageManager getTextWithKey:@"yesterday"];
        result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[SendName streetSmart:[[TelevisionData sharedInstance] showYaValue]], result,hour,(int)msgDateComponents.minute] : [SendName streetSmart:[[TelevisionData sharedInstance] showYaValue]];//昨天
    }
    //: else if(nowDateComponents.day == (msgDateComponents.day+2)) 
    else if(nowDateComponents.day == (msgDateComponents.day+2)) //前天
    {
        //: result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[BusyLanguageManager getTextWithKey:@"before_yesterday"], result,hour,(int)msgDateComponents.minute] : [BusyLanguageManager getTextWithKey:@"before_yesterday"];
        result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[SendName streetSmart:[[TelevisionData sharedInstance] notiGreenMessage]], result,hour,(int)msgDateComponents.minute] : [SendName streetSmart:[[TelevisionData sharedInstance] notiGreenMessage]];//@"前天";
    }
    //: else if([nowDate timeIntervalSinceDate:msgDate] < 7 * OnedayTimeIntervalValue)
    else if([nowDate timeIntervalSinceDate:msgDate] < 7 * showIconKey)//一周内
    {
        //: NSString *weekDay = [NTESSessionUtil weekdayStr:msgDateComponents.weekday];
        NSString *weekDay = [DeviceDate content:msgDateComponents.weekday];
        //: result = showDetail? [weekDay stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute] : weekDay;
        result = showDetail? [weekDay stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute] : weekDay;
    }
    //: else
    else//显示日期
    {
        //: NSString *day = [NSString stringWithFormat:@"%zd-%zd-%zd", msgDateComponents.year, msgDateComponents.month, msgDateComponents.day];
        NSString *day = [NSString stringWithFormat:[[TelevisionData sharedInstance] userAwarenessData], msgDateComponents.year, msgDateComponents.month, msgDateComponents.day];
        //: result = showDetail? [day stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute]:day;
        result = showDetail? [day stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute]:day;
    }
    //: return result;
    return result;
}

//: + (NSString *)getPeriodOfTime:(NSInteger)time withMinute:(NSInteger)minute
+ (NSString *)stick:(NSInteger)time user:(NSInteger)minute
{
    //: NSInteger totalMin = time *60 + minute;
    NSInteger totalMin = time *60 + minute;
    //: NSString *showPeriodOfTime = @"";
    NSString *showPeriodOfTime = @"";
    //: if (totalMin > 0 && totalMin <= 5 * 60)
    if (totalMin > 0 && totalMin <= 5 * 60)
    {
        //: showPeriodOfTime = [BusyLanguageManager getTextWithKey:@"wee_hours"];
        showPeriodOfTime = [SendName streetSmart:[[TelevisionData sharedInstance] mainSolutionMessage]];//@"凌晨".ntes_localized;
    }
    //: else if (totalMin > 5 * 60 && totalMin < 12 * 60)
    else if (totalMin > 5 * 60 && totalMin < 12 * 60)
    {
        //: showPeriodOfTime = [BusyLanguageManager getTextWithKey:@"day_am"];
        showPeriodOfTime = [SendName streetSmart:[[TelevisionData sharedInstance] mainFurtherDemonName]];//@"上午".ntes_localized;
    }
    //: else if (totalMin >= 12 * 60 && totalMin <= 18 * 60)
    else if (totalMin >= 12 * 60 && totalMin <= 18 * 60)
    {
        //: showPeriodOfTime = [BusyLanguageManager getTextWithKey:@"day_pm"];
        showPeriodOfTime = [SendName streetSmart:[[TelevisionData sharedInstance] mReadData]];//@"下午".ntes_localized;
    }
    //: else if ((totalMin > 18 * 60 && totalMin <= (23 * 60 + 59)) || totalMin == 0)
    else if ((totalMin > 18 * 60 && totalMin <= (23 * 60 + 59)) || totalMin == 0)
    {
        //: showPeriodOfTime = [BusyLanguageManager getTextWithKey:@"day_night"];
        showPeriodOfTime = [SendName streetSmart:[[TelevisionData sharedInstance] user_draftDoorwayData]];//@"晚上".ntes_localized;
    }
    //: return showPeriodOfTime;
    return showPeriodOfTime;
}


//: + (void)sessionWithInputURL:(NSURL*)inputURL
+ (void)thread:(NSURL*)inputURL
                  //: outputURL:(NSURL*)outputURL
                  counterval:(NSURL*)outputURL
               //: blockHandler:(void (^)(AVAssetExportSession*))handler
               sub:(void (^)(AVAssetExportSession*))handler
{
    //: AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
    AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
    //: AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset
    AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset
                                                                     //: presetName:AVAssetExportPresetMediumQuality];
                                                                     presetName:AVAssetExportPresetMediumQuality];
    //: session.outputURL = outputURL;
    session.outputURL = outputURL;
    //: session.outputFileType = AVFileTypeMPEG4; 
    session.outputFileType = AVFileTypeMPEG4; // 支持安卓某些机器的视频播放
    //: session.shouldOptimizeForNetworkUse = YES;
    session.shouldOptimizeForNetworkUse = YES;
    //: [session exportAsynchronouslyWithCompletionHandler:^(void)
    [session exportAsynchronouslyWithCompletionHandler:^(void)
     {
         //: handler(session);
         handler(session);
     //: }];
     }];
}


//: + (NSDictionary *)dictByJsonData:(NSData *)data
+ (NSDictionary *)on:(NSData *)data
{
    //: NSDictionary *dict = nil;
    NSDictionary *dict = nil;
    //: if ([data isKindOfClass:[NSData class]])
    if ([data isKindOfClass:[NSData class]])
    {
        //: NSError *error = nil;
        NSError *error = nil;
        //: dict = [NSJSONSerialization JSONObjectWithData:data
        dict = [NSJSONSerialization JSONObjectWithData:data
                                               //: options:0
                                               options:0
                                                 //: error:&error];
                                                 error:&error];
        //: if (error) {
        if (error) {
        }
    }
    //: return [dict isKindOfClass:[NSDictionary class]] ? dict : nil;
    return [dict isKindOfClass:[NSDictionary class]] ? dict : nil;
}


//: + (NSDictionary *)dictByJsonString:(NSString *)jsonString
+ (NSDictionary *)show:(NSString *)jsonString
{
    //: if (!jsonString.length) {
    if (!jsonString.length) {
        //: return nil;
        return nil;
    }
    //: NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    //: return [NTESSessionUtil dictByJsonData:data];
    return [DeviceDate on:data];
}

//: + (NSString *)tipOnMessageRevokedLocal:(NSString *)postscript {
+ (NSString *)itemLocal:(NSString *)postscript {
    //: NSString *tip = [BusyLanguageManager getTextWithKey:@"message_helper_you"];
    NSString *tip = [SendName streetSmart:[[TelevisionData sharedInstance] notiMentorSeedRegardingIdent]];//@"你".ntes_localized;
    //: NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[BusyLanguageManager getTextWithKey:@"retracted_message"]];
    NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[SendName streetSmart:[[TelevisionData sharedInstance] mTeamContent]]];
    //: if (postscript.length != 0) {
    if (postscript.length != 0) {
        //: msg = [NSString stringWithFormat:@"%@%@.%@:%@", tip,[BusyLanguageManager getTextWithKey:@"retracted_message"],[BusyLanguageManager getTextWithKey:@"postscript"], postscript];
        msg = [NSString stringWithFormat:@"%@%@.%@:%@", tip,[SendName streetSmart:[[TelevisionData sharedInstance] mTeamContent]],[SendName streetSmart:[[TelevisionData sharedInstance] mPateFormat]], postscript];
    }
    //: return msg;
    return msg;
}

//: + (NSString *)tipOnMessageRevoked:(NIMRevokeMessageNotification *)notification
+ (NSString *)holder:(NIMRevokeMessageNotification *)notification
{
    //: NSString *tip = @"";
    NSString *tip = @"";
    //: do {
    do {
        //: if (!notification || ![notification isKindOfClass:[NIMRevokeMessageNotification class]]) {
        if (!notification || ![notification isKindOfClass:[NIMRevokeMessageNotification class]]) {
            //: tip = [BusyLanguageManager getTextWithKey:@"message_helper_you"];
            tip = [SendName streetSmart:[[TelevisionData sharedInstance] notiMentorSeedRegardingIdent]];//@"你".ntes_localized;
            //: break;
            break;
        }
        //: NIMSession *session = notification.session;
        NIMSession *session = notification.session;
        //: if (session.sessionType == NIMSessionTypeTeam || session.sessionType == NIMSessionTypeSuperTeam) {
        if (session.sessionType == NIMSessionTypeTeam || session.sessionType == NIMSessionTypeSuperTeam) {
            //: tip = [self tipTitleFromMessageRevokeNotificationTeam:notification];
            tip = [self everyMax:notification];
            //: break;
            break;
        }
        //: tip = [self tipTitleFromMessageRevokeNotificationP2P:notification];
        tip = [self message:notification];
    //: } while (false);
    } while (false);

    //: NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[BusyLanguageManager getTextWithKey:@"retracted_message"]];
    NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[SendName streetSmart:[[TelevisionData sharedInstance] mTeamContent]]];
    //: if (notification.postscript.length != 0) {
    if (notification.postscript.length != 0) {
        //: msg = [NSString stringWithFormat:@"%@ %@.%@:%@", tip,[BusyLanguageManager getTextWithKey:@"retracted_message"],[BusyLanguageManager getTextWithKey:@"postscript"], notification.postscript];
        msg = [NSString stringWithFormat:@"%@ %@.%@:%@", tip,[SendName streetSmart:[[TelevisionData sharedInstance] mTeamContent]],[SendName streetSmart:[[TelevisionData sharedInstance] mPateFormat]], notification.postscript];
    }
    //: return msg;
    return msg;
}

//: + (NSString *)tipTitleFromMessageRevokeNotificationP2P:(NIMRevokeMessageNotification *)notification {
+ (NSString *)message:(NIMRevokeMessageNotification *)notification {
    //: NSString *fromUid = notification.messageFromUserId;
    NSString *fromUid = notification.messageFromUserId;
    //: BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: return fromMe ? [BusyLanguageManager getTextWithKey:@"message_helper_you"]: [BusyLanguageManager getTextWithKey:@"message_opposite"];
    return fromMe ? [SendName streetSmart:[[TelevisionData sharedInstance] notiMentorSeedRegardingIdent]]: [SendName streetSmart:[[TelevisionData sharedInstance] dreamSideKey]];//@"对方".ntes_localized;
}

//: + (NSString *)tipTitleFromMessageRevokeNotificationTeam:(NIMRevokeMessageNotification *)notification {
+ (NSString *)everyMax:(NIMRevokeMessageNotification *)notification {
    //: NSString *tipTitle = @"";
    NSString *tipTitle = @"";

    //: do {
    do {
        //: NSString *fromUid = notification.messageFromUserId;
        NSString *fromUid = notification.messageFromUserId;
        //: NSString *operatorUid = notification.fromUserId;
        NSString *operatorUid = notification.fromUserId;
        //: BOOL revokeBySender = !operatorUid || [operatorUid isEqualToString:fromUid];
        BOOL revokeBySender = !operatorUid || [operatorUid isEqualToString:fromUid];
        //: BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
        BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];

        // 自己撤回自己的
        //: if (revokeBySender && fromMe) {
        if (revokeBySender && fromMe) {
            //: tipTitle = [BusyLanguageManager getTextWithKey:@"message_helper_you"];
            tipTitle = [SendName streetSmart:[[TelevisionData sharedInstance] notiMentorSeedRegardingIdent]];//@"你".ntes_localized;
            //: break;
            break;
        }

        //: NIMSession *session = notification.session;
        NIMSession *session = notification.session;
        //: BusyKitInfoFetchOption *option = [[BusyKitInfoFetchOption alloc] init];
        InfoGreenImage *option = [[InfoGreenImage alloc] init];
        //: option.session = session;
        option.session = session;
        //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:(revokeBySender ? fromUid : operatorUid) option:option];
        Info *info = [[Case pastTop] consumer:(revokeBySender ? fromUid : operatorUid) message:option];

        // 别人撤回自己的
        //: if (revokeBySender) {
        if (revokeBySender) {
            //: tipTitle = info.showName;
            tipTitle = info.showName;
            //: break;
            break;
        }

        //: NIMTeamMember *member = nil;
        NIMTeamMember *member = nil;
        //: if (notification.session.sessionType == NIMSessionTypeTeam) {
        if (notification.session.sessionType == NIMSessionTypeTeam) {
            //: member = [[NIMSDK sharedSDK].teamManager teamMember:operatorUid inTeam:session.sessionId];
            member = [[NIMSDK sharedSDK].teamManager teamMember:operatorUid inTeam:session.sessionId];
        //: } else if (notification.session.sessionType == NIMSessionTypeSuperTeam) {
        } else if (notification.session.sessionType == NIMSessionTypeSuperTeam) {
            //: member = [[NIMSDK sharedSDK].superTeamManager teamMember:operatorUid inTeam:session.sessionId];
            member = [[NIMSDK sharedSDK].superTeamManager teamMember:operatorUid inTeam:session.sessionId];
        }
        // 被群主/管理员撤回的
        //: if (member.type == NIMTeamMemberTypeOwner) {
        if (member.type == NIMTeamMemberTypeOwner) {
            //: tipTitle = [[BusyLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"] stringByAppendingString:info.showName];
            tipTitle = [[SendName streetSmart:[[TelevisionData sharedInstance] dreamJusticeId]] stringByAppendingString:info.showName];//@"群主".ntes_localized
        }
        //: else if (member.type == NIMTeamMemberTypeManager) {
        else if (member.type == NIMTeamMemberTypeManager) {
            //: tipTitle = [[BusyLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"] stringByAppendingString:info.showName];
            tipTitle = [[SendName streetSmart:[[TelevisionData sharedInstance] k_watMessage]] stringByAppendingString:info.showName];//@"管理员".ntes_localized
        }
    //: } while (false);
    } while (false);

    //: return tipTitle;
    return tipTitle;
}


//: + (BOOL)canMessageBeForwarded:(NIMMessage *)message
+ (BOOL)valueForwarded:(NIMMessage *)message
{
    //: if (!message.isReceivedMsg && message.deliveryState == NIMMessageDeliveryStateFailed) {
    if (!message.isReceivedMsg && message.deliveryState == NIMMessageDeliveryStateFailed) {
        //: return NO;
        return NO;
    }
    //: id<NIMMessageObject> messageObject = message.messageObject;
    id<NIMMessageObject> messageObject = message.messageObject;
    //: if ([messageObject isKindOfClass:[NIMCustomObject class]])
    if ([messageObject isKindOfClass:[NIMCustomObject class]])
    {
        //: id<NTESCustomAttachmentInfo> attach = (id<NTESCustomAttachmentInfo>)[(NIMCustomObject *)message.messageObject attachment];
        id<AnglicismTing> attach = (id<AnglicismTing>)[(NIMCustomObject *)message.messageObject attachment];
        //: return [attach canBeForwarded];
        return [attach spectrum];
    }
    //: if ([messageObject isKindOfClass:[NIMNotificationObject class]]) {
    if ([messageObject isKindOfClass:[NIMNotificationObject class]]) {
        //: return NO;
        return NO;
    }
    //: if ([messageObject isKindOfClass:[NIMTipObject class]]) {
    if ([messageObject isKindOfClass:[NIMTipObject class]]) {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: + (BOOL)canMessageBeRevoked:(NIMMessage *)message
+ (BOOL)sharedComprise:(NIMMessage *)message
{
    //: BOOL canRevokeMessageByRole = [self canRevokeMessageByRole:message];
    BOOL canRevokeMessageByRole = [self messageRole:message];
    //: BOOL isDeliverFailed = !message.isReceivedMsg && message.deliveryState == NIMMessageDeliveryStateFailed;
    BOOL isDeliverFailed = !message.isReceivedMsg && message.deliveryState == NIMMessageDeliveryStateFailed;
    //: if (!canRevokeMessageByRole || isDeliverFailed) {
    if (!canRevokeMessageByRole || isDeliverFailed) {
        //: return NO;
        return NO;
    }
    //: id<NIMMessageObject> messageObject = message.messageObject;
    id<NIMMessageObject> messageObject = message.messageObject;
    //: if ([messageObject isKindOfClass:[NIMTipObject class]]
    if ([messageObject isKindOfClass:[NIMTipObject class]]
        //: || [messageObject isKindOfClass:[NIMNotificationObject class]]) {
        || [messageObject isKindOfClass:[NIMNotificationObject class]]) {
        //: return NO;
        return NO;
    }
    //: if ([messageObject isKindOfClass:[NIMCustomObject class]])
    if ([messageObject isKindOfClass:[NIMCustomObject class]])
    {
        //: id<NTESCustomAttachmentInfo> attach = (id<NTESCustomAttachmentInfo>)[(NIMCustomObject *)message.messageObject attachment];
        id<AnglicismTing> attach = (id<AnglicismTing>)[(NIMCustomObject *)message.messageObject attachment];
        //: return [attach canBeRevoked];
        return [attach straddle];
    }
    //: return YES;
    return YES;
}

//: + (BOOL)canMessageBeCanceled:(NIMMessage *)message
+ (BOOL)presentName:(NIMMessage *)message
{
    //: return [self canMessageBeRevoked:message] &&
    return [self sharedComprise:message] &&
    //: message.deliveryState == NIMMessageDeliveryStateDelivering;
    message.deliveryState == NIMMessageDeliveryStateDelivering;
}


//: + (BOOL)canRevokeMessageByRole:(NIMMessage *)message
+ (BOOL)messageRole:(NIMMessage *)message
{
    //: BOOL isFromMe = [message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    BOOL isFromMe = [message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: BOOL isToMe = [message.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    BOOL isToMe = [message.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: BOOL isTeamManager = NO;
    BOOL isTeamManager = NO;
    //: if (message.session.sessionType == NIMSessionTypeTeam)
    if (message.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:[NIMSDK sharedSDK].loginManager.currentAccount inTeam:message.session.sessionId];
        NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:[NIMSDK sharedSDK].loginManager.currentAccount inTeam:message.session.sessionId];
        //: isTeamManager = member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager;
        isTeamManager = member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager;
    //: } else if (message.session.sessionType == NIMSessionTypeSuperTeam) {
    } else if (message.session.sessionType == NIMSessionTypeSuperTeam) {
        //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:[[NIMSDK sharedSDK].loginManager currentAccount]
        NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:[[NIMSDK sharedSDK].loginManager currentAccount]
                                                                         //: inTeam:message.session.sessionId];
                                                                         inTeam:message.session.sessionId];
        //: isTeamManager = (member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager);
        isTeamManager = (member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager);
    }

    //我发出去的消息并且不是发给我的电脑的消息，可以撤回
    //群消息里如果我是管理员可以撤回以上所有消息
    //: return (isFromMe && !isToMe) || isTeamManager;
    return (isFromMe && !isToMe) || isTeamManager;
}


//: + (void)addRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type
+ (void)large:(NIMSession *)session range:(NTESRecentSessionMarkType)type
{
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    //: if (recent)
    if (recent)
    {
        //: NSDictionary *localExt = recent.localExt?:@{};
        NSDictionary *localExt = recent.localExt?:@{};
        //: NSMutableDictionary *dict = [localExt mutableCopy];
        NSMutableDictionary *dict = [localExt mutableCopy];
        //: NSString *key = [NTESSessionUtil keyForMarkType:type];
        NSString *key = [DeviceDate member:type];
        //: [dict setObject:@(YES) forKey:key];
        [dict setObject:@(YES) forKey:key];
        //: [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:dict recentSession:recent];
        [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:dict recentSession:recent];
    }


}

//: + (void)removeRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type
+ (void)comment:(NIMSession *)session dismiss:(NTESRecentSessionMarkType)type
{
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    //: if (recent) {
    if (recent) {
        //: NSMutableDictionary *localExt = [recent.localExt mutableCopy];
        NSMutableDictionary *localExt = [recent.localExt mutableCopy];
        //: NSString *key = [NTESSessionUtil keyForMarkType:type];
        NSString *key = [DeviceDate member:type];
        //: [localExt removeObjectForKey:key];
        [localExt removeObjectForKey:key];
        //: [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:localExt recentSession:recent];
        [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:localExt recentSession:recent];
    }
}

//: + (BOOL)recentSessionIsMark:(NIMRecentSession *)recent type:(NTESRecentSessionMarkType)type
+ (BOOL)cell:(NIMRecentSession *)recent name:(NTESRecentSessionMarkType)type
{
    //: NSDictionary *localExt = recent.localExt;
    NSDictionary *localExt = recent.localExt;
    //: NSString *key = [NTESSessionUtil keyForMarkType:type];
    NSString *key = [DeviceDate member:type];
    //: if ([localExt[key] isKindOfClass:[NSNumber class]] || [localExt[key] isKindOfClass:[NSString class]]) {
    if ([localExt[key] isKindOfClass:[NSNumber class]] || [localExt[key] isKindOfClass:[NSString class]]) {
        //: return [localExt[key] boolValue] == YES;
        return [localExt[key] boolValue] == YES;
    }
    //: return NO;
    return NO;
}

//: + (NSString *)keyForMarkType:(NTESRecentSessionMarkType)type
+ (NSString *)member:(NTESRecentSessionMarkType)type
{
    //: static NSDictionary *keys;
    static NSDictionary *keys;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: keys = @{
        keys = @{
                 //: @(NTESRecentSessionMarkTypeAt) : NTESRecentSessionAtMark,
                 @(NTESRecentSessionMarkTypeAt) : mTeamFormat,
                 //: @(NTESRecentSessionMarkTypeTop) : NTESRecentSessionTopMark
                 @(NTESRecentSessionMarkTypeTop) : dreamFromText
                 //: };
                 };
    //: });
    });
    //: return [keys objectForKey:@(type)];
    return [keys objectForKey:@(type)];
}

//: + (NSString *)onlineState:(NSString *)userId detail:(BOOL)detail
+ (NSString *)container:(NSString *)userId tingFrame:(BOOL)detail
{
    //: NSString *state = @"";
    NSString *state = @"";
    //: if (![NTESSubscribeManager sharedManager] || [[NIMSDK sharedSDK].loginManager.currentAccount isEqualToString:userId])
    if (![FindManager value] || [[NIMSDK sharedSDK].loginManager.currentAccount isEqualToString:userId])
    {
        //没有开启订阅服务或是自己  不显示在线状态
        //: return state;
        return state;
    }

    //: NSDictionary *dict = [[NTESSubscribeManager sharedManager] eventsForType:NIMSubscribeSystemEventTypeOnline];
    NSDictionary *dict = [[FindManager value] noBreed:NIMSubscribeSystemEventTypeOnline];
    //: NIMSubscribeEvent *event = [dict objectForKey:userId];
    NIMSubscribeEvent *event = [dict objectForKey:userId];
    //: NIMSubscribeOnlineInfo *info = event.subscribeInfo;
    NIMSubscribeOnlineInfo *info = event.subscribeInfo;
    //: if ([info isKindOfClass:[NIMSubscribeOnlineInfo class]] && info.senderClientTypes.count)
    if ([info isKindOfClass:[NIMSubscribeOnlineInfo class]] && info.senderClientTypes.count)
    {
        //: NIMLoginClientType client = [self resolveShowClientType:info.senderClientTypes];
        NIMLoginClientType client = [self waterWashed:info.senderClientTypes];

        //: switch (event.value) {
        switch (event.value) {
            //: case NTESCustomStateValueOnlineExt:
            case NTESCustomStateValueOnlineExt:
            //: case NIMSubscribeEventOnlineValueLogin:
            case NIMSubscribeEventOnlineValueLogin:
            //: case NIMSubscribeEventOnlineValueLogout:
            case NIMSubscribeEventOnlineValueLogout:
            //: case NIMSubscribeEventOnlineValueDisconnected:
            case NIMSubscribeEventOnlineValueDisconnected:
            {
                //: NSString *ext = [event ext:client];
                NSString *ext = [event ext:client];
                //: state = [self resolveOnlineState:ext client:client detail:detail];
                state = [self fullPress:ext client:client viewDetail:detail];
            }
                //: break;
                break;

            //: default:
            default:
            {
                //: NSString *clientName = [self resolveOnlineClientName:client];
                NSString *clientName = [self matronymic:client];
                //: state = [NSString stringWithFormat:@"%@ %@", clientName, [BusyLanguageManager getTextWithKey:@"message_online"]];
                state = [NSString stringWithFormat:@"%@ %@", clientName, [SendName streetSmart:[[TelevisionData sharedInstance] mainEmphasizeRedStr]]];
                //: break;
                break;
            }
        }
    }
    //: else
    else
    {
        //: state = @"离线".ntes_localized;
        state = @"离线".untilNtes;
    }
    //: return state;
    return state;
}


//: + (NIMLoginClientType)resolveShowClientType:(NSArray *)senderClientTypes
+ (NIMLoginClientType)waterWashed:(NSArray *)senderClientTypes
{
    //: NSArray *clients = @[@(NIMLoginClientTypePC),@(NIMLoginClientTypemacOS),@(NIMLoginClientTypeiOS),@(NIMLoginClientTypeAOS),@(NIMLoginClientTypeWeb),@(NIMLoginClientTypeWP)]; 
    NSArray *clients = @[@(NIMLoginClientTypePC),@(NIMLoginClientTypemacOS),@(NIMLoginClientTypeiOS),@(NIMLoginClientTypeAOS),@(NIMLoginClientTypeWeb),@(NIMLoginClientTypeWP)]; //显示优先级
    //: for (NSNumber *type in clients) {
    for (NSNumber *type in clients) {
        //: NIMLoginClientType client = type.integerValue;
        NIMLoginClientType client = type.integerValue;
        //: if ([senderClientTypes containsObject:@(client)]) {
        if ([senderClientTypes containsObject:@(client)]) {
            //: return client;
            return client;
        }
    }
    //: return NIMLoginClientTypeUnknown;
    return NIMLoginClientTypeUnknown;
}

//: + (NSString *)resolveOnlineClientName:(NIMLoginClientType )client
+ (NSString *)matronymic:(NIMLoginClientType )client
{
    //: NSDictionary *formats = @{
    NSDictionary *formats = @{
                              //: @(NIMLoginClientTypePC) : @"PC",
                              @(NIMLoginClientTypePC) : @"PC",
                              //: @(NIMLoginClientTypemacOS) : @"Mac",
                              @(NIMLoginClientTypemacOS) : [[TelevisionData sharedInstance] app_chapterName],
                              //: @(NIMLoginClientTypeiOS): @"iOS",
                              @(NIMLoginClientTypeiOS): [[TelevisionData sharedInstance] appInkValue],
                              //: @(NIMLoginClientTypeAOS): @"Android",
                              @(NIMLoginClientTypeAOS): [[TelevisionData sharedInstance] main_listToolRecentId],
                              //: @(NIMLoginClientTypeWeb): @"Web",
                              @(NIMLoginClientTypeWeb): [[TelevisionData sharedInstance] main_cornerFullText],
                              //: @(NIMLoginClientTypeWP) : @"WP"
                              @(NIMLoginClientTypeWP) : @"WP"
                             //: };
                             };

    //: NSString *format = [formats objectForKey:@(client)];
    NSString *format = [formats objectForKey:@(client)];
    //: return format? format : @"";
    return format? format : @"";
}

//: + (NSString *)resolveOnlineState:(NSString *)ext client:(NIMLoginClientType)client detail:(BOOL)detail
+ (NSString *)fullPress:(NSString *)ext client:(NIMLoginClientType)client viewDetail:(BOOL)detail
{
    //: NSString *clientName = [self resolveOnlineClientName:client];
    NSString *clientName = [self matronymic:client];
    //: NSString *state = [NSString stringWithFormat:@"%@ %@",clientName,[BusyLanguageManager getTextWithKey:@"message_online"]];
    NSString *state = [NSString stringWithFormat:@"%@ %@",clientName,[SendName streetSmart:[[TelevisionData sharedInstance] mainEmphasizeRedStr]]];//@"在线".ntes_localized
    //: NSDictionary *dict = [ext nimkit_jsonDict];
    NSDictionary *dict = [ext dark];
    //: if (dict) {
    if (dict) {

        //: NSString *netState = [[NTESDevice currentDevice] networkStatus:[dict jsonInteger:NTESSubscribeNetState]];
        NSString *netState = [[SharedDataParent date] hideOption:[dict reply:notiTextTableValue]];
        //: NTESOnlineState onlineState = [dict jsonInteger:NTESSubscribeOnlineState];
        NTESOnlineState onlineState = [dict reply:user_pointSubMessage];
        //: switch (onlineState) {
        switch (onlineState) {
            //: case NTESOnlineStateNormal:
            case NTESOnlineStateNormal:
            {
                //: if (client == NIMLoginClientTypePC ||
                if (client == NIMLoginClientTypePC ||
                    //: client == NIMLoginClientTypeWeb ||
                    client == NIMLoginClientTypeWeb ||
                    //: client == NIMLoginClientTypemacOS)
                    client == NIMLoginClientTypemacOS)
                {
                    //桌面端不显示网络状态，只显示端
                    //: return [NSString stringWithFormat:@"%@ %@",clientName,[BusyLanguageManager getTextWithKey:@"message_online"]];
                    return [NSString stringWithFormat:@"%@ %@",clientName,[SendName streetSmart:[[TelevisionData sharedInstance] mainEmphasizeRedStr]]];//@"在线".ntes_localized
                }
                //: else
                else
                {
                    //移动端在会话列表显示网络状态，在会话内（detail）优先显示端+网络状态
                    //: if (detail)
                    if (detail)
                    {
                        //: return [NSString stringWithFormat:@"%@ - %@ %@",clientName,netState,[BusyLanguageManager getTextWithKey:@"message_online"]];
                        return [NSString stringWithFormat:@"%@ - %@ %@",clientName,netState,[SendName streetSmart:[[TelevisionData sharedInstance] mainEmphasizeRedStr]]];//@"在线".ntes_localized
                    }
                    //: else
                    else
                    {
                        //: return [NSString stringWithFormat:@"%@ %@",netState,[BusyLanguageManager getTextWithKey:@"message_online"]];
                        return [NSString stringWithFormat:@"%@ %@",netState,[SendName streetSmart:[[TelevisionData sharedInstance] mainEmphasizeRedStr]]];//@"在线".ntes_localized
                    }
                }
            }
            //: case NTESOnlineStateBusy:
            case NTESOnlineStateBusy:
                //: return [BusyLanguageManager getTextWithKey:@"online_state_event_manager_on_line_busy"];
                return [SendName streetSmart:[[TelevisionData sharedInstance] notiConsciousnessMessage]];//@"忙碌".ntes_localized;
            //: case NTESOnlineStateLeave:
            case NTESOnlineStateLeave:
                //: return [BusyLanguageManager getTextWithKey:@"online_state_event_manager_off_line"];
                return [SendName streetSmart:[[TelevisionData sharedInstance] showMessageEllData]];//@"离开".ntes_localized;
            //: default:
            default:
                //: break;
                break;
        }
    }
    //: return state;
    return state;
}

//: + (NSString *)formatAutoLoginMessage:(NSError *)error
+ (NSString *)cypher:(NSError *)error
{
    //: NSString *message = [NSString stringWithFormat:@"%@ %@",[BusyLanguageManager getTextWithKey:@"login_failure"], error];
    NSString *message = [NSString stringWithFormat:@"%@ %@",[SendName streetSmart:[[TelevisionData sharedInstance] m_popKey]], error];//,@"自动登录失败".ntes_localized
    //: NSString *domain = error.domain;
    NSString *domain = error.domain;
    //: NSInteger code = error.code;
    NSInteger code = error.code;
    //: if ([domain isEqualToString:NIMLocalErrorDomain])
    if ([domain isEqualToString:NIMLocalErrorDomain])
    {
        //: if (code == NIMLocalErrorCodeAutoLoginRetryLimit)
        if (code == NIMLocalErrorCodeAutoLoginRetryLimit)
        {
            //: message = [BusyLanguageManager getTextWithKey:@"please_try_again"];
            message = [SendName streetSmart:[[TelevisionData sharedInstance] appLetterName]];//@"自动登录错误次数超限，请检查网络后重试".ntes_localized;
        }
    }
    //: else if([domain isEqualToString:NIMRemoteErrorDomain])
    else if([domain isEqualToString:NIMRemoteErrorDomain])
    {
        //: if (code == NIMRemoteErrorCodeInvalidPass)
        if (code == NIMRemoteErrorCodeInvalidPass)
        {
            //: message = [BusyLanguageManager getTextWithKey:@"wrong_password"];
            message = [SendName streetSmart:[[TelevisionData sharedInstance] notiMemberValue]];//@"密码错误".ntes_localized;
        }
        //: else if(code == NIMRemoteErrorCodeExist)
        else if(code == NIMRemoteErrorCodeExist)
        {
            //: message = [BusyLanguageManager getTextWithKey:@"logged_another_device"];
            message = [SendName streetSmart:[[TelevisionData sharedInstance] m_viewPath]];//@"当前已经其他设备登录，请使用手动模式登录".ntes_localized;
        }
    }
    //: return message;
    return message;
}

//: @end
@end
