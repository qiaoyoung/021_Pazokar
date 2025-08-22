
#import <Foundation/Foundation.h>

@interface PerceiveData : NSObject

+ (instancetype)sharedInstance;

//: type
@property (nonatomic, copy) NSString *user_showId;

//: chatroom_role_master
@property (nonatomic, copy) NSString *main_numberStr;

//: NTESMessageRefusedTag
@property (nonatomic, copy) NSString *mainIdealTitle;

//: chatroom_role_manager
@property (nonatomic, copy) NSString *noti_oofUrl;

@end

@implementation PerceiveData

+ (instancetype)sharedInstance {
    static PerceiveData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PerceiveDataToCache:(Byte *)data {
    int adequate = data[0];
    Byte geologicalFormation = data[1];
    int reEmphasise = data[2];
    for (int i = reEmphasise; i < reEmphasise + adequate; i++) {
        int value = data[i] - geologicalFormation;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[reEmphasise + adequate] = 0;
    return data + reEmphasise;
}

- (NSString *)StringFromPerceiveData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PerceiveDataToCache:data]];
}

//: NTESMessageRefusedTag
- (NSString *)mainIdealTitle {
    if (!_mainIdealTitle) {
        Byte value[] = {21, 53, 8, 142, 232, 105, 250, 50, 131, 137, 122, 136, 130, 154, 168, 168, 150, 156, 154, 135, 154, 155, 170, 168, 154, 153, 137, 150, 156, 10};
        _mainIdealTitle = [self StringFromPerceiveData:value];
    }
    return _mainIdealTitle;
}

//: type
- (NSString *)user_showId {
    if (!_user_showId) {
        Byte value[] = {4, 62, 11, 64, 134, 203, 104, 2, 42, 62, 172, 178, 183, 174, 163, 83};
        _user_showId = [self StringFromPerceiveData:value];
    }
    return _user_showId;
}

//: chatroom_role_manager
- (NSString *)noti_oofUrl {
    if (!_noti_oofUrl) {
        Byte value[] = {21, 69, 7, 150, 114, 127, 228, 168, 173, 166, 185, 183, 180, 180, 178, 164, 183, 180, 177, 170, 164, 178, 166, 179, 166, 172, 170, 183, 46};
        _noti_oofUrl = [self StringFromPerceiveData:value];
    }
    return _noti_oofUrl;
}

//: chatroom_role_master
- (NSString *)main_numberStr {
    if (!_main_numberStr) {
        Byte value[] = {20, 21, 8, 35, 170, 26, 101, 159, 120, 125, 118, 137, 135, 132, 132, 130, 116, 135, 132, 129, 122, 116, 130, 118, 136, 137, 122, 135, 16};
        _main_numberStr = [self StringFromPerceiveData:value];
    }
    return _main_numberStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ScaleOfMeasurementLayoutConfig.m
//  NIM
//
//  Created by amao on 2016/11/22.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCellLayoutConfig.h"
#import "ScaleOfMeasurementLayoutConfig.h"
//: #import "NTESSessionCustomContentConfig.h"
#import "SkimOverConfig.h"
//: #import "NTESChatroomTextContentConfig.h"
#import "BuildCan.h"
//: #import "NTESWhiteboardAttachment.h"
#import "TagAttachment.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "Attachment.h"

//: @interface NTESCellLayoutConfig ()
@interface ScaleOfMeasurementLayoutConfig ()
//: @property (nonatomic,strong) NSArray *types;
@property (nonatomic,strong) NSArray *types;
//: @property (nonatomic,strong) NTESSessionCustomContentConfig *sessionCustomconfig;
@property (nonatomic,strong) SkimOverConfig *sessionCustomconfig;
//: @property (nonatomic,strong) NTESChatroomTextContentConfig *chatroomTextConfig;
@property (nonatomic,strong) BuildCan *chatroomTextConfig;
//: @end
@end

//: @implementation NTESCellLayoutConfig
@implementation ScaleOfMeasurementLayoutConfig

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _types = @[
        _types = @[
                   //: @"NTESJanKenPonAttachment",
                   @"MyAttachment",
                   //: @"NTESSnapchatAttachment",
                   @"MediaAttachment",
                   //: @"NTESWhiteboardAttachment",
                   @"TagAttachment",
                   //: @"NTESRedPacketAttachment",
                   @"BubbleTitleLabel",
                   //: @"NTESRedPacketTipAttachment",
                   @"Attachment",
                   //: @"NTESMultiRetweetAttachment",
                   @"ModelText",
                   //: @"NTESShareCardAttachment"
                   @"WithChild"
                   //: ];
                   ];
        //: _sessionCustomconfig = [[NTESSessionCustomContentConfig alloc] init];
        _sessionCustomconfig = [[SkimOverConfig alloc] init];
        //: _chatroomTextConfig = [[NTESChatroomTextContentConfig alloc] init];
        _chatroomTextConfig = [[BuildCan alloc] init];
    }
    //: return self;
    return self;
}
//: #pragma mark - FFFCellLayoutConfig
#pragma mark - ParentMargin
//: - (CGSize)contentSize:(FFFMessageModel *)model cellWidth:(CGFloat)width{
- (CGSize)big:(MoreModel *)model meanSolarDay:(CGFloat)width{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message])
    if ([self referContext:message])
    {
        //: return [_sessionCustomconfig contentSize:width message:message];
        return [_sessionCustomconfig read:width quantity:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message])
    if ([self voice:message])
    {
        //: return [_chatroomTextConfig contentSize:width message:message];
        return [_chatroomTextConfig read:width quantity:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentSize:model
    return [super big:model
                    //: cellWidth:width];
                    meanSolarDay:width];

}

//: - (NSString *)cellContent:(FFFMessageModel *)model{
- (NSString *)flushCell:(MoreModel *)model{

    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self referContext:message]) {
        //: return [_sessionCustomconfig cellContent:message];
        return [_sessionCustomconfig picture:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self voice:message]) {
        //: return [_chatroomTextConfig cellContent:message];
        return [_chatroomTextConfig picture:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellContent:model];
    return [super flushCell:model];
}

//: - (UIEdgeInsets)contentViewInsets:(FFFMessageModel *)model
- (UIEdgeInsets)skip:(MoreModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //检查是不是当前支持的自定义消息类型
    //: if ([self isSupportedCustomMessage:message]) {
    if ([self referContext:message]) {
        //: return [_sessionCustomconfig contentViewInsets:message];
        return [_sessionCustomconfig cut:message];
    }

    //检查是不是聊天室文本消息
    //: if ([self isChatroomTextMessage:message]) {
    if ([self voice:message]) {
        //: return [_chatroomTextConfig contentViewInsets:message];
        return [_chatroomTextConfig cut:message];
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super contentViewInsets:model];
    return [super skip:model];
}

//: - (UIEdgeInsets)cellInsets:(FFFMessageModel *)model
- (UIEdgeInsets)keeping:(MoreModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;

    //检查是不是聊天室消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: return UIEdgeInsetsZero;
        return UIEdgeInsetsZero;
    }

    //如果没有特殊需求，就走默认处理流程
    //: return [super cellInsets:model];
    return [super keeping:model];
}




//: - (BOOL)shouldShowAvatar:(FFFMessageModel *)model
- (BOOL)team:(MoreModel *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self latissimusDorsi:model.message]) {
        //: return NO;
        return NO;
    }
    //: if ([self isWhiteboardCloseNotificationMessage:model.message]){
    if ([self input:model.message]){
        //: return NO;
        return NO;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self quickShow:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowAvatar:model];
    return [super team:model];
}

//: - (BOOL)shouldShowLeft:(FFFMessageModel *)model{
- (BOOL)model:(MoreModel *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self latissimusDorsi:model.message]) {
        //: return YES;
        return YES;
    }
    //: return [super shouldShowLeft:model];
    return [super model:model];
}


//: - (BOOL)shouldShowNickName:(FFFMessageModel *)model{
- (BOOL)should:(MoreModel *)model{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self latissimusDorsi:model.message]) {
        //: return YES;
        return YES;
    }
    //: if ([self isRedpacketTip:model.message]) {
    if ([self quickShow:model.message]) {
        //: return NO;
        return NO;
    }
    //: return [super shouldShowNickName:model];
    return [super should:model];
}

//: - (CGPoint)nickNameMargin:(FFFMessageModel *)model{
- (CGPoint)writerSTitle:(MoreModel *)model{

    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self latissimusDorsi:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[[PerceiveData sharedInstance].user_showId] integerValue];
        //: switch (type) {
        switch (type) {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: return CGPointMake(50.f, -3.f);
                return CGPointMake(50.f, -3.f);
            //: default:
            default:
                //: break;
                break;
        }
        //: return CGPointMake(15.f, -3.f);;
        return CGPointMake(15.f, -3.f);;

    }
    //: return [super nickNameMargin:model];
    return [super writerSTitle:model];
}

//: - (NSArray *)customViews:(FFFMessageModel *)model
- (NSArray *)subViews:(MoreModel *)model
{
    //: if ([self isSupportedChatroomMessage:model.message]) {
    if ([self latissimusDorsi:model.message]) {
        //: NSDictionary *ext = model.message.remoteExt;
        NSDictionary *ext = model.message.remoteExt;
        //: NIMChatroomMemberType type = [ext[@"type"] integerValue];
        NIMChatroomMemberType type = [ext[[PerceiveData sharedInstance].user_showId] integerValue];
        //: NSString *imageName;
        NSString *imageName;

        //: switch (type)
        switch (type)
        {
            //: case NIMChatroomMemberTypeManager:
            case NIMChatroomMemberTypeManager:
                //: imageName = @"chatroom_role_manager";
                imageName = [PerceiveData sharedInstance].noti_oofUrl;
                //: break;
                break;
            //: case NIMChatroomMemberTypeCreator:
            case NIMChatroomMemberTypeCreator:
                //: imageName = @"chatroom_role_master";
                imageName = [PerceiveData sharedInstance].main_numberStr;
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }

        //: UIImageView *imageView;
        UIImageView *imageView;
        //: if (imageName.length) {
        if (imageName.length) {
            //: UIImage *image = [UIImage imageNamed:imageName];
            UIImage *image = [UIImage imageNamed:imageName];
            //: imageView = [[UIImageView alloc] initWithImage:image];
            imageView = [[UIImageView alloc] initWithImage:image];
            //: CGFloat leftMargin = 15.f;
            CGFloat leftMargin = 15.f;
            //: CGFloat topMatgin = 0.f;
            CGFloat topMatgin = 0.f;
            //: CGRect frame = imageView.frame;
            CGRect frame = imageView.frame;
            //: frame.origin = CGPointMake(leftMargin, topMatgin);
            frame.origin = CGPointMake(leftMargin, topMatgin);
            //: imageView.frame = frame;
            imageView.frame = frame;
        }
        //: return imageView ? @[imageView] : nil;
        return imageView ? @[imageView] : nil;
    }
    //: return [super customViews:model];
    return [super subViews:model];
}


//: - (BOOL)disableRetryButton:(FFFMessageModel *)model
- (BOOL)tiddlerHide:(MoreModel *)model
{
    //: if ([model.message.localExt.allKeys containsObject:@"NTESMessageRefusedTag"])
    if ([model.message.localExt.allKeys containsObject:[PerceiveData sharedInstance].mainIdealTitle])
    {
        //: return [[model.message.localExt objectForKey:@"NTESMessageRefusedTag"] boolValue];
        return [[model.message.localExt objectForKey:[PerceiveData sharedInstance].mainIdealTitle] boolValue];
    }
    //: return [super disableRetryButton:model];
    return [super tiddlerHide:model];
}



//: #pragma mark - misc
#pragma mark - misc
//: - (BOOL)isSupportedCustomMessage:(NIMMessage *)message
- (BOOL)referContext:(NIMMessage *)message
{
    //: NIMCustomObject *object = message.messageObject;
    NIMCustomObject *object = message.messageObject;
    //: return [object isKindOfClass:[NIMCustomObject class]] &&
    return [object isKindOfClass:[NIMCustomObject class]] &&
    //: [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
    [_types indexOfObject:NSStringFromClass([object.attachment class])] != NSNotFound;
}


//: - (BOOL)isSupportedChatroomMessage:(NIMMessage *)message
- (BOOL)latissimusDorsi:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: (message.messageType == NIMMessageTypeText || [self isSupportedCustomMessage:message]);
    (message.messageType == NIMMessageTypeText || [self referContext:message]);
}

//: - (BOOL)isChatroomTextMessage:(NIMMessage *)message
- (BOOL)voice:(NIMMessage *)message
{
    //: return message.session.sessionType == NIMSessionTypeChatroom &&
    return message.session.sessionType == NIMSessionTypeChatroom &&
    //: message.messageType == NIMMessageTypeText;
    message.messageType == NIMMessageTypeText;
}

//: - (BOOL)isWhiteboardCloseNotificationMessage:(NIMMessage *)message
- (BOOL)input:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESWhiteboardAttachment class]]) {
        if ([object.attachment isKindOfClass:[TagAttachment class]]) {
            //: return [(NTESWhiteboardAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
            return [(TagAttachment *)object.attachment flag] == CustomWhiteboardFlagClose;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isRedpacketTip:(NIMMessage *)message
- (BOOL)quickShow:(NIMMessage *)message
{
    //: if (message.messageType == NIMMessageTypeCustom) {
    if (message.messageType == NIMMessageTypeCustom) {
        //: NIMCustomObject *object = message.messageObject;
        NIMCustomObject *object = message.messageObject;
        //: if ([object.attachment isKindOfClass:[NTESRedPacketTipAttachment class]]) {
        if ([object.attachment isKindOfClass:[Attachment class]]) {
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (BOOL)shouldDisplayBubbleBackground:(FFFMessageModel *)model
- (BOOL)text:(MoreModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!message)
    if (!message)
    {
        //: return NO;
        return NO;
    }

    //: if ([self isSupportedCustomMessage:message])
    if ([self referContext:message])
    {
        //: return [_sessionCustomconfig enableBackgroundBubbleView:message];
        return [_sessionCustomconfig quantityVideo:message];
    }

    //检查是不是聊天室文本消息
    //: if (message.session.sessionType == NIMSessionTypeChatroom)
    if (message.session.sessionType == NIMSessionTypeChatroom)
    {
        //: if ([_chatroomTextConfig respondsToSelector:@selector(enableBackgroundBubbleView:)])
        if ([_chatroomTextConfig respondsToSelector:@selector(quantityVideo:)])
        {
            //: return [_chatroomTextConfig enableBackgroundBubbleView:message];
            return [_chatroomTextConfig quantityVideo:message];
        }
        //: return NO;
        return NO;
    }

    //: return [super shouldDisplayBubbleBackground:model];
    return [super text:model];
}
//: @end
@end