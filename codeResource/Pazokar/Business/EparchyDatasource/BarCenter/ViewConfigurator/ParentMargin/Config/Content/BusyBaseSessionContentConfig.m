// __DEBUG__
// __CLOSE_PRINT__
//
//  BusyBaseSessionContentConfig.m
// Case
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyBaseSessionContentConfig.h"
#import "BusyBaseSessionContentConfig.h"
//: #import "BusyTextContentConfig.h"
#import "SendMessage.h"
//: #import "BusyImageContentConfig.h"
#import "MoreConfig.h"
//: #import "BusyAudioContentConfig.h"
#import "ViewAudioTop.h"
//: #import "BusyVideoContentConfig.h"
#import "FormatMarginConfig.h"
//: #import "BusyFileContentConfig.h"
#import "PointConfig.h"
//: #import "BusyNotificationContentConfig.h"
#import "VersionPin.h"
//: #import "BusyLocationContentConfig.h"
#import "LabelRead.h"
//: #import "BusyUnsupportContentConfig.h"
#import "MediaVersionSend.h"
//: #import "BusyTipContentConfig.h"
#import "MyTing.h"
//: #import "BusyReplyedTextContentConfig.h"
#import "AccumulationConfig.h"
//: #import "BusyRtcCallRecordContentConfig.h"
#import "LabelItemBuild.h"

//: @interface BusySessionContentConfigFactory ()
@interface CleanSpecialSessionFactory ()
//: @property (nonatomic,strong) NSDictionary *dict;
@property (nonatomic,strong) NSDictionary *dict;
//: @property (nonatomic,strong) NSDictionary *replyDict;
@property (nonatomic,strong) NSDictionary *replyDict;
//: @property (nonatomic,strong) BusyUnsupportContentConfig *unsupportConfig;
@property (nonatomic,strong) MediaVersionSend *unsupportConfig;
//: @end
@end

//: @implementation BusySessionContentConfigFactory
@implementation CleanSpecialSessionFactory

//: + (instancetype)sharedFacotry
+ (instancetype)degree
{
    //: static BusySessionContentConfigFactory *instance = nil;
    static CleanSpecialSessionFactory *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[BusySessionContentConfigFactory alloc] init];
        instance = [[CleanSpecialSessionFactory alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: _dict = @{@(NIMMessageTypeText) : [BusyTextContentConfig new],
        _dict = @{@(NIMMessageTypeText) : [SendMessage new],
                  //: @(NIMMessageTypeImage) : [BusyImageContentConfig new],
                  @(NIMMessageTypeImage) : [MoreConfig new],
                  //: @(NIMMessageTypeAudio) : [BusyAudioContentConfig new],
                  @(NIMMessageTypeAudio) : [ViewAudioTop new],
                  //: @(NIMMessageTypeVideo) : [BusyVideoContentConfig new],
                  @(NIMMessageTypeVideo) : [FormatMarginConfig new],
                  //: @(NIMMessageTypeFile) : [BusyFileContentConfig new],
                  @(NIMMessageTypeFile) : [PointConfig new],
                  //: @(NIMMessageTypeLocation) : [BusyLocationContentConfig new],
                  @(NIMMessageTypeLocation) : [LabelRead new],
                  //: @(NIMMessageTypeNotification) : [BusyNotificationContentConfig new],
                  @(NIMMessageTypeNotification) : [VersionPin new],
                  //: @(NIMMessageTypeTip) : [BusyTipContentConfig new],
                  @(NIMMessageTypeTip) : [MyTing new],
                  //: @(NIMMessageTypeRtcCallRecord): [BusyRtcCallRecordContentConfig new],
                  @(NIMMessageTypeRtcCallRecord): [LabelItemBuild new],
        //: };
        };

        //: BusyReplyedTextContentConfig *replyedTextConfig = [BusyReplyedTextContentConfig new];
        AccumulationConfig *replyedTextConfig = [AccumulationConfig new];
        //: _replyDict = @{
        _replyDict = @{
            //: @(NIMMessageTypeText) : replyedTextConfig,
            @(NIMMessageTypeText) : replyedTextConfig,
            //: @(NIMMessageTypeAudio) : replyedTextConfig,
            @(NIMMessageTypeAudio) : replyedTextConfig,
            //: @(NIMMessageTypeVideo) : replyedTextConfig,
            @(NIMMessageTypeVideo) : replyedTextConfig,
            //: @(NIMMessageTypeFile) : replyedTextConfig,
            @(NIMMessageTypeFile) : replyedTextConfig,
            //: @(NIMMessageTypeTip) : replyedTextConfig,
            @(NIMMessageTypeTip) : replyedTextConfig,
            //: @(NIMMessageTypeRobot) : replyedTextConfig,
            @(NIMMessageTypeRobot) : replyedTextConfig,
            //: @(NIMMessageTypeNotification) : replyedTextConfig,
            @(NIMMessageTypeNotification) : replyedTextConfig,
            //: @(NIMMessageTypeLocation) : replyedTextConfig,
            @(NIMMessageTypeLocation) : replyedTextConfig,
            //: @(NIMMessageTypeCustom) : replyedTextConfig,
            @(NIMMessageTypeCustom) : replyedTextConfig,
            //: @(NIMMessageTypeImage) : replyedTextConfig,
            @(NIMMessageTypeImage) : replyedTextConfig,
            //: @(NIMMessageTypeRtcCallRecord) : replyedTextConfig,
            @(NIMMessageTypeRtcCallRecord) : replyedTextConfig,
        //: };
        };
        //: _unsupportConfig = [[BusyUnsupportContentConfig alloc] init];
        _unsupportConfig = [[MediaVersionSend alloc] init];
    }
    //: return self;
    return self;
}

//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message
- (id<ViewConfig>)to:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_replyDict objectForKey:@(type)];
    id<ViewConfig>config = [_replyDict objectForKey:@(type)];
    //: if (config == nil)
    if (config == nil)
    {
        //: config = _unsupportConfig;
        config = _unsupportConfig;
    }
    //: return config;
    return config;
}

//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message
- (id<ViewConfig>)path:(NIMMessage *)message
{
    //: NIMMessageType type = message.messageType;
    NIMMessageType type = message.messageType;
    //: id<CCCSessionContentConfig>config = [_dict objectForKey:@(type)];
    id<ViewConfig>config = [_dict objectForKey:@(type)];
    //: if (config == nil)
    if (config == nil)
    {
        //: config = _unsupportConfig;
        config = _unsupportConfig;
    }
    //: return config;
    return config;
}

//: @end
@end
