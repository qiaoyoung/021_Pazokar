
#import <Foundation/Foundation.h>

@interface PotatoData : NSObject

+ (instancetype)sharedInstance;

//: onTapMediaItemShoot:
@property (nonatomic, copy) NSString *mWeepValue;

//: bk_media_picture_pressed
@property (nonatomic, copy) NSString *noti_eatingId;

//: message_send_camera
@property (nonatomic, copy) NSString *app_enemyValue;

//: bk_media_position_normal
@property (nonatomic, copy) NSString *dreamDetectId;

//: message_please_enter_content
@property (nonatomic, copy) NSString *k_programmingUrl;

//: {11,15,9,9}
@property (nonatomic, copy) NSString *mainCitizenshipPath;

//: {3,8,3,3}
@property (nonatomic, copy) NSString *show_haoTitle;

//: onTapMediaItemLocation:
@property (nonatomic, copy) NSString *dream_messageIdent;

//: message_send_album
@property (nonatomic, copy) NSString *dreamFramePath;

//: icon_session_time_bg
@property (nonatomic, copy) NSString *app_drawingUrl;

//: bk_media_shoot_normal
@property (nonatomic, copy) NSString *mGateKey;

//: #333333
@property (nonatomic, copy) NSString *mGangName;

//: {9,15,9,9}
@property (nonatomic, copy) NSString *user_builderGateFormat;

//: {3,3,3,8}
@property (nonatomic, copy) NSString *app_neighborhoodStr;

//: {8,12,8,12}
@property (nonatomic, copy) NSString *dream_recentMsg;

//: onTapMenuItemCopy:
@property (nonatomic, copy) NSString *dreamSirIdent;

//: {10,10,10,10}
@property (nonatomic, copy) NSString *kHydraMessage;

//: {11,11,9,15}
@property (nonatomic, copy) NSString *showRedFormat;

//: {8,20,8,20}
@property (nonatomic, copy) NSString *notiNumbererviewIdent;

//: Audios
@property (nonatomic, copy) NSString *app_insteadStr;

//: bk_media_picture_normal
@property (nonatomic, copy) NSString *userVoiceKey;

//: {9,11,9,15}
@property (nonatomic, copy) NSString *kAggressiveUrl;

//: onTapMediaItemPicture:
@property (nonatomic, copy) NSString *m_ladUrl;

@end

@implementation PotatoData

+ (instancetype)sharedInstance {
    static PotatoData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PotatoDataToCache:(Byte *)data {
    int merit = data[0];
    Byte posseContemplateSpectacular = data[1];
    int piShow = data[2];
    for (int i = piShow; i < piShow + merit; i++) {
        int value = data[i] + posseContemplateSpectacular;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[piShow + merit] = 0;
    return data + piShow;
}

- (NSString *)StringFromPotatoData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PotatoDataToCache:data]];
}

//: bk_media_shoot_normal
- (NSString *)mGateKey {
    if (!_mGateKey) {
        Byte value[] = {21, 2, 4, 141, 96, 105, 93, 107, 99, 98, 103, 95, 93, 113, 102, 109, 109, 114, 93, 108, 109, 112, 107, 95, 106, 131};
        _mGateKey = [self StringFromPotatoData:value];
    }
    return _mGateKey;
}

//: {8,20,8,20}
- (NSString *)notiNumbererviewIdent {
    if (!_notiNumbererviewIdent) {
        Byte value[] = {11, 65, 3, 58, 247, 235, 241, 239, 235, 247, 235, 241, 239, 60, 71};
        _notiNumbererviewIdent = [self StringFromPotatoData:value];
    }
    return _notiNumbererviewIdent;
}

//: {3,3,3,8}
- (NSString *)app_neighborhoodStr {
    if (!_app_neighborhoodStr) {
        Byte value[] = {9, 67, 9, 215, 216, 55, 184, 180, 102, 56, 240, 233, 240, 233, 240, 233, 245, 58, 223};
        _app_neighborhoodStr = [self StringFromPotatoData:value];
    }
    return _app_neighborhoodStr;
}

//: {11,15,9,9}
- (NSString *)mainCitizenshipPath {
    if (!_mainCitizenshipPath) {
        Byte value[] = {11, 42, 3, 81, 7, 7, 2, 7, 11, 2, 15, 2, 15, 83, 209};
        _mainCitizenshipPath = [self StringFromPotatoData:value];
    }
    return _mainCitizenshipPath;
}

//: message_please_enter_content
- (NSString *)k_programmingUrl {
    if (!_k_programmingUrl) {
        Byte value[] = {28, 54, 7, 28, 92, 70, 68, 55, 47, 61, 61, 43, 49, 47, 41, 58, 54, 47, 43, 61, 47, 41, 47, 56, 62, 47, 60, 41, 45, 57, 56, 62, 47, 56, 62, 212};
        _k_programmingUrl = [self StringFromPotatoData:value];
    }
    return _k_programmingUrl;
}

//: {3,8,3,3}
- (NSString *)show_haoTitle {
    if (!_show_haoTitle) {
        Byte value[] = {9, 85, 5, 8, 190, 38, 222, 215, 227, 215, 222, 215, 222, 40, 142};
        _show_haoTitle = [self StringFromPotatoData:value];
    }
    return _show_haoTitle;
}

//: bk_media_picture_pressed
- (NSString *)noti_eatingId {
    if (!_noti_eatingId) {
        Byte value[] = {24, 58, 12, 234, 136, 98, 134, 83, 109, 1, 232, 140, 40, 49, 37, 51, 43, 42, 47, 39, 37, 54, 47, 41, 58, 59, 56, 43, 37, 54, 56, 43, 57, 57, 43, 42, 204};
        _noti_eatingId = [self StringFromPotatoData:value];
    }
    return _noti_eatingId;
}

//: onTapMediaItemPicture:
- (NSString *)m_ladUrl {
    if (!_m_ladUrl) {
        Byte value[] = {22, 43, 4, 168, 68, 67, 41, 54, 69, 34, 58, 57, 62, 54, 30, 73, 58, 66, 37, 62, 56, 73, 74, 71, 58, 15, 94};
        _m_ladUrl = [self StringFromPotatoData:value];
    }
    return _m_ladUrl;
}

//: message_send_album
- (NSString *)dreamFramePath {
    if (!_dreamFramePath) {
        Byte value[] = {18, 85, 9, 156, 88, 174, 138, 123, 246, 24, 16, 30, 30, 12, 18, 16, 10, 30, 16, 25, 15, 10, 12, 23, 13, 32, 24, 125};
        _dreamFramePath = [self StringFromPotatoData:value];
    }
    return _dreamFramePath;
}

//: {9,15,9,9}
- (NSString *)user_builderGateFormat {
    if (!_user_builderGateFormat) {
        Byte value[] = {10, 55, 10, 220, 157, 232, 248, 185, 1, 77, 68, 2, 245, 250, 254, 245, 2, 245, 2, 70, 168};
        _user_builderGateFormat = [self StringFromPotatoData:value];
    }
    return _user_builderGateFormat;
}

//: icon_session_time_bg
- (NSString *)app_drawingUrl {
    if (!_app_drawingUrl) {
        Byte value[] = {20, 39, 13, 227, 168, 106, 72, 238, 55, 157, 71, 163, 237, 66, 60, 72, 71, 56, 76, 62, 76, 76, 66, 72, 71, 56, 77, 66, 70, 62, 56, 59, 64, 111};
        _app_drawingUrl = [self StringFromPotatoData:value];
    }
    return _app_drawingUrl;
}

//: {10,10,10,10}
- (NSString *)kHydraMessage {
    if (!_kHydraMessage) {
        Byte value[] = {13, 77, 9, 64, 41, 19, 255, 155, 138, 46, 228, 227, 223, 228, 227, 223, 228, 227, 223, 228, 227, 48, 242};
        _kHydraMessage = [self StringFromPotatoData:value];
    }
    return _kHydraMessage;
}

//: bk_media_picture_normal
- (NSString *)userVoiceKey {
    if (!_userVoiceKey) {
        Byte value[] = {23, 26, 4, 84, 72, 81, 69, 83, 75, 74, 79, 71, 69, 86, 79, 73, 90, 91, 88, 75, 69, 84, 85, 88, 83, 71, 82, 4};
        _userVoiceKey = [self StringFromPotatoData:value];
    }
    return _userVoiceKey;
}

//: onTapMediaItemShoot:
- (NSString *)mWeepValue {
    if (!_mWeepValue) {
        Byte value[] = {20, 65, 11, 15, 184, 186, 32, 37, 128, 142, 247, 46, 45, 19, 32, 47, 12, 36, 35, 40, 32, 8, 51, 36, 44, 18, 39, 46, 46, 51, 249, 40};
        _mWeepValue = [self StringFromPotatoData:value];
    }
    return _mWeepValue;
}

//: #333333
- (NSString *)mGangName {
    if (!_mGangName) {
        Byte value[] = {7, 69, 12, 33, 76, 33, 79, 230, 80, 63, 105, 68, 222, 238, 238, 238, 238, 238, 238, 181};
        _mGangName = [self StringFromPotatoData:value];
    }
    return _mGangName;
}

//: onTapMenuItemCopy:
- (NSString *)dreamSirIdent {
    if (!_dreamSirIdent) {
        Byte value[] = {18, 31, 4, 165, 80, 79, 53, 66, 81, 46, 70, 79, 86, 42, 85, 70, 78, 36, 80, 81, 90, 27, 241};
        _dreamSirIdent = [self StringFromPotatoData:value];
    }
    return _dreamSirIdent;
}

//: {11,11,9,15}
- (NSString *)showRedFormat {
    if (!_showRedFormat) {
        Byte value[] = {12, 57, 4, 233, 66, 248, 248, 243, 248, 248, 243, 0, 243, 248, 252, 68, 200};
        _showRedFormat = [self StringFromPotatoData:value];
    }
    return _showRedFormat;
}

//: onTapMediaItemLocation:
- (NSString *)dream_messageIdent {
    if (!_dream_messageIdent) {
        Byte value[] = {23, 83, 6, 10, 92, 70, 28, 27, 1, 14, 29, 250, 18, 17, 22, 14, 246, 33, 18, 26, 249, 28, 16, 14, 33, 22, 28, 27, 231, 19};
        _dream_messageIdent = [self StringFromPotatoData:value];
    }
    return _dream_messageIdent;
}

//: {8,12,8,12}
- (NSString *)dream_recentMsg {
    if (!_dream_recentMsg) {
        Byte value[] = {11, 71, 3, 52, 241, 229, 234, 235, 229, 241, 229, 234, 235, 54, 17};
        _dream_recentMsg = [self StringFromPotatoData:value];
    }
    return _dream_recentMsg;
}

//: message_send_camera
- (NSString *)app_enemyValue {
    if (!_app_enemyValue) {
        Byte value[] = {19, 10, 5, 201, 53, 99, 91, 105, 105, 87, 93, 91, 85, 105, 91, 100, 90, 85, 89, 87, 99, 91, 104, 87, 125};
        _app_enemyValue = [self StringFromPotatoData:value];
    }
    return _app_enemyValue;
}

//: bk_media_position_normal
- (NSString *)dreamDetectId {
    if (!_dreamDetectId) {
        Byte value[] = {24, 29, 12, 119, 66, 13, 27, 81, 76, 227, 75, 172, 69, 78, 66, 80, 72, 71, 76, 68, 66, 83, 82, 86, 76, 87, 76, 82, 81, 66, 81, 82, 85, 80, 68, 79, 2};
        _dreamDetectId = [self StringFromPotatoData:value];
    }
    return _dreamDetectId;
}

//: Audios
- (NSString *)app_insteadStr {
    if (!_app_insteadStr) {
        Byte value[] = {6, 23, 4, 118, 42, 94, 77, 82, 88, 92, 228};
        _app_insteadStr = [self StringFromPotatoData:value];
    }
    return _app_insteadStr;
}

//: {9,11,9,15}
- (NSString *)kAggressiveUrl {
    if (!_kAggressiveUrl) {
        Byte value[] = {11, 26, 11, 247, 135, 64, 197, 63, 47, 152, 186, 97, 31, 18, 23, 23, 18, 31, 18, 23, 27, 99, 190};
        _kAggressiveUrl = [self StringFromPotatoData:value];
    }
    return _kAggressiveUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ChildSend.m
// Case
//
//  Created by chris on 2017/10/25.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyKitConfig.h"
#import "ChildSend.h"
//: #import "BusyGlobalMacro.h"
#import "BusyGlobalMacro.h"
//: #import "BusyMediaItem.h"
#import "ModelMessage.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "MyUserKit.h"
#import "Case.h"

//: @interface BusyKitSettings()
@interface ImageTitle()
{
    //: BOOL _isRight;
    BOOL _isRight;
}

//: - (instancetype)init:(BOOL)isRight;
- (instancetype)initCellView:(BOOL)isRight;

//: @end
@end


//: @implementation BusyKitConfig
@implementation ChildSend

//: - (instancetype) init
- (instancetype) init
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: [self applyDefaultSettings];
        [self input];
    }
    //: return self;
    return self;
}

//: - (NSArray *)defaultMediaItems
- (NSArray *)down
{
    //: return @[[BusyMediaItem item:@"onTapMediaItemPicture:"
    return @[[ModelMessage canSearched:[PotatoData sharedInstance].m_ladUrl
           //: normalImage:[UIImage imageNamed:@"bk_media_picture_normal"]
           drop:[UIImage imageNamed:[PotatoData sharedInstance].userVoiceKey]
         //: selectedImage:[UIImage imageNamed:@"bk_media_picture_normal"]
         statuteTitle:[UIImage imageNamed:[PotatoData sharedInstance].userVoiceKey]
                 //: title:[BusyLanguageManager getTextWithKey:@"message_send_album"]],//@"相册".
                 text:[SendName streetSmart:[PotatoData sharedInstance].dreamFramePath]],//@"相册".

    //: [BusyMediaItem item:@"onTapMediaItemShoot:"
    [ModelMessage canSearched:[PotatoData sharedInstance].mWeepValue
           //: normalImage:[UIImage imageNamed:@"bk_media_shoot_normal"]
           drop:[UIImage imageNamed:[PotatoData sharedInstance].mGateKey]
         //: selectedImage:[UIImage imageNamed:@"bk_media_shoot_normal"]
         statuteTitle:[UIImage imageNamed:[PotatoData sharedInstance].mGateKey]
                 //: title:[BusyLanguageManager getTextWithKey:@"message_send_camera"]],//@"拍摄".
                 text:[SendName streetSmart:[PotatoData sharedInstance].app_enemyValue]],//@"拍摄".

    //: [BusyMediaItem item:@"onTapMediaItemLocation:"
    [ModelMessage canSearched:[PotatoData sharedInstance].dream_messageIdent
           //: normalImage:[UIImage imageNamed:@"bk_media_position_normal"]
           drop:[UIImage imageNamed:[PotatoData sharedInstance].dreamDetectId]
         //: selectedImage:[UIImage imageNamed:@"bk_media_position_normal"]
         statuteTitle:[UIImage imageNamed:[PotatoData sharedInstance].dreamDetectId]
                 //: title:[BusyLanguageManager getTextWithKey:@"Audios"]],//@"位置".
                 text:[SendName streetSmart:[PotatoData sharedInstance].app_insteadStr]],//@"位置".

    //: ];
    ];
}

//: - (NSArray *)defaultMenuItemsWithMessage:(NIMMessage *)message
- (NSArray *)ting:(NIMMessage *)message
{
    //: NSMutableArray *menuItems = [NSMutableArray array];
    NSMutableArray *menuItems = [NSMutableArray array];
    //: if (message.messageType == NIMMessageTypeText)
    if (message.messageType == NIMMessageTypeText)
    {
        //: [menuItems addObject:[BusyMediaItem item:@"onTapMenuItemCopy:"
        [menuItems addObject:[ModelMessage canSearched:[PotatoData sharedInstance].dreamSirIdent
                                    //: normalImage:[UIImage imageNamed:@"bk_media_picture_normal"]
                                    drop:[UIImage imageNamed:[PotatoData sharedInstance].userVoiceKey]
                                  //: selectedImage:[UIImage imageNamed:@"bk_media_picture_pressed"]
                                  statuteTitle:[UIImage imageNamed:[PotatoData sharedInstance].noti_eatingId]
                                          //: title:[BusyLanguageManager getTextWithKey:@"复制"]]];
                                          text:[SendName streetSmart:@"复制"]]];
    }

//    ModelMessage *delItem = [ModelMessage item:@"onTapMenuItemDelete:"
//                                normalImage:[UIImage imageNamed:@"bk_media_shoot_normal"]
//                              selectedImage:[UIImage imageNamed:@"bk_media_shoot_pressed"]
//                                      title:@"删除".nim_localized];
//        
//    [menuItems addObject:delItem];
    //: return menuItems;
    return menuItems;
}

//: - (CGFloat)maxNotificationTipPadding{
- (CGFloat)dateText{
    //: return 20.f;
    return 20.f;
}


//: - (void)applyDefaultSettings
- (void)input
{
    //: _messageInterval = 300;
    _messageInterval = 300;
    //: _messageLimit = 20;
    _messageLimit = 20;
    //: _recordMaxDuration = 60.f;
    _recordMaxDuration = 60.f;
    //: _placeholder = [BusyLanguageManager getTextWithKey:@"message_please_enter_content"];
    _placeholder = [SendName streetSmart:[PotatoData sharedInstance].k_programmingUrl];//@"请输入消息".;
    //: _inputMaxLength = 1000;
    _inputMaxLength = 1000;
    //: _nickFont = [UIFont boldSystemFontOfSize:15];
    _nickFont = [UIFont boldSystemFontOfSize:15];
    //: _nickColor = [UIColor colorWithHexString:@"#333333"];
    _nickColor = [UIColor status:[PotatoData sharedInstance].mGangName];
    //: _receiptFont = [UIFont systemFontOfSize:13.0];
    _receiptFont = [UIFont systemFontOfSize:13.0];
    //: _receiptColor = [UIColor darkGrayColor];
    _receiptColor = [UIColor darkGrayColor];
    //: _avatarType = NIMKitAvatarTypeRounded;
    _avatarType = NIMKitAvatarTypeRounded;
    //: _cellBackgroundColor = [UIColor colorWithRed:((float)((0xE4E7EC & 0xFF0000) >> 16))/255.0 green:((float)((0xE4E7EC & 0x00FF00) >> 8))/255.0 blue:((float)(0xE4E7EC & 0x0000FF))/255.0 alpha:1.0];
    _cellBackgroundColor = [UIColor colorWithRed:((float)((0xE4E7EC & 0xFF0000) >> 16))/255.0 green:((float)((0xE4E7EC & 0x00FF00) >> 8))/255.0 blue:((float)(0xE4E7EC & 0x0000FF))/255.0 alpha:1.0];
    //: _leftBubbleSettings = [[BusyKitSettings alloc] init:NO];
    _leftBubbleSettings = [[ImageTitle alloc] initCellView:NO];
    //: _rightBubbleSettings = [[BusyKitSettings alloc] init:YES];
    _rightBubbleSettings = [[ImageTitle alloc] initCellView:YES];
}

//: - (BusyKitSetting *)setting:(NIMMessage *)message
- (GreenSetting *)tool:(NIMMessage *)message
{
    //: BusyKitSettings *settings = message.isOutgoingMsg? self.rightBubbleSettings : self.leftBubbleSettings;
    ImageTitle *settings = message.isOutgoingMsg? self.rightBubbleSettings : self.leftBubbleSettings;
    //: switch (message.messageType) {
    switch (message.messageType) {
        //: case NIMMessageTypeText:
        case NIMMessageTypeText:
            //: return settings.textSetting;
            return settings.textSetting;
        //: case NIMMessageTypeImage:
        case NIMMessageTypeImage:
            //: return settings.imageSetting;
            return settings.imageSetting;
        //: case NIMMessageTypeLocation:
        case NIMMessageTypeLocation:
            //: return settings.locationSetting;
            return settings.locationSetting;
        //: case NIMMessageTypeAudio:
        case NIMMessageTypeAudio:
            //: return settings.audioSetting;
            return settings.audioSetting;
        //: case NIMMessageTypeVideo:
        case NIMMessageTypeVideo:
            //: return settings.videoSetting;
            return settings.videoSetting;
        //: case NIMMessageTypeFile:
        case NIMMessageTypeFile:
            //: return settings.fileSetting;
            return settings.fileSetting;
        //: case NIMMessageTypeTip:
        case NIMMessageTypeTip:
            //: return settings.tipSetting;
            return settings.tipSetting;
        //: case NIMMessageTypeRtcCallRecord:
        case NIMMessageTypeRtcCallRecord:
            //: return settings.rtcCallRecordSetting;
            return settings.rtcCallRecordSetting;
        //: case NIMMessageTypeNotification:
        case NIMMessageTypeNotification:
        {
            //: NIMNotificationObject *object = (NIMNotificationObject *)message.messageObject;
            NIMNotificationObject *object = (NIMNotificationObject *)message.messageObject;
            //: switch (object.notificationType)
            switch (object.notificationType)
            {
                //: case NIMNotificationTypeTeam:
                case NIMNotificationTypeTeam:
                    //: return settings.teamNotificationSetting;
                    return settings.teamNotificationSetting;
                //: case NIMNotificationTypeSuperTeam:
                case NIMNotificationTypeSuperTeam:
                    //: return settings.superTeamNotificationSetting;
                    return settings.superTeamNotificationSetting;
                //: case NIMNotificationTypeChatroom:
                case NIMNotificationTypeChatroom:
                    //: return settings.chatroomNotificationSetting;
                    return settings.chatroomNotificationSetting;
                //: case NIMNotificationTypeNetCall:
                case NIMNotificationTypeNetCall:
                    //: return settings.netcallNotificationSetting;
                    return settings.netcallNotificationSetting;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return settings.unsupportSetting;
    return settings.unsupportSetting;
}

//: - (BusyKitSetting *)repliedSetting:(NIMMessage *)message
- (GreenSetting *)system:(NIMMessage *)message
{
    //: BusyKitSettings *settings = message.isOutgoingMsg? self.rightBubbleSettings : self.leftBubbleSettings;
    ImageTitle *settings = message.isOutgoingMsg? self.rightBubbleSettings : self.leftBubbleSettings;
    //: return settings.repliedSetting;
    return settings.repliedSetting;
}

//: @end
@end


//: @implementation BusyKitSettings
@implementation ImageTitle

//: - (instancetype)init:(BOOL)isRight
- (instancetype)initCellView:(BOOL)isRight
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _isRight = isRight;
        _isRight = isRight;
        //: [self applyDefaultSettings];
        [self red];
    }
    //: return self;
    return self;
}

//: - (void)applyDefaultSettings
- (void)red
{
    //: [self applyDefaultTextSettings];
    [self utilisation];
    //: [self applyDefaultAudioSettings];
    [self info];
    //: [self applyDefaultVideoSettings];
    [self table];
    //: [self applyDefaultFileSettings];
    [self recent];
    //: [self applyDefaultImageSettings];
    [self compartment];
    //: [self applyDefaultLocationSettings];
    [self session];
    //: [self applyDefaultTipSettings];
    [self with];
    //: [self applyDefaultUnsupportSettings];
    [self onImage];
    //: [self applyDefaultTeamNotificationSettings];
    [self message];
    //: [self applyDefaultSuperTeamNotificationSettings];
    [self originName];
    //: [self applyDefaultChatroomNotificationSettings];
    [self completeAllow];
    //: [self applyDefaultNetcallNotificationSettings];
    [self withInput];
    //: [self applyDefaultRepliedSettings];
    [self practice];
    //: [self applyDefaultRtcCallRecordSettings];
    [self display];
}

//: - (void)applyDefaultRepliedSettings
- (void)practice
{
    //: _repliedSetting = [[BusyKitSetting alloc] init];
    _repliedSetting = [[GreenSetting alloc] init];
    //: _repliedSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{8,12,8,12}") : UIEdgeInsetsFromString(@"{8,12,8,12}");
    _repliedSetting.contentInsets = _isRight? UIEdgeInsetsFromString([PotatoData sharedInstance].dream_recentMsg) : UIEdgeInsetsFromString([PotatoData sharedInstance].dream_recentMsg);
    //: _repliedSetting.replyedTextColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];;
    _repliedSetting.replyedTextColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];;
    //: _repliedSetting.replyedFont = [UIFont systemFontOfSize:14];
    _repliedSetting.replyedFont = [UIFont systemFontOfSize:14];
    //: _repliedSetting.showAvatar = YES;
    _repliedSetting.showAvatar = YES;
}

//: - (void)applyDefaultTextSettings
- (void)utilisation
{
    //: _textSetting = [[BusyKitSetting alloc] init:_isRight];
    _textSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _textSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{8,12,8,12}") : UIEdgeInsetsFromString(@"{8,12,8,12}");
    _textSetting.contentInsets = _isRight? UIEdgeInsetsFromString([PotatoData sharedInstance].dream_recentMsg) : UIEdgeInsetsFromString([PotatoData sharedInstance].dream_recentMsg);
    //: _textSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _textSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _textSetting.font = [UIFont systemFontOfSize:16];
    _textSetting.font = [UIFont systemFontOfSize:16];
    //: _textSetting.showAvatar = YES;
    _textSetting.showAvatar = YES;
}

//: - (void)applyDefaultAudioSettings
- (void)info
{
    //: _audioSetting = [[BusyKitSetting alloc] init:_isRight];
    _audioSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _audioSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{8,12,8,12}") : UIEdgeInsetsFromString(@"{8,12,8,12}");
    _audioSetting.contentInsets = _isRight? UIEdgeInsetsFromString([PotatoData sharedInstance].dream_recentMsg) : UIEdgeInsetsFromString([PotatoData sharedInstance].dream_recentMsg);
    //: _audioSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _audioSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _audioSetting.font = [UIFont systemFontOfSize:16];
    _audioSetting.font = [UIFont systemFontOfSize:16];
    //: _audioSetting.showAvatar = YES;
    _audioSetting.showAvatar = YES;
}

//: - (void)applyDefaultVideoSettings
- (void)table
{
    //: _videoSetting = [[BusyKitSetting alloc] init:_isRight];
    _videoSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _videoSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{3,3,3,8}") : UIEdgeInsetsFromString(@"{3,8,3,3}");
    _videoSetting.contentInsets = _isRight? UIEdgeInsetsFromString([PotatoData sharedInstance].app_neighborhoodStr) : UIEdgeInsetsFromString([PotatoData sharedInstance].show_haoTitle);
    //: _videoSetting.font = [UIFont systemFontOfSize:16];
    _videoSetting.font = [UIFont systemFontOfSize:16];
    //: _videoSetting.showAvatar = YES;
    _videoSetting.showAvatar = YES;
}

//: - (void)applyDefaultFileSettings
- (void)recent
{
    //: _fileSetting = [[BusyKitSetting alloc] init:_isRight];
    _fileSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _fileSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{3,3,3,8}") : UIEdgeInsetsFromString(@"{3,8,3,3}");
    _fileSetting.contentInsets = _isRight? UIEdgeInsetsFromString([PotatoData sharedInstance].app_neighborhoodStr) : UIEdgeInsetsFromString([PotatoData sharedInstance].show_haoTitle);
    //: _fileSetting.font = [UIFont systemFontOfSize:16];
    _fileSetting.font = [UIFont systemFontOfSize:16];
    //: _fileSetting.showAvatar = YES;
    _fileSetting.showAvatar = YES;
}

//: - (void)applyDefaultImageSettings
- (void)compartment
{
    //: _imageSetting = [[BusyKitSetting alloc] init:_isRight];
    _imageSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _imageSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{3,3,3,8}") : UIEdgeInsetsFromString(@"{3,8,3,3}");
    _imageSetting.contentInsets = _isRight? UIEdgeInsetsFromString([PotatoData sharedInstance].app_neighborhoodStr) : UIEdgeInsetsFromString([PotatoData sharedInstance].show_haoTitle);
    //: _imageSetting.showAvatar = YES;
    _imageSetting.showAvatar = YES;
}

//: - (void)applyDefaultLocationSettings
- (void)session
{
    //: _locationSetting = [[BusyKitSetting alloc] init:_isRight];
    _locationSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _locationSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{3,3,3,8}") : UIEdgeInsetsFromString(@"{3,8,3,3}");
    _locationSetting.contentInsets = _isRight? UIEdgeInsetsFromString([PotatoData sharedInstance].app_neighborhoodStr) : UIEdgeInsetsFromString([PotatoData sharedInstance].show_haoTitle);
    //: _locationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _locationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _locationSetting.font = [UIFont systemFontOfSize:12];
    _locationSetting.font = [UIFont systemFontOfSize:12];
    //: _locationSetting.showAvatar = YES;
    _locationSetting.showAvatar = YES;
}

//: - (void)applyDefaultTipSettings
- (void)with
{
    //: _tipSetting = [[BusyKitSetting alloc] init:_isRight];
    _tipSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _tipSetting.contentInsets = UIEdgeInsetsZero;
    _tipSetting.contentInsets = UIEdgeInsetsZero;
    //: _tipSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _tipSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _tipSetting.font = [UIFont systemFontOfSize:12.f];
    _tipSetting.font = [UIFont systemFontOfSize:12.f];
    //: _tipSetting.showAvatar = NO;
    _tipSetting.showAvatar = NO;
    //: UIImage *backgroundImage = [[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{8,20,8,20}") resizingMode:UIImageResizingModeStretch];;
    UIImage *backgroundImage = [[UIImage imageNamed:[PotatoData sharedInstance].app_drawingUrl] resizableImageWithCapInsets:UIEdgeInsetsFromString([PotatoData sharedInstance].notiNumbererviewIdent) resizingMode:UIImageResizingModeStretch];;
    //: _tipSetting.normalBackgroundImage = backgroundImage;
    _tipSetting.normalBackgroundImage = backgroundImage;
    //: _tipSetting.highLightBackgroundImage = backgroundImage;
    _tipSetting.highLightBackgroundImage = backgroundImage;
}

//: - (void)applyDefaultRtcCallRecordSettings
- (void)display
{
    //: _rtcCallRecordSetting = [[BusyKitSetting alloc] init:_isRight];
    _rtcCallRecordSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _rtcCallRecordSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{9,11,9,15}") : UIEdgeInsetsFromString(@"{9,15,9,9}");
    _rtcCallRecordSetting.contentInsets = _isRight? UIEdgeInsetsFromString([PotatoData sharedInstance].kAggressiveUrl) : UIEdgeInsetsFromString([PotatoData sharedInstance].user_builderGateFormat);
    //: _rtcCallRecordSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _rtcCallRecordSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _rtcCallRecordSetting.font = [UIFont systemFontOfSize:16];
    _rtcCallRecordSetting.font = [UIFont systemFontOfSize:16];
    //: _rtcCallRecordSetting.showAvatar = YES;
    _rtcCallRecordSetting.showAvatar = YES;
}


//: - (void)applyDefaultUnsupportSettings
- (void)onImage
{
    //: _unsupportSetting = [[BusyKitSetting alloc] init:_isRight];
    _unsupportSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _unsupportSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{10,10,10,10}") : UIEdgeInsetsFromString(@"{10,10,10,10}");
    _unsupportSetting.contentInsets = _isRight? UIEdgeInsetsFromString([PotatoData sharedInstance].kHydraMessage) : UIEdgeInsetsFromString([PotatoData sharedInstance].kHydraMessage);
    //: _unsupportSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _unsupportSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _unsupportSetting.font = [UIFont systemFontOfSize:16];
    _unsupportSetting.font = [UIFont systemFontOfSize:16];
    //: _unsupportSetting.showAvatar = YES;
    _unsupportSetting.showAvatar = YES;
}


//: - (void)applyDefaultTeamNotificationSettings
- (void)message
{
    //: _teamNotificationSetting = [[BusyKitSetting alloc] init:_isRight];
    _teamNotificationSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _teamNotificationSetting.contentInsets = UIEdgeInsetsZero;
    _teamNotificationSetting.contentInsets = UIEdgeInsetsZero;
    //: _teamNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _teamNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _teamNotificationSetting.font = [UIFont systemFontOfSize:10];
    _teamNotificationSetting.font = [UIFont systemFontOfSize:10];
    //: _teamNotificationSetting.showAvatar = NO;
    _teamNotificationSetting.showAvatar = NO;
    //: UIImage *backgroundImage = [[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{8,20,8,20}") resizingMode:UIImageResizingModeStretch];
    UIImage *backgroundImage = [[UIImage imageNamed:[PotatoData sharedInstance].app_drawingUrl] resizableImageWithCapInsets:UIEdgeInsetsFromString([PotatoData sharedInstance].notiNumbererviewIdent) resizingMode:UIImageResizingModeStretch];
    //: _teamNotificationSetting.normalBackgroundImage = backgroundImage;
    _teamNotificationSetting.normalBackgroundImage = backgroundImage;
    //: _teamNotificationSetting.highLightBackgroundImage = backgroundImage;
    _teamNotificationSetting.highLightBackgroundImage = backgroundImage;
}

//: - (void)applyDefaultSuperTeamNotificationSettings
- (void)originName
{
    //: _superTeamNotificationSetting = [[BusyKitSetting alloc] init:_isRight];
    _superTeamNotificationSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _superTeamNotificationSetting.contentInsets = UIEdgeInsetsZero;
    _superTeamNotificationSetting.contentInsets = UIEdgeInsetsZero;
    //: _superTeamNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _superTeamNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _superTeamNotificationSetting.font = [UIFont systemFontOfSize:10];
    _superTeamNotificationSetting.font = [UIFont systemFontOfSize:10];
    //: _superTeamNotificationSetting.showAvatar = NO;
    _superTeamNotificationSetting.showAvatar = NO;
    //: UIImage *backgroundImage = [[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{8,20,8,20}") resizingMode:UIImageResizingModeStretch];
    UIImage *backgroundImage = [[UIImage imageNamed:[PotatoData sharedInstance].app_drawingUrl] resizableImageWithCapInsets:UIEdgeInsetsFromString([PotatoData sharedInstance].notiNumbererviewIdent) resizingMode:UIImageResizingModeStretch];
    //: _superTeamNotificationSetting.normalBackgroundImage = backgroundImage;
    _superTeamNotificationSetting.normalBackgroundImage = backgroundImage;
    //: _superTeamNotificationSetting.highLightBackgroundImage = backgroundImage;
    _superTeamNotificationSetting.highLightBackgroundImage = backgroundImage;
}

//: - (void)applyDefaultChatroomNotificationSettings
- (void)completeAllow
{
    //: _chatroomNotificationSetting = [[BusyKitSetting alloc] init:_isRight];
    _chatroomNotificationSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _chatroomNotificationSetting.contentInsets = UIEdgeInsetsZero;
    _chatroomNotificationSetting.contentInsets = UIEdgeInsetsZero;
    //: _chatroomNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _chatroomNotificationSetting.textColor = [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _chatroomNotificationSetting.font = [UIFont systemFontOfSize:10];
    _chatroomNotificationSetting.font = [UIFont systemFontOfSize:10];
    //: _chatroomNotificationSetting.showAvatar = NO;
    _chatroomNotificationSetting.showAvatar = NO;
    //: UIImage *backgroundImage = [[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{8,20,8,20}") resizingMode:UIImageResizingModeStretch];
    UIImage *backgroundImage = [[UIImage imageNamed:[PotatoData sharedInstance].app_drawingUrl] resizableImageWithCapInsets:UIEdgeInsetsFromString([PotatoData sharedInstance].notiNumbererviewIdent) resizingMode:UIImageResizingModeStretch];
    //: _chatroomNotificationSetting.normalBackgroundImage = backgroundImage;
    _chatroomNotificationSetting.normalBackgroundImage = backgroundImage;
    //: _chatroomNotificationSetting.highLightBackgroundImage = backgroundImage;
    _chatroomNotificationSetting.highLightBackgroundImage = backgroundImage;
}

//: - (void)applyDefaultNetcallNotificationSettings
- (void)withInput
{
    //: _netcallNotificationSetting = [[BusyKitSetting alloc] init:_isRight];
    _netcallNotificationSetting = [[GreenSetting alloc] initLieAccount:_isRight];
    //: _netcallNotificationSetting.contentInsets = _isRight? UIEdgeInsetsFromString(@"{11,11,9,15}") : UIEdgeInsetsFromString(@"{11,15,9,9}");
    _netcallNotificationSetting.contentInsets = _isRight? UIEdgeInsetsFromString([PotatoData sharedInstance].showRedFormat) : UIEdgeInsetsFromString([PotatoData sharedInstance].mainCitizenshipPath);
    //: _netcallNotificationSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    _netcallNotificationSetting.textColor = _isRight? [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0] : [UIColor colorWithRed:((float)((0x333333 & 0xFF0000) >> 16))/255.0 green:((float)((0x333333 & 0x00FF00) >> 8))/255.0 blue:((float)(0x333333 & 0x0000FF))/255.0 alpha:1.0];
    //: _netcallNotificationSetting.font = [UIFont systemFontOfSize:16];
    _netcallNotificationSetting.font = [UIFont systemFontOfSize:16];
    //: _netcallNotificationSetting.showAvatar = YES;
    _netcallNotificationSetting.showAvatar = YES;
}


//: @end
@end
