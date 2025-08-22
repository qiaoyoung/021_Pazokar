
#import <Foundation/Foundation.h>

@interface BeamData : NSObject

+ (instancetype)sharedInstance;

//: 群消息单向撤回
@property (nonatomic, copy) NSString *k_hockUrl;

//: 超大群消息撤回
@property (nonatomic, copy) NSString *user_weepKey;

//: 群消息撤回
@property (nonatomic, copy) NSString *m_penalEnemyId;

//: [系统通知][%@]
@property (nonatomic, copy) NSString *show_memberFormat;

//: 点对点消息单向撤回
@property (nonatomic, copy) NSString *mainChildPotentialMessage;

//: 点对点消息撤回
@property (nonatomic, copy) NSString *user_showMsg;

@end

@implementation BeamData

+ (instancetype)sharedInstance {
    static BeamData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)BeamDataToCache:(Byte *)data {
    int recommendCenter = data[0];
    Byte emphasizeChild = data[1];
    int commandPost = data[2];
    for (int i = commandPost; i < commandPost + recommendCenter; i++) {
        int value = data[i] - emphasizeChild;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[commandPost + recommendCenter] = 0;
    return data + commandPost;
}

- (NSString *)StringFromBeamData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BeamDataToCache:data]];
}

//: 点对点消息单向撤回
- (NSString *)mainChildPotentialMessage {
    if (!_mainChildPotentialMessage) {
        Byte value[] = {27, 80, 13, 28, 59, 35, 59, 198, 80, 146, 179, 236, 62, 55, 210, 9, 53, 255, 9, 55, 210, 9, 54, 6, 216, 54, 209, 255, 53, 221, 229, 53, 224, 225, 54, 226, 244, 53, 235, 238, 183};
        _mainChildPotentialMessage = [self StringFromBeamData:value];
    }
    return _mainChildPotentialMessage;
}

//: 群消息撤回
- (NSString *)m_penalEnemyId {
    if (!_m_penalEnemyId) {
        Byte value[] = {15, 48, 13, 176, 54, 183, 27, 56, 213, 98, 97, 80, 14, 23, 238, 212, 22, 230, 184, 22, 177, 223, 22, 194, 212, 21, 203, 206, 200};
        _m_penalEnemyId = [self StringFromBeamData:value];
    }
    return _m_penalEnemyId;
}

//: 超大群消息撤回
- (NSString *)user_weepKey {
    if (!_user_weepKey) {
        Byte value[] = {21, 85, 8, 221, 152, 9, 182, 77, 61, 11, 218, 58, 249, 252, 60, 19, 249, 59, 11, 221, 59, 214, 4, 59, 231, 249, 58, 240, 243, 107};
        _user_weepKey = [self StringFromBeamData:value];
    }
    return _user_weepKey;
}

//: 群消息单向撤回
- (NSString *)k_hockUrl {
    if (!_k_hockUrl) {
        Byte value[] = {21, 5, 4, 212, 236, 195, 169, 235, 187, 141, 235, 134, 180, 234, 146, 154, 234, 149, 150, 235, 151, 169, 234, 160, 163, 59};
        _k_hockUrl = [self StringFromBeamData:value];
    }
    return _k_hockUrl;
}

//: 点对点消息撤回
- (NSString *)user_showMsg {
    if (!_user_showMsg) {
        Byte value[] = {21, 43, 8, 81, 194, 24, 234, 170, 18, 173, 228, 16, 218, 228, 18, 173, 228, 17, 225, 179, 17, 172, 218, 17, 189, 207, 16, 198, 201, 160};
        _user_showMsg = [self StringFromBeamData:value];
    }
    return _user_showMsg;
}

//: [系统通知][%@]
- (NSString *)show_memberFormat {
    if (!_show_memberFormat) {
        Byte value[] = {18, 69, 6, 180, 162, 209, 160, 44, 248, 0, 44, 0, 228, 46, 197, 223, 44, 228, 234, 162, 160, 106, 133, 162, 203};
        _show_memberFormat = [self StringFromBeamData:value];
    }
    return _show_memberFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NoticationMessage.m
//  NIM
//
//  Created by Genning on 2020/8/27.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNoticationUtil.h"
#import "NoticationMessage.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @implementation NTESNoticationUtil
@implementation NoticationMessage

//: + (NSString *)revokeNoticationContent:(NIMRevokeMessageNotification *)note {
+ (NSString *)recent:(NIMRevokeMessageNotification *)note {
    //: NSMutableString *ret = [NSMutableString stringWithFormat:@"[系统通知][%@]".nim_localized,
    NSMutableString *ret = [NSMutableString stringWithFormat:[BeamData sharedInstance].show_memberFormat.maxColor,
                            //: [self revokeTypeContent:note.notificationType]];
                            [self telephoneMessage:note.notificationType]];
    //: return ret;
    return ret;
}

//: + (NSString *)revokeTypeContent:(NIMRevokeMessageNotificationType)type {
+ (NSString *)telephoneMessage:(NIMRevokeMessageNotificationType)type {
    //: NSString *ret = @"点对点消息撤回".nim_localized;
    NSString *ret = [BeamData sharedInstance].user_showMsg.maxColor;
    //: switch (type) {
    switch (type) {
        //: case NIMRevokeMessageNotificationTypeP2P:
        case NIMRevokeMessageNotificationTypeP2P:
        {
            //: ret = @"点对点消息撤回".nim_localized;
            ret = [BeamData sharedInstance].user_showMsg.maxColor;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeam:
        case NIMRevokeMessageNotificationTypeTeam:
        {
            //: ret = @"群消息撤回".nim_localized;
            ret = [BeamData sharedInstance].m_penalEnemyId.maxColor;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeSuperTeam:
        case NIMRevokeMessageNotificationTypeSuperTeam:
        {
            //: ret = @"超大群消息撤回".nim_localized;
            ret = [BeamData sharedInstance].user_weepKey.maxColor;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeP2POneWay:
        case NIMRevokeMessageNotificationTypeP2POneWay:
        {
            //: ret = @"点对点消息单向撤回".nim_localized;
            ret = [BeamData sharedInstance].mainChildPotentialMessage.maxColor;
            //: break;
            break;
        }
        //: case NIMRevokeMessageNotificationTypeTeamOneWay:
        case NIMRevokeMessageNotificationTypeTeamOneWay:
        {
            //: ret = @"群消息单向撤回".nim_localized;
            ret = [BeamData sharedInstance].k_hockUrl.maxColor;
            //: break;
            break;
        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return ret;
    return ret;
}

//: @end
@end