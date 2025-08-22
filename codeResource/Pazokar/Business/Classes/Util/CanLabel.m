
#import <Foundation/Foundation.h>

@interface ScapeData : NSObject

@end

@implementation ScapeData

+ (NSData *)ScapeDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)ScapeDataToCache:(Byte *)data {
    int preventionRegarding = data[0];
    Byte indicationTourist = data[1];
    int toolList = data[2];
    for (int i = toolList; i < toolList + preventionRegarding; i++) {
        int value = data[i] - indicationTourist;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[toolList + preventionRegarding] = 0;
    return data + toolList;
}

+ (NSString *)StringFromScapeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ScapeDataToCache:data]];
}

//: 向你发起了一个白板请求
+ (NSString *)dream_demonStr {
    /* static */ NSString *dream_demonStr = nil;
    if (!dream_demonStr) {
		NSArray<NSNumber *> *origin = @[@33, @46, @6, @134, @218, @240, @19, @190, @191, @18, @235, @206, @19, @189, @191, @22, @227, @229, @18, @232, @180, @18, @230, @174, @18, @230, @216, @21, @199, @235, @20, @203, @237, @22, @221, @229, @20, @223, @176, @161];
		NSData *data = [ScapeData ScapeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        dream_demonStr = [self StringFromScapeData:value];
    }
    return dream_demonStr;
}

//: message.wav
+ (NSString *)noti_inkValue {
    /* static */ NSString *noti_inkValue = nil;
    if (!noti_inkValue) {
		NSArray<NSNumber *> *origin = @[@11, @61, @3, @170, @162, @176, @176, @158, @164, @162, @107, @180, @158, @179, @209];
		NSData *data = [ScapeData ScapeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        noti_inkValue = [self StringFromScapeData:value];
    }
    return noti_inkValue;
}

//: 你收到了一个白板请求
+ (NSString *)showHockId {
    /* static */ NSString *showHockId = nil;
    if (!showHockId) {
		NSArray<NSNumber *> *origin = @[@30, @1, @7, @212, @42, @47, @160, @229, @190, @161, @231, @149, @183, @230, @137, @177, @229, @187, @135, @229, @185, @129, @229, @185, @171, @232, @154, @190, @231, @158, @192, @233, @176, @184, @231, @178, @131, @229];
		NSData *data = [ScapeData ScapeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showHockId = [self StringFromScapeData:value];
    }
    return showHockId;
}

//: content
+ (NSString *)showBeerValue {
    /* static */ NSString *showBeerValue = nil;
    if (!showBeerValue) {
		NSArray<NSNumber *> *origin = @[@7, @14, @9, @136, @98, @243, @177, @153, @75, @113, @125, @124, @130, @115, @124, @130, @18];
		NSData *data = [ScapeData ScapeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        showBeerValue = [self StringFromScapeData:value];
    }
    return showBeerValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CanLabel.m
//  NIM
//
//  Created by Xuhui on 15/3/25.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNotificationCenter.h"
#import "CanLabel.h"
//: #import "NTESMainTabController.h"
#import "LightGreenViewController.h"
//: #import "NTESSessionViewController.h"
#import "TopViewController.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Doing.h"
//: #import "NTESCustomNotificationDB.h"
#import "AppDb.h"
//: #import "NTESCustomNotificationObject.h"
#import "TopSortDate.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "NTESCustomSysNotificationSender.h"
#import "ChildShared.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "NTESSessionMsgConverter.h"
#import "PraiseConverter.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "NTESAVNotifier.h"
#import "PlayerData.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "Attachment.h"
//: #import "SSZipArchiveManager.h"
#import "ValuePraise.h"

//: NSString *userTapPath = @"userTapPath";
NSString *userTapPath = @"userTapPath";

//: @interface NTESNotificationCenter () <NIMSystemNotificationManagerDelegate,NIMChatManagerDelegate,NIMBroadcastManagerDelegate, NIMSignalManagerDelegate,NIMConversationManagerDelegate>
@interface CanLabel () <NIMSystemNotificationManagerDelegate,NIMChatManagerDelegate,NIMBroadcastManagerDelegate, NIMSignalManagerDelegate,NIMConversationManagerDelegate>

//: @property (nonatomic,strong) AVAudioPlayer *player; 
@property (nonatomic,strong) AVAudioPlayer *player; //播放提示音
//: @property (nonatomic,strong) NTESAVNotifier *notifier;
@property (nonatomic,strong) PlayerData *notifier;

//: @end
@end

//: @implementation NTESNotificationCenter
@implementation CanLabel

//: + (instancetype)sharedCenter
+ (instancetype)name
{
    //: static NTESNotificationCenter *instance = nil;
    static CanLabel *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[NTESNotificationCenter alloc] init];
        instance = [[CanLabel alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)start
- (void)labelCurrent
{
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if(self) {
    if(self) {
        //: NSString *voicePath = [[[SSZipArchiveManager sharedManager] getVoicePath] stringByAppendingPathComponent:[NSString stringWithFormat:@"message.wav"]];
        NSString *voicePath = [[[ValuePraise show] getWithPath] stringByAppendingPathComponent:[NSString stringWithFormat:[ScapeData noti_inkValue]]];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:voicePath]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:voicePath]) {
            //: NSURL *url = [NSURL fileURLWithPath:voicePath];
            NSURL *url = [NSURL fileURLWithPath:voicePath];
            //: _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
            _player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
        }
        //: _notifier = [[NTESAVNotifier alloc] init];
        _notifier = [[PlayerData alloc] init];

        //: [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        [[NIMSDK sharedSDK].systemNotificationManager addDelegate:self];
        //: [[NIMSDK sharedSDK].chatManager addDelegate:self];
        [[NIMSDK sharedSDK].chatManager addDelegate:self];
        //: [[NIMSDK sharedSDK].broadcastManager addDelegate:self];
        [[NIMSDK sharedSDK].broadcastManager addDelegate:self];

        //: [[NIMSDK sharedSDK].signalManager addDelegate:self];
        [[NIMSDK sharedSDK].signalManager addDelegate:self];
        //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
        [[NIMSDK sharedSDK].conversationManager addDelegate:self];

//        [[NERtcCallKit sharedInstance] addDelegate:self];
    }
    //: return self;
    return self;
}


//: - (void)dealloc{
- (void)dealloc{
    //: [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    [[NIMSDK sharedSDK].systemNotificationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].broadcastManager removeDelegate:self];
    [[NIMSDK sharedSDK].broadcastManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
}

//: #pragma mark - NIMConversationDelegate
#pragma mark - NIMConversationDelegate

//: - (void)didServerSessionUpdated:(NIMRecentSession *)recentSession {
- (void)didServerSessionUpdated:(NIMRecentSession *)recentSession {
    //: [[UIApplication sharedApplication].windows.firstObject.rootViewController.view makeToast:[NSString stringWithFormat:@"%@",recentSession.serverExt] duration:1 position:CSToastPositionCenter];
    [[UIApplication sharedApplication].windows.firstObject.rootViewController.view makeToast:[NSString stringWithFormat:@"%@",recentSession.serverExt] duration:1 position:CSToastPositionCenter];
}

//: #pragma mark - NIMChatManagerDelegate
#pragma mark - NIMChatManagerDelegate
//: - (void)onRecvMessages:(NSArray *)recvMessages
- (void)onRecvMessages:(NSArray *)recvMessages
{
    //: NSArray *messages = [self filterMessages:recvMessages];
    NSArray *messages = [self recordingMax:recvMessages];
    //: if (messages.count)
    if (messages.count)
    {
        //: static BOOL isPlaying = NO;
        static BOOL isPlaying = NO;
        //: if (isPlaying) {
        if (isPlaying) {
            //: return;
            return;
        }
        //: isPlaying = YES;
        isPlaying = YES;
        //: [self playMessageAudioTip];
        [self tapShow];
        //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: isPlaying = NO;
            isPlaying = NO;
        //: });
        });
        //: [self checkMessageAt:messages];
        [self outTing:messages];
    }
}

//: - (void)playMessageAudioTip
- (void)tapShow
{
    //: UINavigationController *nav = [NTESMainTabController instance].selectedViewController;
    UINavigationController *nav = [LightGreenViewController item].selectedViewController;
    //: BOOL needPlay = YES;
    BOOL needPlay = YES;
    //: for (UIViewController *vc in nav.viewControllers) {
    for (UIViewController *vc in nav.viewControllers) {
        //: if ([vc isKindOfClass:[BusySessionViewController class]])
        if ([vc isKindOfClass:[DirectionViewController class]])
        {
            //: needPlay = NO;
            needPlay = NO;
            //: break;
            break;
        }
    }
    //: if (needPlay) {
    if (needPlay) {
        //: [self.player stop];
        [self.player stop];
        //: [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryAmbient error:nil];
        [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryAmbient error:nil];
        //: [self.player play];
        [self.player play];
    }
}

//: - (void)checkMessageAt:(NSArray<NIMMessage *> *)messages
- (void)outTing:(NSArray<NIMMessage *> *)messages
{
    //一定是同个 session 的消息
    //: NIMSession *session = [messages.firstObject session];
    NIMSession *session = [messages.firstObject session];
    //: if ([self.currentSessionViewController.session isEqual:session])
    if ([self.comment.session isEqual:session])
    {
        //只有在@所属会话页外面才需要标记有人@你
        //: return;
        return;
    }

    //: NSString *me = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *me = [[NIMSDK sharedSDK].loginManager currentAccount];

    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: if ([message.apnsMemberOption.userIds containsObject:me]) {
        if ([message.apnsMemberOption.userIds containsObject:me]) {
            //: [NTESSessionUtil addRecentSessionMark:session type:NTESRecentSessionMarkTypeAt];
            [DeviceDate large:session range:NTESRecentSessionMarkTypeAt];
            //: return;
            return;
        }
    }
}


//: - (NSArray *)filterMessages:(NSArray *)messages
- (NSArray *)recordingMax:(NSArray *)messages
{
    //: NSMutableArray *array = [[NSMutableArray alloc] init];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: if ([self checkRedPacketTip:message] && ![self canSaveMessageRedPacketTip:message])
        if ([self completedBottom:message] && ![self success:message])
        {
            //: [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
            [[NIMSDK sharedSDK].conversationManager deleteMessage:message];
            //: [self.currentSessionViewController uiDeleteMessage:message];
            [self.comment analogDigitalConverter:message];
            //: continue;
            continue;
        }
        //: [array addObject:message];
        [array addObject:message];
    }
    //: return [NSArray arrayWithArray:array];
    return [NSArray arrayWithArray:array];
}


//: - (BOOL)checkRedPacketTip:(NIMMessage *)message
- (BOOL)completedBottom:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: if ([object isKindOfClass:[NIMCustomObject class]] && [object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    if ([object isKindOfClass:[NIMCustomObject class]] && [object.attachment isKindOfClass:[Attachment class]])
    {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

//: - (BOOL)canSaveMessageRedPacketTip:(NIMMessage *)message
- (BOOL)success:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: NTESRedPacketTipAttachment *attach = (NTESRedPacketTipAttachment *)object.attachment;
    Attachment *attach = (Attachment *)object.attachment;
    //: NSString *me = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *me = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: return [attach.sendPacketId isEqualToString:me] || [attach.openPacketId isEqualToString:me];
    return [attach.sendPacketId isEqualToString:me] || [attach.openPacketId isEqualToString:me];
}

//: - (void)onRecvRevokeMessageNotification:(NIMRevokeMessageNotification *)notification
- (void)onRecvRevokeMessageNotification:(NIMRevokeMessageNotification *)notification
{
    //撤回消息中收到的attach和callbackExt字段需要获取出来存放到message中去
    //: NIMMessage *tipMessage = [NTESSessionMsgConverter msgWithTip:[NTESSessionUtil tipOnMessageRevoked:notification]
    NIMMessage *tipMessage = [PraiseConverter vertical:[DeviceDate holder:notification]
                                                    //: revokeAttach:notification.attach
                                                    back:notification.attach
                                               //: revokeCallbackExt:notification.callbackExt];
                                               sight:notification.callbackExt];
    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.shouldBeCounted = NO;
    setting.shouldBeCounted = NO;
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: tipMessage.setting = setting;
    tipMessage.setting = setting;
    //: tipMessage.timestamp = notification.timestamp;
    tipMessage.timestamp = notification.timestamp;

    //: NTESMainTabController *tabVC = [NTESMainTabController instance];
    LightGreenViewController *tabVC = [LightGreenViewController item];
    //: UINavigationController *nav = tabVC.selectedViewController;
    UINavigationController *nav = tabVC.selectedViewController;

    //: for (NTESSessionViewController *vc in nav.viewControllers) {
    for (TopViewController *vc in nav.viewControllers) {
        //: if ([vc isKindOfClass:[NTESSessionViewController class]]
        if ([vc isKindOfClass:[TopViewController class]]
            //: && [vc.session.sessionId isEqualToString:notification.session.sessionId]) {
            && [vc.session.sessionId isEqualToString:notification.session.sessionId]) {
            //: BusyMessageModel *model = [vc uiDeleteMessage:notification.message];
            MoreModel *model = [vc analogDigitalConverter:notification.message];
            //: if (notification.notificationType == NIMRevokeMessageNotificationTypeP2POneWay ||
            if (notification.notificationType == NIMRevokeMessageNotificationTypeP2POneWay ||
                //: notification.notificationType == NIMRevokeMessageNotificationTypeTeamOneWay)
                notification.notificationType == NIMRevokeMessageNotificationTypeTeamOneWay)
            {
                //: break;
                break;
            }

            //: if (model) {
            if (model) {
                //[vc uiInsertMessages:@[tipMessage]];//撤回消息不显示
            }
            //: break;
            break;
        }
    }

    // saveMessage 方法执行成功后会触发 onRecvMessages: 回调，但是这个回调上来的 NIMMessage 时间为服务器时间，和界面上的时间有一定出入，所以要提前先在界面上插入一个和被删消息的界面时间相符的 Tip, 当触发 onRecvMessages: 回调时，组件判断这条消息已经被插入过了，就会忽略掉。
    //: if (notification.notificationType != NIMRevokeMessageNotificationTypeP2POneWay &&
    if (notification.notificationType != NIMRevokeMessageNotificationTypeP2POneWay &&
        //: notification.notificationType != NIMRevokeMessageNotificationTypeTeamOneWay)
        notification.notificationType != NIMRevokeMessageNotificationTypeTeamOneWay)
    {
        //: [[NIMSDK sharedSDK].conversationManager saveMessage:tipMessage
        [[NIMSDK sharedSDK].conversationManager saveMessage:tipMessage
                                                 //: forSession:notification.session
                                                 forSession:notification.session
                                                 //: completion:nil];
                                                 completion:nil];
    }

}

//: - (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts {
- (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts {

    //: NTESMainTabController *tabVC = [NTESMainTabController instance];
    LightGreenViewController *tabVC = [LightGreenViewController item];
    //: UINavigationController *nav = tabVC.selectedViewController;
    UINavigationController *nav = tabVC.selectedViewController;

    //: for (NTESSessionViewController *vc in nav.viewControllers) {
    for (TopViewController *vc in nav.viewControllers) {
        //: for (NIMMessage *message in messages) {
        for (NIMMessage *message in messages) {
            //: if ([vc isKindOfClass:[NTESSessionViewController class]]
            if ([vc isKindOfClass:[TopViewController class]]
                //: && [vc.session.sessionId isEqualToString:message.session.sessionId]) {
                && [vc.session.sessionId isEqualToString:message.session.sessionId]) {
                //: [vc uiDeleteMessage:message];
                [vc analogDigitalConverter:message];
            }
        }
    }
}


//: #pragma mark - NIMSystemNotificationManagerDelegate
#pragma mark - NIMSystemNotificationManagerDelegate
//: - (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification{
- (void)onReceiveCustomSystemNotification:(NIMCustomSystemNotification *)notification{

    //: NSString *content = notification.content;
    NSString *content = notification.content;
    //: NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data)
    if (data)
    {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: switch ([dict jsonInteger:@"id"]) {
            switch ([dict reply:@"id"]) {
                //: case (2):{
                case (2):{
                    //SDK并不会存储自定义的系统通知，需要上层结合业务逻辑考虑是否做存储。这里给出一个存储的例子。
                    //: NTESCustomNotificationObject *object = [[NTESCustomNotificationObject alloc] initWithNotification:notification];
                    TopSortDate *object = [[TopSortDate alloc] initWithStreetSmartNotification:notification];
                    //这里只负责存储可离线的自定义通知，推荐上层应用也这么处理，需要持久化的通知都走可离线通知
                    //: if (!notification.sendToOnlineUsersOnly) {
                    if (!notification.sendToOnlineUsersOnly) {
                        //: [[NTESCustomNotificationDB sharedInstance] saveNotification:object];
                        [[AppDb onCommon] viewText:object];
                    }
                    //: if (notification.setting.shouldBeCounted) {
                    if (notification.setting.shouldBeCounted) {
                        //: [[NSNotificationCenter defaultCenter] postNotificationName:userTapPath object:nil];
                        [[NSNotificationCenter defaultCenter] postNotificationName:userTapPath object:nil];
                    }
                    //: NSString *content = [dict jsonString:@"content"];
                    NSString *content = [dict withCord:[ScapeData showBeerValue]];
                    //: [self makeToast:content];
                    [self button:content];
                }
                    //: break;
                    break;
                //: case (3):{
                case (3):{

                }
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
        }
    }
}

//: #pragma mark - NIMNetCallManagerDelegate
#pragma mark - NIMNetCallManagerDelegate

//: - (void)onHangup:(UInt64)callID
- (void)button:(UInt64)callID
              //: by:(NSString *)user
              resolution:(NSString *)user
{
    //: [_notifier stop];
    [_notifier select];
}

//: - (void)onRTSRequest:(NSString *)sessionID
- (void)afterAllow:(NSString *)sessionID
                //: from:(NSString *)caller
                withShoot:(NSString *)caller
            //: services:(NSUInteger)types
            should:(NSUInteger)types
             //: message:(NSString *)info
             text:(NSString *)info
{


}


//: - (void)presentModelViewController:(UIViewController *)vc
- (void)totalImage:(UIViewController *)vc
{
    //: NTESMainTabController *tab = [NTESMainTabController instance];
    LightGreenViewController *tab = [LightGreenViewController item];
    //: [tab.view endEditing:YES];
    [tab.view endEditing:YES];
    //: if (tab.presentedViewController) {
    if (tab.presentedViewController) {
        //: __weak NTESMainTabController *wtabVC = tab;
        __weak LightGreenViewController *wtabVC = tab;
        //: [tab.presentedViewController dismissViewControllerAnimated:NO completion:^{
        [tab.presentedViewController dismissViewControllerAnimated:NO completion:^{
            //: [wtabVC presentViewController:vc animated:NO completion:nil];
            [wtabVC presentViewController:vc animated:NO completion:nil];
        //: }];
        }];
    //: }else{
    }else{
        //: [tab presentViewController:vc animated:NO completion:nil];
        [tab presentViewController:vc animated:NO completion:nil];
    }
}

//: - (void)onRTSTerminate:(NSString *)sessionID
- (void)robot:(NSString *)sessionID
                    //: by:(NSString *)user
                    place:(NSString *)user
{
    //: [_notifier stop];
    [_notifier select];
}



//: #pragma mark - NIMBroadcastManagerDelegate
#pragma mark - NIMBroadcastManagerDelegate
//: - (void)onReceiveBroadcastMessage:(NIMBroadcastMessage *)broadcastMessage
- (void)onReceiveBroadcastMessage:(NIMBroadcastMessage *)broadcastMessage
{
    //: [self makeToast:broadcastMessage.content];
    [self button:broadcastMessage.content];
}

//: #pragma mark - format
#pragma mark - format

//: - (NSString *)textByCaller:(NSString *)caller
- (NSString *)name:(NSString *)caller
{
    //: NSString *text = @"你收到了一个白板请求".ntes_localized;
    NSString *text = [ScapeData showHockId].untilNtes;
    //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:caller option:nil];
    Info *info = [[Case pastTop] consumer:caller message:nil];
    //: if ([info.showName length])
    if ([info.showName length])
    {
        //: text = [NSString stringWithFormat:@"%@%@",
        text = [NSString stringWithFormat:@"%@%@",
                //: info.showName,
                info.showName,
                //: @"向你发起了一个白板请求".ntes_localized];
                [ScapeData dream_demonStr].untilNtes];
    }
    //: return text;
    return text;
}

//: - (BOOL)shouldFireNotification:(NSString *)callerId
- (BOOL)producePresentation:(NSString *)callerId
{
    //退后台后 APP 存活，然后收到通知
    //: BOOL should = YES;
    BOOL should = YES;

    //消息不提醒
    //: id<NIMUserManager> userManager = [[NIMSDK sharedSDK] userManager];
    id<NIMUserManager> userManager = [[NIMSDK sharedSDK] userManager];
    //: if (![userManager notifyForNewMsg:callerId])
    if (![userManager notifyForNewMsg:callerId])
    {
        //: should = NO;
        should = NO;
    }

    //当前在正处于免打扰
    //: id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
    id<NIMApnsManager> apnsManager = [[NIMSDK sharedSDK] apnsManager];
    //: NIMPushNotificationSetting *setting = [apnsManager currentSetting];
    NIMPushNotificationSetting *setting = [apnsManager currentSetting];
    //: if (setting.noDisturbing)
    if (setting.noDisturbing)
    {
        //: NSDate *date = [NSDate date];
        NSDate *date = [NSDate date];
        //: NSCalendar *calendar = [NSCalendar currentCalendar];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        //: NSDateComponents *components = [calendar components:(NSCalendarUnitHour | NSCalendarUnitMinute) fromDate:date];
        NSDateComponents *components = [calendar components:(NSCalendarUnitHour | NSCalendarUnitMinute) fromDate:date];
        //: NSInteger now = components.hour * 60 + components.minute;
        NSInteger now = components.hour * 60 + components.minute;
        //: NSInteger start = setting.noDisturbingStartH * 60 + setting.noDisturbingStartM;
        NSInteger start = setting.noDisturbingStartH * 60 + setting.noDisturbingStartM;
        //: NSInteger end = setting.noDisturbingEndH * 60 + setting.noDisturbingEndM;
        NSInteger end = setting.noDisturbingEndH * 60 + setting.noDisturbingEndM;

        //当天区间
        //: if (end > start && end >= now && now >= start)
        if (end > start && end >= now && now >= start)
        {
            //: should = NO;
            should = NO;
        }
        //隔天区间
        //: else if(end < start && (now <= end || now >= start))
        else if(end < start && (now <= end || now >= start))
        {
            //: should = NO;
            should = NO;
        }
    }

    //: return should;
    return should;
}

//: - (BusySessionViewController *)currentSessionViewController
- (DirectionViewController *)comment
{
    //: UINavigationController *nav = [NTESMainTabController instance].selectedViewController;
    UINavigationController *nav = [LightGreenViewController item].selectedViewController;
    //: for (UIViewController *vc in nav.viewControllers)
    for (UIViewController *vc in nav.viewControllers)
    {
        //: if ([vc isKindOfClass:[BusySessionViewController class]])
        if ([vc isKindOfClass:[DirectionViewController class]])
        {
            //: return (BusySessionViewController *)vc;
            return (DirectionViewController *)vc;
        }
    }
    //: return nil;
    return nil;
}

//: - (void)makeToast:(NSString *)content
- (void)button:(NSString *)content
{
    //: [[NTESMainTabController instance].selectedViewController.view makeToast:content duration:2.0 position:CSToastPositionCenter];
    [[LightGreenViewController item].selectedViewController.view makeToast:content duration:2.0 position:CSToastPositionCenter];
}


//: @end
@end
