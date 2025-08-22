
#import <Foundation/Foundation.h>

typedef struct {
    Byte generater;
    Byte *straitAndNarrow;
    unsigned int recordFurther;
	int imageSituation;
	int customerForbid;
	int poemDifferently;
} StructConsciousnessData;

@interface ConsciousnessData : NSObject

+ (instancetype)sharedInstance;

//: HEIC
@property (nonatomic, copy) NSString *kProgrammingValue;

@end

@implementation ConsciousnessData

+ (instancetype)sharedInstance {
    static ConsciousnessData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ConsciousnessDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ConsciousnessDataToByte:(StructConsciousnessData *)data {
    for (int i = 0; i < data->recordFurther; i++) {
        data->straitAndNarrow[i] ^= data->generater;
    }
    data->straitAndNarrow[data->recordFurther] = 0;
	if (data->recordFurther >= 3) {
		data->imageSituation = data->straitAndNarrow[0];
		data->customerForbid = data->straitAndNarrow[1];
		data->poemDifferently = data->straitAndNarrow[2];
	}
    return data->straitAndNarrow;
}

- (NSString *)StringFromConsciousnessData:(StructConsciousnessData *)data {
    return [NSString stringWithUTF8String:(char *)[self ConsciousnessDataToByte:data]];
}

//: HEIC
- (NSString *)kProgrammingValue {
    if (!_kProgrammingValue) {
		NSArray<NSString *> *origin = @[@"244", @"249", @"245", @"255", @"189"];
		NSData *data = [ConsciousnessData ConsciousnessDataToData:origin];
        StructConsciousnessData value = (StructConsciousnessData){188, (Byte *)data.bytes, 4, 191, 171, 37};
        _kProgrammingValue = [self StringFromConsciousnessData:&value];
    }
    return _kProgrammingValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionInteraciton.m
// Case
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusySessionInteractorImpl.h"
#import "FasteningBar.h"
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "BusyMessageModel.h"
#import "MoreModel.h"
//: #import "BusySessionTableAdapter.h"
#import "PinAdapter.h"
//: #import "BusyKitMediaFetcher.h"
#import "ParentFetcher.h"
//: #import "BusyMessageMaker.h"
#import "SharedMaker.h"
//: #import "BusyKitAudioCenter.h"
#import "BarCenter.h"
//: #import "BusyMessageModel.h"
#import "MoreModel.h"
//: #import "BusyKitQuickCommentUtil.h"
#import "TapColorUtil.h"
//: #import "UIImage+SNCompress.h"
#import "UIImage+Shared.h"

//: static const void * const NTESDispatchMessageDataPrepareSpecificKey = &NTESDispatchMessageDataPrepareSpecificKey;
static const void * const appResponseIdent = &appResponseIdent;

//: typedef void(^NIMSessionInteractorHandler) (BOOL success, id result);
typedef void(^NIMSessionInteractorHandler) (BOOL success, id result);

//: dispatch_queue_t NTESMessageDataPrepareQueue()
dispatch_queue_t colorOperationQueue()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.message.queue", 0);
        queue = dispatch_queue_create("nim.demo.message.queue", 0);
        //: dispatch_queue_set_specific(queue, NTESDispatchMessageDataPrepareSpecificKey, (void *)NTESDispatchMessageDataPrepareSpecificKey, NULL);
        dispatch_queue_set_specific(queue, appResponseIdent, (void *)appResponseIdent, NULL);
    //: });
    });
    //: return queue;
    return queue;
}


//: @interface BusySessionInteractorImpl()<NIMMediaManagerDelegate>
@interface FasteningBar()<NIMMediaManagerDelegate>

//: @property (nonatomic,strong) NIMSession *session;
@property (nonatomic,strong) NIMSession *session;

//: @property (nonatomic,strong) id<BusySessionConfig> sessionConfig;
@property (nonatomic,strong) id<QuantityelligenceInformationCan> sessionConfig;

//: @property (nonatomic,strong) BusyKitMediaFetcher *mediaFetcher;
@property (nonatomic,strong) ParentFetcher *mediaFetcher;

//: @property (nonatomic,strong) NSMutableArray *pendingChatroomModels;
@property (nonatomic,strong) NSMutableArray *pendingChatroomModels;

//: @property (nonatomic,strong) NSMutableArray *pendingAudioMessages;
@property (nonatomic,strong) NSMutableArray *pendingAudioMessages;

//: @property (nonatomic,assign) NIMKitSessionState sessionState;
@property (nonatomic,assign) NIMKitSessionState sessionState;

//: @property (nonatomic,strong) NIMMessage *referenceMessage;
@property (nonatomic,strong) NIMMessage *referenceMessage;

//: @end
@end

//: @implementation BusySessionInteractorImpl
@implementation FasteningBar

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithSession:(NIMSession *)session
                         //: config:(id<BusySessionConfig>)sessionConfig
                         distance:(id<QuantityelligenceInformationCan>)sessionConfig
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _session = session;
        _session = session;
        //: _sessionConfig = sessionConfig;
        _sessionConfig = sessionConfig;
        //: [self addListener];
        [self messageListener];
    }
    //: return self;
    return self;
}


//: - (void)dealloc
- (void)dealloc
{
    //: [[NIMSDK sharedSDK].mediaManager stopPlay];
    [[NIMSDK sharedSDK].mediaManager stopPlay];
    //: [self removeListenner];
    [self key];
}

//: - (NSArray *)items
- (NSArray *)view
{
    //: return [self.dataSource items];
    return [self.dataSource user];
}

//: - (void)markRead:(BOOL)needMarkDataModel
- (void)keyWithFile:(BOOL)needMarkDataModel
{
    //: if ([self shouldAutoMarkRead])
    if ([self teamRead])
    {
        //: [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];
        [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];

        //: if ([self shouldHandleReceipt])
        if ([self heliogramClean])
        {
            //: [self sendMessageReceipt:self.items];
            [self ting:self.view];
        }

        //: if (needMarkDataModel)
        if (needMarkDataModel)
        {
            //: [self markReadInDataModel];
            [self markChildPtolemaicSystemModel];
        }
    }
}

//: - (void)markReadInDataModel {
- (void)markChildPtolemaicSystemModel {
    //: for (id model in [self items]) {
    for (id model in [self view]) {
        //: if ([model isKindOfClass:[BusyMessageModel class]]) {
        if ([model isKindOfClass:[MoreModel class]]) {
            //: BusyMessageModel *messageModel = (BusyMessageModel *)model;
            MoreModel *messageModel = (MoreModel *)model;
            //: if (messageModel.message.status == NIMMessageStatusNone) {
            if (messageModel.message.status == NIMMessageStatusNone) {
                //: messageModel.message.status = NIMMessageStatusRead;
                messageModel.message.status = NIMMessageStatusRead;
            }
        }
    }
}


//: - (void)addMessages:(NSArray *)messages
- (void)between:(NSArray *)messages
{
    //: NIMMessage *message = messages.firstObject;
    NIMMessage *message = messages.firstObject;
    //: if (message.session.sessionType == NIMSessionTypeChatroom) {
    if (message.session.sessionType == NIMSessionTypeChatroom) {
        //: [self addChatroomMessages:messages];
        [self back:messages];
    //: }else{
    }else{
        //: [self addNormalMessages:messages];
        [self scan:messages];
    }
}

//: - (void)insertMessages:(NSArray *)messages
- (void)bar:(NSArray *)messages
{
    //: NSMutableArray *models = [[NSMutableArray alloc] init];
    NSMutableArray *models = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: BusyMessageModel *model = [[BusyMessageModel alloc] initWithMessage:message];
        MoreModel *model = [[MoreModel alloc] initWithLabel:message];
        //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(viewLabel:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig viewLabel:model.message];;
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(contentReason)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig contentReason];
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(keyName)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig keyName];
        }

        //: if (message.messageType == NIMMessageTypeTip && [message.text containsString:@"撤回"]) {
        if (message.messageType == NIMMessageTypeTip && [message.text containsString:@"撤回"]) {
            //撤回消息过滤
        //: }else{
        }else{
            //: [models addObject:model];
            [models addObject:model];
        }
    }

    //: NIMSessionMessageOperateResult *result = [self.dataSource insertMessageModels:models];
    AppMore *result = [self.dataSource pull:models];
    //: [self refreshAllChatExtendDatasByModels:models completion:nil];
    [self maxWith:models row:nil];
    //: [self.layout insert:result.indexpaths animated:YES];
    [self.layout informationAnimated:result.indexpaths title:YES];
}

//: - (void)addNormalMessages:(NSArray *)messages
- (void)scan:(NSArray *)messages
{
    //: NSMutableArray *models = [[NSMutableArray alloc] init];
    NSMutableArray *models = [[NSMutableArray alloc] init];
    //: for (NIMMessage *message in messages) {
    for (NIMMessage *message in messages) {
        //: if (message.isDeleted)
        if (message.isDeleted)
        {
            //: continue;
            continue;
        }
        //: BusyMessageModel *model = [[BusyMessageModel alloc] initWithMessage:message];
        MoreModel *model = [[MoreModel alloc] initWithLabel:message];
        //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(viewLabel:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig viewLabel:model.message];;
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(contentReason)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig contentReason];
        }

        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(keyName)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig keyName];
        }


        // 聊天扩展相关
        //: [self refreshAllChatExtendDatasByMessage:[self threadMessageOfMessage:message]]; 
        [self month:[self viewLength:message]]; // 刷新父消息
        //: [self refreshAllChatExtendDatasByModel:model completion:nil]; 
        [self voiceUnder:model byShow:nil]; // 刷新本条消息

        //: [models addObject:model];
        [models addObject:model];
    }
    //: NIMSessionMessageOperateResult *result = [self.dataSource addMessageModels:models];
    AppMore *result = [self.dataSource selected:models];
    //: [self.layout insert:result.indexpaths animated:YES];
    [self.layout informationAnimated:result.indexpaths title:YES];
}

//: - (void)addChatroomMessages:(NSArray *)messages
- (void)back:(NSArray *)messages
{
    //: if (!self.pendingChatroomModels) {
    if (!self.pendingChatroomModels) {
        //: self.pendingChatroomModels = [[NSMutableArray alloc] init];
        self.pendingChatroomModels = [[NSMutableArray alloc] init];
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: dispatch_async(NTESMessageDataPrepareQueue(), ^{
    dispatch_async(colorOperationQueue(), ^{
        //: NSMutableArray *models = [[NSMutableArray alloc] init];
        NSMutableArray *models = [[NSMutableArray alloc] init];
        //: for (NIMMessage *message in messages)
        for (NIMMessage *message in messages)
        {
            //: if (message.isDeleted)
            if (message.isDeleted)
            {
                //: continue;
                continue;
            }
            //: BusyMessageModel *model = [[BusyMessageModel alloc] initWithMessage:message];
            MoreModel *model = [[MoreModel alloc] initWithLabel:message];
            //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
            model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
            //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
            if ([_sessionConfig respondsToSelector:@selector(viewLabel:)]) {
                //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
                model.disableSelected = [_sessionConfig viewLabel:model.message];;
            }
            //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
            if ([_sessionConfig respondsToSelector:@selector(contentReason)]) {
                //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
                model.enableRepliedContent = [_sessionConfig contentReason];
            }

            //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
            if ([_sessionConfig respondsToSelector:@selector(keyName)]) {
                //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
                model.enableQuickComments = [_sessionConfig keyName];
            }

            //: [weakSelf.layout calculateContent:model];
            [weakSelf.layout assemblage:model];
            //: [models addObject:model];
            [models addObject:model];
        }
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [weakSelf.pendingChatroomModels addObjectsFromArray:models];
            [weakSelf.pendingChatroomModels addObjectsFromArray:models];
            //: [weakSelf processChatroomMessageModels];
            [weakSelf overTagRemove];
        //: });
        });
    //: });
    });
}

//: - (BusyMessageModel *)deleteMessage:(NIMMessage *)message
- (MoreModel *)messageFind:(NIMMessage *)message
{
    //: BusyMessageModel *model = [self findMessageModel:message];
    MoreModel *model = [self with:message];
    //: if (model) {
    if (model) {
        //: NIMSessionMessageOperateResult *result = [self.dataSource deleteMessageModel:model];
        AppMore *result = [self.dataSource tipDisable:model];
        //: [self.layout remove:result.indexpaths];
        [self.layout cellDisable:result.indexpaths];

        // 聊天扩展相关
        //: [self refreshAllChatExtendDatasBySubModel:model completion:nil];
        [self load:model past:nil];
    }
    //: return model;
    return model;
}

//: - (BusyMessageModel *)updateMessage:(NIMMessage *)message
- (MoreModel *)modify:(NIMMessage *)message
{
    //: if (!message)
    if (!message)
    {
        //: return nil;
        return nil;
    }

    //: BusyMessageModel *model = [self findMessageModel:message];
    MoreModel *model = [self with:message];
    //: if (model)
    if (model)
    {
        // 聊天扩展相关
        //: [self refreshAllChatExtendDatasByMessage:[self threadMessageOfMessage:message]];
        [self month:[self viewLength:message]];
        //: [self refreshAllChatExtendDatasByModel:model
        [self voiceUnder:model
                                  //: completion:nil];
                                  byShow:nil];
        //: NIMSessionMessageOperateResult *result = [self.dataSource updateMessageModel:model];
        AppMore *result = [self.dataSource consuetude:model];
        //: NSInteger index = [result.indexpaths.firstObject row];
        NSInteger index = [result.indexpaths.firstObject row];
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        //: [self safelyReloadRowAtIndexPath:indexPath];
        [self screen:indexPath];
    }
    //: return model;
    return model;
}

//: - (void)addPinForMessage:(NIMMessage *)message
- (void)user:(NIMMessage *)message
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self.dataSource addPinForMessage:message callback:^(NSError *error) {
    [self.dataSource session:message inheritance:^(NSError *error) {
        //: [wself updateMessage:message];
        [wself modify:message];
    //: }];
    }];
}

//: - (void)removePinForMessage:(NIMMessage *)message
- (void)alongBuild:(NIMMessage *)message
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self.dataSource removePinForMessage:message callback:^(NSError *error) {
    [self.dataSource info:message bottom:^(NSError *error) {
        //: [wself updateMessage:message];
        [wself modify:message];
    //: }];
    }];
}

//: - (void)setSessionState:(NIMKitSessionState)sessionState {
- (void)setSessionState:(NIMKitSessionState)sessionState {
    //: if (_sessionState != sessionState) {
    if (_sessionState != sessionState) {
        //: [self.dataSource refreshMessageModelShowSelect:(sessionState == NIMKitSessionStateSelect)];
        [self.dataSource ironedQuery:(sessionState == NIMKitSessionStateSelect)];
        //: [self.layout reloadTable];
        [self.layout holderTo];
        //: _sessionState = sessionState;
        _sessionState = sessionState;
    }
}

//: - (BusyMessageModel *)findMessageModel:(NIMMessage *)message
- (MoreModel *)with:(NIMMessage *)message
{
    //: if ([message isKindOfClass:[NIMMessage class]]) {
    if ([message isKindOfClass:[NIMMessage class]]) {
        //: return [self.dataSource findModel:message];
        return [self.dataSource image:message];
    }
    //: return nil;
    return nil;
}

//: - (NSInteger)findMessageIndex:(NIMMessage *)message {
- (NSInteger)circle:(NIMMessage *)message {
    //: if ([message isKindOfClass:[NIMMessage class]]) {
    if ([message isKindOfClass:[NIMMessage class]]) {
        //: BusyMessageModel *model = [[BusyMessageModel alloc] initWithMessage:message];
        MoreModel *model = [[MoreModel alloc] initWithLabel:message];
        //: model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        model.shouldShowSelect = (_sessionState == NIMKitSessionStateSelect);
        //: if ([_sessionConfig respondsToSelector:@selector(disableSelectedForMessage:)]) {
        if ([_sessionConfig respondsToSelector:@selector(viewLabel:)]) {
            //: model.disableSelected = [_sessionConfig disableSelectedForMessage:model.message];;
            model.disableSelected = [_sessionConfig viewLabel:model.message];;
        }
        //: if ([_sessionConfig respondsToSelector:@selector(needShowReplyContent)]) {
        if ([_sessionConfig respondsToSelector:@selector(contentReason)]) {
            //: model.enableRepliedContent = [_sessionConfig needShowReplyContent];
            model.enableRepliedContent = [_sessionConfig contentReason];
        }
        //: if ([_sessionConfig respondsToSelector:@selector(needShowQuickComments)]) {
        if ([_sessionConfig respondsToSelector:@selector(keyName)]) {
            //: model.enableQuickComments = [_sessionConfig needShowQuickComments];
            model.enableQuickComments = [_sessionConfig keyName];
        }

        //: return [self.dataSource indexAtModelArray:model];
        return [self.dataSource bodyPart:model];
    }
    //: return -1;
    return -1;
}

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)magnitudeeract:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: if ([self shouldHandleReceipt])
    if ([self heliogramClean])
    {
        //: NSDictionary *models = [self.dataSource checkReceipts:receipts];
        NSDictionary *models = [self.dataSource keyUser:receipts];
        //: for (NSNumber *index in models.allKeys) {
        for (NSNumber *index in models.allKeys) {
            //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index.integerValue inSection:0];
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index.integerValue inSection:0];
            //: [self safelyReloadRowAtIndexPath:indexPath];
            [self screen:indexPath];
        }
    }
}

//: - (BOOL)shouldHandleReceipt
- (BOOL)heliogramClean
{
    //: return [self.sessionConfig respondsToSelector:@selector(shouldHandleReceipt)] &&
    return [self.sessionConfig respondsToSelector:@selector(heliogramClean)] &&
    //: [self.sessionConfig shouldHandleReceipt];
    [self.sessionConfig heliogramClean];
}

//: - (void)markAllMessagesRead
- (void)characterise
{
    //: [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];
    [[NIMSDK sharedSDK].conversationManager markAllMessagesReadInSession:self.session];
}

//: - (void)sendMessageReceipt:(NSArray *)messages
- (void)ting:(NSArray *)messages
{
    //: [self.dataSource sendMessageReceipt:messages];
    [self.dataSource dayReceipt:messages];
}

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)my:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion
             label:(void(^)(NSError *error))completion
{
    //: NIMMessage *message = self.referenceMessage;
    NIMMessage *message = self.referenceMessage;
    //: if (message)
    if (message)
    {
        //: [self addQuickComment:comment
        [self bar:comment
                    //: toMessage:message
                    dateDoing:message
                   //: completion:^(NSError *error)
                   immobilizeCompletion:^(NSError *error)
        {
            //: if (completion)
            if (completion)
            {
                //: completion(error);
                completion(error);
            }
        //: }];
        }];
        //: self.referenceMessage = nil;
        self.referenceMessage = nil;
    }
}

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)bar:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)message
              dateDoing:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion
             immobilizeCompletion:(void(^)(NSError *error))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatExtendManager addQuickComment:comment
    [[NIMSDK sharedSDK].chatExtendManager addQuickComment:comment
                                                //: toMessage:message
                                                toMessage:message
                                               //: completion:^(NSError * _Nullable error)
                                               completion:^(NSError * _Nullable error)
    {
        //: [weakSelf refreshQuickComments:message completion:nil];
        [weakSelf green:message send:nil];
        //: if (completion)
        if (completion)
        {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)insertFilter:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          targetCompletion:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion
             to:(void(^)(NSError *error))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatExtendManager deleteQuickComment:comment
    [[NIMSDK sharedSDK].chatExtendManager deleteQuickComment:comment
                                                  //: completion:^(NSError * _Nullable error)
                                                  completion:^(NSError * _Nullable error)
    {
        //: weakSelf.referenceMessage = nil;
        weakSelf.referenceMessage = nil;
        //: [weakSelf refreshQuickComments:message completion:nil];
        [weakSelf green:message send:nil];
        //: if (completion)
        if (completion)
        {
            //: completion(error);
            completion(error);
        }
    //: }];
    }];
}

//: - (void)resetLayout
- (void)item
{
    //: [self.layout resetLayout];
    [self.layout min];
}

//: - (void)changeLayout:(CGFloat)inputHeight
- (void)colorLayout:(CGFloat)inputHeight
{
    //: [self.layout changeLayout:inputHeight];
    [self.layout streetSmart:inputHeight];
}

//: - (void)cleanCache
- (void)duringScreenRecording
{
    //: [self.dataSource cleanCache];
    [self.dataSource messageTing];
}


//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler
- (void)show:(void (^)(NSArray *messages, NSError *error))handler
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
//    [SVProgressHUD show];
    //: [self.dataSource loadHistoryMessagesWithComplete:^(NSInteger index, NSArray *messages, NSError *error) {
    [self.dataSource aggregation:^(NSInteger index, NSArray *messages, NSError *error) {
//        [SVProgressHUD dismiss];
        //: if (messages.count) {
        if (messages.count) {

            //: if (wself.session.sessionType != NIMSessionTypeChatroom) {
            if (wself.session.sessionType != NIMSessionTypeChatroom) {
                //: [wself refreshAllAfterFetchCommentsByMessages:messages];
                [wself bottom:messages];
            }

            //: if (![wself.sessionConfig respondsToSelector:@selector(autoFetchAttachment)]
            if (![wself.sessionConfig respondsToSelector:@selector(componentPart)]
                //: || wself.sessionConfig.autoFetchAttachment) {
                || wself.sessionConfig.componentPart) {
                //: [wself.dataSource checkAttachmentState:messages];
                [wself.dataSource someFinish:messages];
            }
        }
        //: if (handler) {
        if (handler) {
            //: handler(messages,error);
            handler(messages,error);
        }
    //: }];
    }];
}

//: - (void)pullUp {
- (void)manage {
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(didPullUpMessageData)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(courseTing)]) {
        //: [self.delegate didPullUpMessageData];
        [self.delegate courseTing];
    }
}

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler {
- (void)upwardsBarInput:(void(^)(NSArray *messages, NSError *error))handler {
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self.dataSource loadNewMessagesWithComplete:^(NSInteger index, NSArray *messages, NSError *error) {
    [self.dataSource messagesChange:^(NSInteger index, NSArray *messages, NSError *error) {
        //: if (messages.count) {
        if (messages.count) {
            //: [wself.layout layoutAfterRefresh];
            [wself.layout my];
            //: if (![wself.sessionConfig respondsToSelector:@selector(autoFetchAttachment)]
            if (![wself.sessionConfig respondsToSelector:@selector(componentPart)]
                //: || wself.sessionConfig.autoFetchAttachment) {
                || wself.sessionConfig.componentPart) {
                //: [wself.dataSource checkAttachmentState:messages];
                [wself.dataSource someFinish:messages];
            }
        }

        //: [wself refreshAllAfterFetchCommentsByMessages:messages];
        [wself bottom:messages];

        //: if (handler) {
        if (handler) {
            //: handler(messages, error);
            handler(messages, error);
        }
    //: }];
    }];
}

//: - (void)resetMessages:(void (^)(NSError *error))handler
- (void)sessionMessages:(void (^)(NSError *error))handler
{
//    [SVProgressHUD show];
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: __block NSError *e = nil;
    __block NSError *e = nil;
    //: dispatch_group_t group = dispatch_group_create();
    dispatch_group_t group = dispatch_group_create();

    //: dispatch_group_enter(group);
    dispatch_group_enter(group);
    //: [self.dataSource enhancedResetMessages:^(NSError *error, NSArray *models) {
    [self.dataSource quantity:^(NSError *error, NSArray *models) {
        //: [weakSelf refreshAllAfterFetchCommentsByModels:models];
        [weakSelf container:models];

        //: e = error;
        e = error;
        //: dispatch_group_leave(group);
        dispatch_group_leave(group);
    //: }];
    }];

    //: dispatch_group_enter(group);
    dispatch_group_enter(group);
    //: [self loadMessagePins:^(NSError *error) {
    [self info:^(NSError *error) {
        //: dispatch_group_leave(group);
        dispatch_group_leave(group);
    //: }];
    }];

    //: dispatch_group_notify(group, dispatch_get_main_queue(), ^{
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{

        //: if([weakSelf.delegate respondsToSelector:@selector(didFetchMessageData)])
        if([weakSelf.delegate respondsToSelector:@selector(barLeft)])
        {
            //: [weakSelf.delegate didFetchMessageData];
            [weakSelf.delegate barLeft];
            //: if (handler) {
            if (handler) {
                //: handler(e);
                handler(e);
            }
        }
    //: });
    });

//    [SVProgressHUD dismiss];

}

//: - (void)autoFetchMessages
- (void)flow
{
    //: if (![self.sessionConfig respondsToSelector:@selector(autoFetchWhenOpenSession)]
    if (![self.sessionConfig respondsToSelector:@selector(colorYear)]
        //: || self.sessionConfig.autoFetchWhenOpenSession) {
        || self.sessionConfig.colorYear) {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: dispatch_group_t group = dispatch_group_create();
        dispatch_group_t group = dispatch_group_create();

        //: dispatch_group_enter(group);
        dispatch_group_enter(group);
        //: [self.dataSource enhancedResetMessages:^(NSError *error, NSArray *models) {
        [self.dataSource quantity:^(NSError *error, NSArray *models) {
            //: [weakSelf refreshAllAfterFetchCommentsByModels:models];
            [weakSelf container:models];
            //: dispatch_group_leave(group);
            dispatch_group_leave(group);
        //: }];
        }];

        //: dispatch_group_enter(group);
        dispatch_group_enter(group);
        //: [self loadMessagePins:^(NSError *error) {
        [self info:^(NSError *error) {
            //: dispatch_group_leave(group);
            dispatch_group_leave(group);
        //: }];
        }];

        //: dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        dispatch_group_notify(group, dispatch_get_main_queue(), ^{
            //: if([weakSelf.delegate respondsToSelector:@selector(didFetchMessageData)])
            if([weakSelf.delegate respondsToSelector:@selector(barLeft)])
            {
                //: [weakSelf.delegate didFetchMessageData];
                [weakSelf.delegate barLeft];

                //: if (![weakSelf.sessionConfig respondsToSelector:@selector(autoFetchAttachment)]
                if (![weakSelf.sessionConfig respondsToSelector:@selector(componentPart)]
                    //: || weakSelf.sessionConfig.autoFetchAttachment) {
                    || weakSelf.sessionConfig.componentPart) {
                    //: [weakSelf.dataSource checkAttachmentState:weakSelf.items];
                    [weakSelf.dataSource someFinish:weakSelf.view];
                }
            }
        //: });
        });

    }
}

//: - (void)setDataSource:(id<NIMSessionDataSource>)dataSource
- (void)setDataSource:(id<DirectionSource>)dataSource
{
    //: _dataSource = dataSource;
    _dataSource = dataSource;
    //: [self autoFetchMessages];
    [self flow];
}


//: #pragma mark - 消息收发接口
#pragma mark - 消息收发接口
//: - (void)sendMessage:(NIMMessage *)message
- (void)keyBottom:(NIMMessage *)message
{
    //: NSError *err;
    NSError *err;
    //: [[[NIMSDK sharedSDK] chatManager] sendMessage:message toSession:_session error:&err];
    [[[NIMSDK sharedSDK] chatManager] sendMessage:message toSession:_session error:&err];
    //: NSLog(@"sendMessageError:%@",err);
    //: [self.layout dismissReplyContent];
    [self.layout inputDoing];
}

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage
- (void)dedication:(NIMMessage *)message need:(NIMMessage *)toMessage
{
    //: if (toMessage)
    if (toMessage)
    {
        //: [[[NIMSDK sharedSDK] chatExtendManager] reply:message
        [[[NIMSDK sharedSDK] chatExtendManager] reply:message
                                                   //: to:toMessage
                                                   to:toMessage
                                                //: error:nil];
                                                error:nil];
    }
    //: else if ([self.sessionConfig respondsToSelector:@selector(threadMessage)] && [self.sessionConfig threadMessage])
    else if ([self.sessionConfig respondsToSelector:@selector(sizeAcross)] && [self.sessionConfig sizeAcross])
    {
        //: NIMMessage *threadMessage = [self.sessionConfig threadMessage];
        NIMMessage *threadMessage = [self.sessionConfig sizeAcross];
        //: [[[NIMSDK sharedSDK] chatExtendManager] reply:message
        [[[NIMSDK sharedSDK] chatExtendManager] reply:message
                                                   //: to:threadMessage
                                                   to:threadMessage
                                                //: error:nil];
                                                error:nil];

        //: if ([self.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
        if ([self.sessionConfig respondsToSelector:@selector(shouldIn)])
        {
            //: if ([self.sessionConfig clearThreadMessageAfterSent])
            if ([self.sessionConfig shouldIn])
            {
                //: [self.sessionConfig cleanThreadMessage];
                [self.sessionConfig harvestMoon];
            }
        }
    }
    //: else if (!toMessage)
    else if (!toMessage)
    {
        //: [self sendMessage:message];
        [self keyBottom:message];
    }

    //: [self.layout dismissReplyContent];
    [self.layout inputDoing];
}

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError *))completion
- (void)empty:(NIMMessage *)message heliogramAdd:(void(^)(NSError *))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:_session completion:^(NSError *err) {
    [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:_session completion:^(NSError *err) {
        //: if(completion) {
        if(completion) {
            //: completion(err);
            completion(err);
        }
        //: [weakSelf.layout dismissReplyContent];
        [weakSelf.layout inputDoing];
    //: }];
    }];
}

//: - (void)sendMessage:(NIMMessage *)message
- (void)sizeHandleSuccess:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          message:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion
         quick:(void(^)(NSError * error))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
   //: if (toMessage)
   if (toMessage)
    {
        //: [[NIMSDK sharedSDK].chatExtendManager reply:message
        [[NIMSDK sharedSDK].chatExtendManager reply:message
                                                //: to:toMessage
                                                to:toMessage
                                        //: completion:^(NSError * _Nullable error)
                                        completion:^(NSError * _Nullable error)
         {
            //: if (completion)
            if (completion)
            {
                //: completion(error);
                completion(error);
            }
            //: [weakSelf refreshAllChatExtendDatasByMessage:[self threadMessageOfMessage:toMessage]];
            [weakSelf month:[self viewLength:toMessage]];

        //: }];
        }];
    }
    //: else if ([self.sessionConfig respondsToSelector:@selector(threadMessage)] && [self.sessionConfig threadMessage])
    else if ([self.sessionConfig respondsToSelector:@selector(sizeAcross)] && [self.sessionConfig sizeAcross])
    {
        //: NIMMessage *threadMessage = [self.sessionConfig threadMessage];
        NIMMessage *threadMessage = [self.sessionConfig sizeAcross];
        //: [[[NIMSDK sharedSDK] chatExtendManager] reply:message
        [[[NIMSDK sharedSDK] chatExtendManager] reply:message
                                                   //: to:threadMessage
                                                   to:threadMessage
                                           //: completion:^(NSError * _Nullable error) {
                                           completion:^(NSError * _Nullable error) {
            //: if ([weakSelf.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
            if ([weakSelf.sessionConfig respondsToSelector:@selector(shouldIn)])
            {
                //: if ([weakSelf.sessionConfig clearThreadMessageAfterSent])
                if ([weakSelf.sessionConfig shouldIn])
                {
                    //: [weakSelf.sessionConfig cleanThreadMessage];
                    [weakSelf.sessionConfig harvestMoon];
                }
            }

            //: if (completion)
            if (completion)
            {
                //: completion(error);
                completion(error);
            }
            //: [weakSelf refreshAllChatExtendDatasByMessage:[weakSelf threadMessageOfMessage:toMessage]];
            [weakSelf month:[weakSelf viewLength:toMessage]];
        //: }];
        }];
    }
    //: else if (!toMessage)
    else if (!toMessage)
    {
        //: [self sendMessage:message completion:completion];
        [self empty:message heliogramAdd:completion];
    }

    //: [self.layout dismissReplyContent];
    [self.layout inputDoing];
}

//: #pragma mark - Notifitcation
#pragma mark - Notifitcation
//: - (void)vcBecomeActive:(NSNotification *)notification
- (void)tables:(NSNotification *)notification
{
//    NSArray *models = [self.dataSource items];
//    [self sendMessageReceipt:models];
}

//: - (void)onUserInfoHasUpdatedNotification:(NSNotification *)notification {
- (void)files:(NSNotification *)notification {
    //: [self.delegate didRefreshMessageData];
    [self.delegate collectionDisable];
}

//: - (void)onTeamMembersHasUpdatedNotification:(NSNotification *)notification {
- (void)nearCanShould:(NSNotification *)notification {
    //: NSDictionary *userInfo = notification.userInfo;
    NSDictionary *userInfo = notification.userInfo;
    //: extern NSString *mFileThreadTitle;
    extern NSString *mFileThreadTitle;
    //: NSArray *teamIds = userInfo[mFileThreadTitle];
    NSArray *teamIds = userInfo[mFileThreadTitle];
    //: if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
    if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
        //: && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        //: [self.delegate didRefreshMessageData];
        [self.delegate collectionDisable];
    }
}

//: - (void)onTeamInfoHasUpdatedNotification:(NSNotification *)notification {
- (void)infoCreate:(NSNotification *)notification {
    //: NSDictionary *userInfo = notification.userInfo;
    NSDictionary *userInfo = notification.userInfo;
    //: extern NSString *mFileThreadTitle;
    extern NSString *mFileThreadTitle;
    //: NSArray *teamIds = userInfo[mFileThreadTitle];
    NSArray *teamIds = userInfo[mFileThreadTitle];

    //: if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
    if ((self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam)
        //: && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        && ([teamIds containsObject:self.session.sessionId] || [teamIds containsObject:[NSNull null]])) {
        //: [self.delegate didRefreshMessageData];
        [self.delegate collectionDisable];
    }
}

//: #pragma mark - NIMSessionTableDataDelegate
#pragma mark - NIMSessionTableDataDelegate

//: - (void)didRefreshMessageData
- (void)collectionDisable
{
    //: if ([self.delegate respondsToSelector:@selector(didRefreshMessageData)]) {
    if ([self.delegate respondsToSelector:@selector(collectionDisable)]) {
        //: [self.delegate didRefreshMessageData];
        [self.delegate collectionDisable];
    }
}


//: #pragma mark - NIMMeidaButton
#pragma mark - NIMMeidaButton
//: - (void)mediaAudioPressed:(BusyMessageModel *)messageModel
- (void)item:(MoreModel *)messageModel
{
    //: if (![[NIMSDK sharedSDK].mediaManager isPlaying]) {
    if (![[NIMSDK sharedSDK].mediaManager isPlaying]) {
        //: [[NIMSDK sharedSDK].mediaManager switchAudioOutputDevice:NIMAudioOutputDeviceSpeaker];
        [[NIMSDK sharedSDK].mediaManager switchAudioOutputDevice:NIMAudioOutputDeviceSpeaker];
        //: self.pendingAudioMessages = [self findRemainAudioMessages:messageModel.message];
        self.pendingAudioMessages = [self chromatic:messageModel.message];
        //: [[BusyKitAudioCenter instance] play:messageModel.message];
        [[BarCenter disable] scaleWith:messageModel.message];

    //: } else {
    } else {
        //: self.pendingAudioMessages = nil;
        self.pendingAudioMessages = nil;
        //: [[NIMSDK sharedSDK].mediaManager stopPlay];
        [[NIMSDK sharedSDK].mediaManager stopPlay];
    }
}

//: - (void)mediaPicturePressed
- (void)vertical
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.mediaFetcher fetchPhotoFromLibrary:^(NSArray *images, NSString *path, PHAssetMediaType type) {
    [self.mediaFetcher ofLibrary:^(NSArray *images, NSString *path, PHAssetMediaType type) {
        //: switch (type) {
        switch (type) {
            //: case PHAssetMediaTypeImage:
            case PHAssetMediaTypeImage:
            {
                //: for (UIImage *image in images) {
                for (UIImage *image in images) {



                    //: NIMMessage *message = [BusyMessageMaker msgWithImage:image];
                    NIMMessage *message = [SharedMaker file:image];

                    //: NSMutableDictionary *dic = [[BusyConfig sharedConfig] Gdic];
                    NSMutableDictionary *dic = [[IndexTag ambit] Gdic];
                    //: NSData *imageData = UIImagePNGRepresentation(image);
                    NSData *imageData = UIImagePNGRepresentation(image);
                    //: [dic setObject:imageData forKey:message.messageId];
                    [dic setObject:imageData forKey:message.messageId];

                    //: [weakSelf sendMessage:message toMessage:nil];
                    [weakSelf dedication:message need:nil];
                }
                //: if (path) {
                if (path) {
                    //: NIMMessage *message;
                    NIMMessage *message;
                    //: if ([path.pathExtension isEqualToString:@"HEIC"])
                    if ([path.pathExtension isEqualToString:[ConsciousnessData sharedInstance].kProgrammingValue])
                    {
                        //iOS 11 苹果采用了新的图片格式 HEIC ，如果采用原图会导致其他设备的兼容问题，在上层做好格式的兼容转换,压成 jpeg
                        //: UIImage *image = [UIImage imageWithContentsOfFile:path];
                        UIImage *image = [UIImage imageWithContentsOfFile:path];
                        //: message = [BusyMessageMaker msgWithImage:image];
                        message = [SharedMaker file:image];
                    }
                    //: else
                    else
                    {
                        //: UIImage *image = [UIImage imageWithContentsOfFile:path];
                        UIImage *image = [UIImage imageWithContentsOfFile:path];
                        //: message = [BusyMessageMaker msgWithImage:image];
                        message = [SharedMaker file:image];
                    }


                    //: [weakSelf sendMessage:message toMessage:nil];
                    [weakSelf dedication:message need:nil];
                }
            }
                //: break;
                break;
            //: case PHAssetMediaTypeVideo:
            case PHAssetMediaTypeVideo:
            {
                //: NIMMessage *message = [BusyMessageMaker msgWithVideo:path];
                NIMMessage *message = [SharedMaker intervalerval:path];
                //: [weakSelf sendMessage:message toMessage:nil];
                [weakSelf dedication:message need:nil];
            }
                //: break;
                break;
            //: default:
            default:
                //: return;
                return;
        }

    //: }];
    }];
}

//对图片尺寸进行压缩--
//: -(UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize
-(UIImage*)voteMy:(UIImage*)image belowEmpty:(CGSize)newSize
{
    //: UIGraphicsBeginImageContext(newSize);
    UIGraphicsBeginImageContext(newSize);
    //: [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    //: UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return newImage;
    return newImage;
}

//: - (void)mediaShootPressed
- (void)titleInvite
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.mediaFetcher fetchMediaFromCamera:^(NSString *path, UIImage *image) {
    [self.mediaFetcher mode:^(NSString *path, UIImage *image) {
        //: NIMMessage *message;
        NIMMessage *message;
        //: if (image) {
        if (image) {
            //: message = [BusyMessageMaker msgWithImage:image];
            message = [SharedMaker file:image];
        //: }else{
        }else{
            //: message = [BusyMessageMaker msgWithVideo:path];
            message = [SharedMaker intervalerval:path];
        }
        //: [weakSelf sendMessage:message toMessage:nil];
        [weakSelf dedication:message need:nil];
    //: }];
    }];
}

//: - (void)mediaLocationPressed
- (void)input
{

}

//: - (void)onSendLocation:(MyUserKitLocationPoint *)locationPoint{
- (void)dataFile:(MyUserKitLocationPoint *)locationPoint{

}


//: - (void)onViewWillAppear
- (void)modelAppear
{
    //fix bug: 竖屏进入会话界面，然后右上角进入群信息，再横屏，左上角返回，横屏的会话界面显示的就是竖屏时的大小
    //: [self cleanCache];
    [self duringScreenRecording];
//    dispatch_async(dispatch_get_main_queue(), ^{
//        [self.layout reloadTable];
//    });

    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];
}

//: - (void)onViewDidDisappear
- (void)vanguardDate
{
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message {
- (BOOL)be:(NIMMessage *)message {
    //: return YES;
    return YES;
}

//: - (void)loadMessagePins:(void (^)(NSError *))handler
- (void)info:(void (^)(NSError *))handler
{
    //: [self.dataSource loadMessagePins:handler];
    [self.dataSource complete:handler];
}

//: - (void)willDisplayMessageModel:(BusyMessageModel *)model
- (void)child:(MoreModel *)model
{
    //: [self.dataSource willDisplayMessageModel:model];
    [self.dataSource flash:model];
}

//: #pragma mark - NIMSessionLayoutDelegate
#pragma mark - StigmatizePlayer
//: - (void)onRefresh
- (void)restoreShow
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [self loadMessages:^(NSArray *messages, NSError *error) {
    [self show:^(NSArray *messages, NSError *error) {
        //: [wself.layout layoutAfterRefresh];
        [wself.layout my];
        //: if (messages.count) {
        if (messages.count) {
            //: [wself insertMessages:messages];
            [wself bar:messages];
        }
        //: if (messages.count)
        if (messages.count)
        {
            //: [wself checkReceipts:nil];
            [wself magnitudeeract:nil];
            //: [wself markRead:NO];
            [wself keyWithFile:NO];
        }

        //: [wself refreshAllChatExtendDatasByMessages:messages];
        [wself exceptShould:messages];
    //: }];
    }];
}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate

//: - (void)playAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)playAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: if (!error)
    if (!error)
    {
        //: BOOL disable = [self.sessionConfig respondsToSelector:@selector(disableAutoPlayAudio)] && [self.sessionConfig disableAutoPlayAudio];
        BOOL disable = [self.sessionConfig respondsToSelector:@selector(imageSession)] && [self.sessionConfig imageSession];
        //: if (!disable)
        if (!disable)
        {
            //: [self playNextAudio];
            [self needIn];
        }
    }
}

//: - (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: if (!error)
    if (!error)
    {
        //: BOOL disable = [self.sessionConfig respondsToSelector:@selector(disableAutoPlayAudio)] && [self.sessionConfig disableAutoPlayAudio];
        BOOL disable = [self.sessionConfig respondsToSelector:@selector(imageSession)] && [self.sessionConfig imageSession];
        //: if (!disable)
        if (!disable)
        {
            //: [self playNextAudio];
            [self needIn];
        }
    }
}

//: - (void)playNextAudio
- (void)needIn
{
    //: NIMMessage *message = self.pendingAudioMessages.lastObject;
    NIMMessage *message = self.pendingAudioMessages.lastObject;
    //: if (self.pendingAudioMessages.count) {
    if (self.pendingAudioMessages.count) {
        //: [self.pendingAudioMessages removeLastObject];
        [self.pendingAudioMessages removeLastObject];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: [[BusyKitAudioCenter instance] play:message];
            [[BarCenter disable] scaleWith:message];
        //: });
        });
    }
}


//: #pragma mark - Private
#pragma mark - Private

//是否需要开启自动设置所有消息已读 ： 某些场景不需要自动设置消息已读，如使用 3D touch 的场景预览会话界面内容
//: - (BOOL)shouldAutoMarkRead
- (BOOL)teamRead
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableAutoMarkMessageRead)]) {
    if ([self.sessionConfig respondsToSelector:@selector(telephoneMessageDown)]) {
        //: should = ![self.sessionConfig disableAutoMarkMessageRead];
        should = ![self.sessionConfig telephoneMessageDown];
    }
    //: return should;
    return should;
}

//: - (BusyKitMediaFetcher *)mediaFetcher
- (ParentFetcher *)mediaFetcher
{
    //: if (!_mediaFetcher) {
    if (!_mediaFetcher) {
        //: _mediaFetcher = [[BusyKitMediaFetcher alloc] init];
        _mediaFetcher = [[ParentFetcher alloc] init];
    }
    //: return _mediaFetcher;
    return _mediaFetcher;
}

//: - (void)addListener
- (void)messageListener
{
    //声音的监听放在 viewWillApear 回调里，不在这里添加
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(vcBecomeActive:) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tables:) name:UIApplicationDidBecomeActiveNotification object:nil];
    //: if (self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam) {
    if (self.session.sessionType == NIMSessionTypeTeam || self.session.sessionType == NIMSessionTypeSuperTeam) {
        //: extern NSString *const dreamMessageTableKey;
        extern NSString *const dreamMessageTableKey;
        //: extern NSString *const k_pathIdent;
        extern NSString *const k_pathIdent;

        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamInfoHasUpdatedNotification:) name:dreamMessageTableKey object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(infoCreate:) name:dreamMessageTableKey object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onTeamMembersHasUpdatedNotification:) name:k_pathIdent object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(nearCanShould:) name:k_pathIdent object:nil];
    }

    //: extern NSString *const notiArrayName;
    extern NSString *const notiArrayName;
    //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(onUserInfoHasUpdatedNotification:) name:notiArrayName object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(files:) name:notiArrayName object:nil];
}

//: - (void)removeListenner
- (void)key
{
    //声音的监听放在 viewDidDisappear 回调里，不在这里移除
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (NSMutableArray *)findRemainAudioMessages:(NIMMessage *)message
- (NSMutableArray *)chromatic:(NIMMessage *)message
{
    //: if (message.isPlayed || [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
    if (message.isPlayed || [message.from isEqualToString:[NIMSDK sharedSDK].loginManager.currentAccount]) {
        //如果这条音频消息被播放过了 或者这条消息是属于自己的消息，则不进行轮播
        //: return nil;
        return nil;
    }
    //: NSMutableArray *messages = [[NSMutableArray alloc] init];
    NSMutableArray *messages = [[NSMutableArray alloc] init];
    //: [self.dataSource.items enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [self.dataSource.user enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if ([obj isKindOfClass:[BusyMessageModel class]]) {
        if ([obj isKindOfClass:[MoreModel class]]) {
            //: BusyMessageModel *model = (BusyMessageModel *)obj;
            MoreModel *model = (MoreModel *)obj;
            //: BOOL isFromMe = [model.message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
            BOOL isFromMe = [model.message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
            //: if ([model.message.messageId isEqualToString:message.messageId])
            if ([model.message.messageId isEqualToString:message.messageId])
            {
                //: *stop = YES;
                *stop = YES;
            }
            //: else if (model.message.messageType == NIMMessageTypeAudio && !isFromMe && !model.message.isPlayed)
            else if (model.message.messageType == NIMMessageTypeAudio && !isFromMe && !model.message.isPlayed)
            {
                //: [messages addObject:model.message];
                [messages addObject:model.message];
            }
        }
    //: }];
    }];
    //: return messages;
    return messages;
}


//: - (void)processChatroomMessageModels
- (void)overTagRemove
{
    //: NSInteger pendingMessageCount = self.pendingChatroomModels.count;
    NSInteger pendingMessageCount = self.pendingChatroomModels.count;
    //: if (pendingMessageCount == 0) {
    if (pendingMessageCount == 0) {
        //: return;
        return;
    }
    //: if ([self.layout canInsertChatroomMessages])
    if ([self.layout canOrMessages])
    {
        //: static NSInteger NTESMaxInsert = 2;
        static NSInteger NTESMaxInsert = 2;
        //: NSArray *insert = nil;
        NSArray *insert = nil;
        //: NSRange range;
        NSRange range;
        //: if (pendingMessageCount > NTESMaxInsert)
        if (pendingMessageCount > NTESMaxInsert)
        {
            //: range = NSMakeRange(0, NTESMaxInsert);
            range = NSMakeRange(0, NTESMaxInsert);
        }
        //: else
        else
        {
            //: range = NSMakeRange(0, pendingMessageCount);
            range = NSMakeRange(0, pendingMessageCount);
        }
        //: insert = [self.pendingChatroomModels subarrayWithRange:range];
        insert = [self.pendingChatroomModels subarrayWithRange:range];
        //: [self.pendingChatroomModels removeObjectsInRange:range];
        [self.pendingChatroomModels removeObjectsInRange:range];
        //: NSUInteger leftPendingMessageCount = self.pendingChatroomModels.count;
        NSUInteger leftPendingMessageCount = self.pendingChatroomModels.count;
        //: BOOL animated = leftPendingMessageCount== 0;
        BOOL animated = leftPendingMessageCount== 0;
        //: NIMSessionMessageOperateResult *result = [self.dataSource addMessageModels:insert];
        AppMore *result = [self.dataSource selected:insert];
        //: [self.layout insert:result.indexpaths animated:animated];
        [self.layout informationAnimated:result.indexpaths title:animated];

        //聊天室消息最大保存消息量，超过这个消息量则把消息列表的前一半挪出内存。
        //: static NSInteger NTESMaxChatroomMessageCount = 200;
        static NSInteger NTESMaxChatroomMessageCount = 200;
        //: NSInteger count = self.dataSource.items.count;
        NSInteger count = self.dataSource.user.count;
        //: if (count > NTESMaxChatroomMessageCount) {
        if (count > NTESMaxChatroomMessageCount) {
            //: NSRange deleteRange = NSMakeRange(0, count/2);
            NSRange deleteRange = NSMakeRange(0, count/2);
            //: NSArray *delete = [self.dataSource deleteModels:deleteRange];
            NSArray *delete = [self.dataSource cover:deleteRange];
            //: [self.layout remove:delete];
            [self.layout cellDisable:delete];
        }

        //: [self processChatroomMessageModels];
        [self overTagRemove];
    }
    //: else
    else
    {
        //不能插入是为了保证界面流畅，比如滑动，此时暂停处理
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: NSTimeInterval delay = 1;
        NSTimeInterval delay = 1;
        //: dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
        dispatch_after(dispatch_time((0ull), (int64_t)(delay * 1000000000ull)), dispatch_get_main_queue(), ^{
            //: [weakSelf processChatroomMessageModels];
            [weakSelf overTagRemove];
        //: });
        });
    }
}

//: #pragma mark - 聊天扩展相关
#pragma mark - 聊天扩展相关

//: - (void)refreshAllChatExtendDatasByMessage:(NIMMessage *)message
- (void)month:(NIMMessage *)message
{
    //: BusyMessageModel *model = [self findMessageModel:message];
    MoreModel *model = [self with:message];
    //: if (model)
    if (model)
    {
        //: [self refreshAllChatExtendDatasByModel:model completion:nil];
        [self voiceUnder:model byShow:nil];
    }
}

//: - (void)refreshAllChatExtendDatasByMessages:(NSArray<NIMMessage *> *)messages
- (void)exceptShould:(NSArray<NIMMessage *> *)messages
{
    //: for (NIMMessage *message in messages)
    for (NIMMessage *message in messages)
    {
        //: [self refreshAllChatExtendDatasByMessage:message];
        [self month:message];
    }
}

//: - (void)refreshAllAfterFetchCommentsByMessages:(NSArray<NIMMessage *> *)messages
- (void)bottom:(NSArray<NIMMessage *> *)messages
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[NIMSDK sharedSDK].chatExtendManager fetchQuickComments:messages
    [[NIMSDK sharedSDK].chatExtendManager fetchQuickComments:messages
                                                  //: completion:^(NSError * error, NSMapTable<NIMMessage *,NSArray<NIMQuickComment *> *> * result,NSArray *failedMessages)
                                                  completion:^(NSError * error, NSMapTable<NIMMessage *,NSArray<NIMQuickComment *> *> * result,NSArray *failedMessages)
    {
        //: [weakSelf refreshAllChatExtendDatasByMessages:messages];
        [weakSelf exceptShould:messages];
    //: }];
    }];
}

//: - (void)refreshAllAfterFetchCommentsByModels:(NSArray<BusyMessageModel *> *)models
- (void)container:(NSArray<MoreModel *> *)models
{
    //: NSMutableArray *messages = [NSMutableArray array];
    NSMutableArray *messages = [NSMutableArray array];
    //: for(BusyMessageModel *model in models)
    for(MoreModel *model in models)
    {
        //: [messages addObject:model.message];
        [messages addObject:model.message];
    }

    //: [self refreshAllAfterFetchCommentsByMessages:messages];
    [self bottom:messages];
}

//: - (void)refreshAllChatExtendDatasBySubModel:(BusyMessageModel *)model
- (void)load:(MoreModel *)model
                                 //: completion:(NIMSessionInteractorHandler)completion
                                 past:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: NIMMessage *threadMessage = [self threadMessageOfMessage:message];
    NIMMessage *threadMessage = [self viewLength:message];
    //: BusyMessageModel *threadMessageModel = [self findMessageModel:threadMessage];
    MoreModel *threadMessageModel = [self with:threadMessage];
    //: if (threadMessage)
    if (threadMessage)
    {
        //: [self refreshAllChatExtendDatasByModel:threadMessageModel completion:completion];
        [self voiceUnder:threadMessageModel byShow:completion];
    }
    //: else
    else
    {
       //: if (completion)
       if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
    }
}

//: - (void)refreshAllChatExtendDatasByModel:(BusyMessageModel *)model
- (void)voiceUnder:(MoreModel *)model
                              //: completion:(NIMSessionInteractorHandler)completion
                              byShow:(NIMSessionInteractorHandler)completion

{

    // Thread & 被回复消息
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self loadThreadAndRepliedMessages:model completion:^(BOOL success, id result)
    [self compartment:model languageOutside:^(BOOL success, id result)
    {
        //: if (success)
        if (success)
        {
            //: [weakSelf uiReloadMessageCell:model.message];
            [weakSelf quantitativeRelation:model.message];
        }

        //: if (completion)
        if (completion)
        {
            //: completion(success, result);
            completion(success, result);
        }
    //: }];
    }];

    // 该消息的子消息
    //: [self loadChildMessages:model completion:^(BOOL success, id result)
    [self messages:model member:^(BOOL success, id result)
    {
        //: if (success)
        if (success)
        {
            //: [weakSelf uiReloadMessageCell:model.message];
            [weakSelf quantitativeRelation:model.message];
        }

        //: if (completion)
        if (completion)
        {
            //: completion(success, result);
            completion(success, result);
        }
    //: }];
    }];

    // 该消息的快捷回复
    //: [self loadQuickComments:model completion:^(BOOL success, id result)
    [self recentTool:model thanLoad:^(BOOL success, id result)
    {
        //: if (success)
        if (success)
        {
            //: [weakSelf uiReloadMessageCell:model.message];
            [weakSelf quantitativeRelation:model.message];
        }

        //: if (completion)
        if (completion)
        {
            //: completion(success, result);
            completion(success, result);
        }
    //: }];
    }];
}


//: - (void)refreshAllChatExtendDatasByModels:(NSArray<BusyMessageModel *> *)models
- (void)maxWith:(NSArray<MoreModel *> *)models
                               //: completion:(NIMSessionInteractorHandler)completion
                               row:(NIMSessionInteractorHandler)completion
{
    //: for (BusyMessageModel *model in models)
    for (MoreModel *model in models)
    {
        //: [self refreshAllChatExtendDatasByModel:model completion:nil];
        [self voiceUnder:model byShow:nil];
    }
}

//: - (void)refreshQuickComments:(NIMMessage *)message
- (void)green:(NIMMessage *)message
                  //: completion:(NIMSessionInteractorHandler)completion
                  send:(NIMSessionInteractorHandler)completion
{
   //: BusyMessageModel *model = [self findMessageModel:message];
   MoreModel *model = [self with:message];
    //: if (model)
    if (model)
    {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [self loadQuickComments:model completion:^(BOOL success, id result) {
        [self recentTool:model thanLoad:^(BOOL success, id result) {
            //: [weakSelf uiReloadMessageCell:message];
            [weakSelf quantitativeRelation:message];
            //: if (completion)
            if (completion)
            {
                //: completion(success, result);
                completion(success, result);
            }
        //: }];
        }];
    }
    //: else
    else
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
    }
}

//: - (void)loadThreadAndRepliedMessages:(BusyMessageModel *)model
- (void)compartment:(MoreModel *)model
                          //: completion:(NIMSessionInteractorHandler)completion
                          languageOutside:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!model.enableRepliedContent || !message)
    if (!model.enableRepliedContent || !message)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    // 父消息
    //: NIMMessage *threadMessage = nil;
    NIMMessage *threadMessage = nil;
    //: if (message.threadMessageId.length > 0)
    if (message.threadMessageId.length > 0)
    {
       //: threadMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session messageIds:@[message.threadMessageId]] firstObject];
       threadMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session messageIds:@[message.threadMessageId]] firstObject];
       //: model.parentMessage = threadMessage;
       model.parentMessage = threadMessage;
        //: if (!threadMessage)
        if (!threadMessage)
        {
            //: NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            //: key.messageID = message.threadMessageId;
            key.messageID = message.threadMessageId;
            //: key.fromAccount = message.threadMessageFrom;
            key.fromAccount = message.threadMessageFrom;
            //: key.toAccount = message.threadMessageTo;
            key.toAccount = message.threadMessageTo;
            //: key.serverID = message.threadMessageServerId;
            key.serverID = message.threadMessageServerId;
            //: key.timestamp = message.threadMessageTime;
            key.timestamp = message.threadMessageTime;
            //: key.type = message.session.sessionType;
            key.type = message.session.sessionType;

            //: if (key.messageID.length == 0)
            if (key.messageID.length == 0)
            {
                //: if (completion)
                if (completion)
                {
                    //: completion(NO, nil);
                    completion(NO, nil);
                }
                //: return;
                return;
            }

            //: [self fetchMessageInfo:key completion:^(BOOL success, NIMMessage *result) {
            [self infoShow:key messageDown:^(BOOL success, NIMMessage *result) {
                //: model.parentMessage = result;
                model.parentMessage = result;

                //: if (completion)
                if (completion)
                {
                    //: completion(success, nil);
                    completion(success, nil);
                }
            //: }];
            }];
        }
        //: else
        else
        {
            //: if (completion)
            if (completion)
            {
                //: completion(NO, nil);
                completion(NO, nil);
            }
        }
    }

    // 被回复消息
    //: NIMMessage *repliedMessage = nil;
    NIMMessage *repliedMessage = nil;
    //: if (message.repliedMessageId.length > 0)
    if (message.repliedMessageId.length > 0)
    {
       //: repliedMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session
       repliedMessage = [[[NIMSDK sharedSDK].conversationManager messagesInSession:message.session
                                                                        //: messageIds:@[message.repliedMessageId]] firstObject];
                                                                        messageIds:@[message.repliedMessageId]] firstObject];
        //: if (!repliedMessage)
        if (!repliedMessage)
        {
            //: NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            NIMChatExtendBasicInfo *key = [[NIMChatExtendBasicInfo alloc] init];
            //: key.messageID = message.repliedMessageId;
            key.messageID = message.repliedMessageId;
            //: key.fromAccount = message.repliedMessageFrom;
            key.fromAccount = message.repliedMessageFrom;
            //: key.toAccount = message.repliedMessageTo;
            key.toAccount = message.repliedMessageTo;
            //: key.serverID = message.repliedMessageServerId;
            key.serverID = message.repliedMessageServerId;
            //: key.timestamp = message.repliedMessageTime;
            key.timestamp = message.repliedMessageTime;
            //: key.type = message.session.sessionType;
            key.type = message.session.sessionType;

            //: if (!key)
            if (!key)
            {
                //: if (completion)
                if (completion)
                {
                    //: completion(NO, nil);
                    completion(NO, nil);
                }
                //: return;
                return;
            }

            //: [self fetchMessageInfo:key completion:^(BOOL success, NIMMessage *result) {
            [self infoShow:key messageDown:^(BOOL success, NIMMessage *result) {
                //: model.repliedMessage = result;
                model.repliedMessage = result;

                //: if (completion)
                if (completion)
                {
                    //: completion(success, nil);
                    completion(success, nil);
                }
            //: }];
            }];
        }
        //: else
        else
        {
            //: model.repliedMessage = repliedMessage;
            model.repliedMessage = repliedMessage;
            //: if (completion)
            if (completion)
            {
                //: completion(YES, nil);
                completion(YES, nil);
            }
        }
    }
}

//: - (void)fetchMessageInfo:(NIMChatExtendBasicInfo *)info
- (void)infoShow:(NIMChatExtendBasicInfo *)info
              //: completion:(NIMSessionInteractorHandler)completion
              messageDown:(NIMSessionInteractorHandler)completion
{
    //: if (!info)
    if (!info)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    //: [[NIMSDK sharedSDK].chatExtendManager fetchHistoryMessages:@[info]
    [[NIMSDK sharedSDK].chatExtendManager fetchHistoryMessages:@[info]
                                                      //: syncToDB:YES
                                                      syncToDB:YES
                                                    //: completion:^(NSError * error, NSMapTable<NIMChatExtendBasicInfo *,NIMMessage *> * result)
                                                    completion:^(NSError * error, NSMapTable<NIMChatExtendBasicInfo *,NIMMessage *> * result)
    {
        //: if (error)
        if (error)
        {
            //: if (completion)
            if (completion)
            {
                //: completion(NO, nil);
                completion(NO, nil);
            }
            //: return;
            return;
        }

        //: completion(YES, [result objectForKey:info]);
        completion(YES, [result objectForKey:info]);
    //: }];
    }];
}

//: - (void)loadChildMessages:(BusyMessageModel *)model
- (void)messages:(MoreModel *)model
               //: completion:(NIMSessionInteractorHandler)completion
               member:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!model.enableSubMessages || !message)
    if (!model.enableSubMessages || !message)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: NSArray *subMessages = [[NIMSDK sharedSDK].chatExtendManager subMessages:message];
        NSArray *subMessages = [[NIMSDK sharedSDK].chatExtendManager subMessages:message];
        //: model.childMessages = subMessages;
        model.childMessages = subMessages;
        //: model.childMessagesCount = [[NIMSDK sharedSDK].chatExtendManager subMessagesCount:message];
        model.childMessagesCount = [[NIMSDK sharedSDK].chatExtendManager subMessagesCount:message];
        //: dispatch_async(dispatch_get_main_queue(), ^{
        dispatch_async(dispatch_get_main_queue(), ^{
            //: if (completion && subMessages.count > 0)
            if (completion && subMessages.count > 0)
            {
                //: completion(YES, subMessages);
                completion(YES, subMessages);
            }
        //: });
        });

    //: });
    });
}

//: - (void)loadQuickComments:(BusyMessageModel *)model
- (void)recentTool:(MoreModel *)model
               //: completion:(NIMSessionInteractorHandler)completion
               thanLoad:(NIMSessionInteractorHandler)completion
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: if (!model.enableQuickComments || !message)
    if (!model.enableQuickComments || !message)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(NO, nil);
            completion(NO, nil);
        }
        //: return;
        return;
    }

    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message
                                                      //: completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
                                                      completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NIMQuickComment *> * _Nullable result)
    {
        //: if (completion)
        if (completion)
        {
            //: model.quickComments = result;
            model.quickComments = result;
            //: if (result.count > 0)
            if (result.count > 0)
            {
                //: model.emoticonsContainerSize = [BusyKitQuickCommentUtil containerSizeWithComments:result];
                model.emoticonsContainerSize = [TapColorUtil bioLab:result];
            }
            //: else
            else
            {
                //: model.emoticonsContainerSize = CGSizeZero;
                model.emoticonsContainerSize = CGSizeZero;
            }
            //: if (error) {
            if (error) {
                //: completion(NO, nil);
                completion(NO, nil);
            //: } else {
            } else {
                //: if (result) {
                if (result) {
                    //: completion(YES, result);
                    completion(YES, result);
                //: } else {
                } else {
                    //: completion(NO, nil);
                    completion(NO, nil);
                }
            }
        }
    //: }];
    }];
}

//: - (void)uiReloadThreadMessageBySubMessage:(BusyMessageModel *)model
- (void)bubble:(MoreModel *)model
{
    //: NIMMessage *message = model.message;
    NIMMessage *message = model.message;
    //: NIMMessage *threadMessage = [self threadMessageOfMessage:message];
    NIMMessage *threadMessage = [self viewLength:message];
    //: if (threadMessage)
    if (threadMessage)
    {
        //: [self uiReloadMessageCell:threadMessage];
        [self quantitativeRelation:threadMessage];
    }
}

//: - (void)uiReloadMessageCell:(NIMMessage *)message
- (void)quantitativeRelation:(NIMMessage *)message
{
    //: if (!message)
    if (!message)
    {
        //: return;
        return;
    }
    //: BusyMessageModel *model = [self findMessageModel:message];
    MoreModel *model = [self with:message];
    //: if (model)
    if (model)
    {
//        AppMore *result = [self.dataSource updateMessageModel:model];
//        NSInteger index = [result.indexpaths.firstObject row];
//        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
//        [self safelyReloadRowAtIndexPath:indexPath];

        //: [self safelyReloadRowAtIndexPath:nil];
        [self screen:nil];
    }
    //: return;
    return;
}


//: - (NIMMessage *)threadMessageOfMessage:(NIMMessage *)message
- (NIMMessage *)viewLength:(NIMMessage *)message
{
    //: NIMSession *session = message.session;
    NIMSession *session = message.session;
    //: NSString *messageID = message.threadMessageId;
    NSString *messageID = message.threadMessageId;
    //: if (messageID.length == 0)
    if (messageID.length == 0)
    {
        //: return nil;
        return nil;
    }
    //: return [[[NIMSDK sharedSDK].conversationManager messagesInSession:session messageIds:@[messageID]] firstObject];
    return [[[NIMSDK sharedSDK].conversationManager messagesInSession:session messageIds:@[messageID]] firstObject];
}

//: - (void)safelyReloadRowAtIndexPath:(NSIndexPath *)indexPath
- (void)screen:(NSIndexPath *)indexPath
{
    //: if (self.dataSource.items.count != [self.layout numberOfRows]) {
    if (self.dataSource.user.count != [self.layout isClean]) {
        //: NSLog(@"Error: trying to reload message while cell count: %zd is not equal to item count %zd.", [self.layout numberOfRows], self.dataSource.items.count);
        //: return;
        return;
    }

    //: if (indexPath) {
    if (indexPath) {
        // 修改批量未读消息的问题
        //: [self.layout update:indexPath];
        [self.layout socialStatus:indexPath];
    //: } else {
    } else {
        //: [self.layout reloadTable];
        [self.layout holderTo];
    }
}


//: @end
@end
