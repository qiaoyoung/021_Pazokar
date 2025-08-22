// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFSessionConfigurateProtocol.h
// Case
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFMessageModel.h"
#import "MoreModel.h"

// __M_A_C_R_O__

//: typedef NS_ENUM(NSUInteger, NIMKitSessionState) {
typedef NS_ENUM(NSUInteger, NIMKitSessionState) {
    //: NIMKitSessionStateNormal = 0,
    NIMKitSessionStateNormal = 0,
    //: NIMKitSessionStateSelect,
    NIMKitSessionStateSelect,
//: };
};

//: @protocol NIMSessionInteractorDelegate <NSObject>
@protocol StateModel <NSObject>

//: - (void)didFetchMessageData;
- (void)barLeft;

//: - (void)didRefreshMessageData;
- (void)collectionDisable;

//: - (void)didPullUpMessageData;
- (void)courseTing;


//: @end
@end

//: @protocol NIMSessionInteractor <NSObject>
@protocol TagRed <NSObject>

//网络接口
//: - (void)sendMessage:(NIMMessage *)message;
- (void)keyBottom:(NIMMessage *)message;

//: - (void)sendMessage:(NIMMessage *)message toMessage:(NIMMessage *)toMessage;
- (void)dedication:(NIMMessage *)message need:(NIMMessage *)toMessage;

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * error))completion;
- (void)empty:(NIMMessage *)message heliogramAdd:(void(^)(NSError * error))completion;

//: - (void)sendMessage:(NIMMessage *)message
- (void)sizeHandleSuccess:(NIMMessage *)message
          //: toMessage:(NIMMessage *)toMessage
          message:(NIMMessage *)toMessage
         //: completion:(void(^)(NSError * error))completion;
         quick:(void(^)(NSError * error))completion;


//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)ting:(NSArray *)messages;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)my:(NIMQuickComment *)comment
             //: completion:(void(^)(NSError *error))completion;
             label:(void(^)(NSError *error))completion;

//: - (void)addQuickComment:(NIMQuickComment *)comment
- (void)bar:(NIMQuickComment *)comment
              //: toMessage:(NIMMessage *)toMessage
              dateDoing:(NIMMessage *)toMessage
             //: completion:(void(^)(NSError *error))completion;
             immobilizeCompletion:(void(^)(NSError *error))completion;

//: - (void)delQuickComment:(NIMQuickComment *)comment
- (void)insertFilter:(NIMQuickComment *)comment
          //: targetMessage:(NIMMessage *)message
          targetCompletion:(NIMMessage *)message
             //: completion:(void(^)(NSError *error))completion;
             to:(void(^)(NSError *error))completion;


//界面操作接口
//: - (void)addMessages:(NSArray *)messages;
- (void)between:(NSArray *)messages;

//: - (void)insertMessages:(NSArray *)messages;
- (void)bar:(NSArray *)messages;

//: - (FFFMessageModel *)updateMessage:(NIMMessage *)message;
- (MoreModel *)modify:(NIMMessage *)message;

//: - (FFFMessageModel *)deleteMessage:(NIMMessage *)message;
- (MoreModel *)messageFind:(NIMMessage *)message;

//: - (void)addPinForMessage:(NIMMessage *)message;
- (void)user:(NIMMessage *)message;

//: - (void)removePinForMessage:(NIMMessage *)message;
- (void)alongBuild:(NIMMessage *)message;

//数据接口
//: - (NSArray *)items;
- (NSArray *)view;

//: - (void)markRead:(BOOL)needMarkDataModel;
- (void)keyWithFile:(BOOL)needMarkDataModel;

//: - (FFFMessageModel *)findMessageModel:(NIMMessage *)message;
- (MoreModel *)with:(NIMMessage *)message;

//: - (BOOL)shouldHandleReceipt;
- (BOOL)heliogramClean;

//: - (void)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (void)magnitudeeract:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)resetMessages:(void (^)(NSError *error))handler;
- (void)sessionMessages:(void (^)(NSError *error))handler;

//: - (void)loadMessages:(void (^)(NSArray *messages, NSError *error))handler;
- (void)show:(void (^)(NSArray *messages, NSError *error))handler;

//: - (void)pullUpMessages:(void(^)(NSArray *messages, NSError *error))handler;
- (void)upwardsBarInput:(void(^)(NSArray *messages, NSError *error))handler;

//: - (NSInteger)findMessageIndex:(NIMMessage *)message;
- (NSInteger)circle:(NIMMessage *)message;

//: - (BOOL)messageCanBeSelected:(NIMMessage *)message;
- (BOOL)be:(NIMMessage *)message;

//: - (void)loadMessagePins:(void (^)(NSError *error))handler;
- (void)info:(void (^)(NSError *error))handler;

//: - (void)willDisplayMessageModel:(FFFMessageModel *)model;
- (void)child:(MoreModel *)model;

//排版接口

//: - (void)resetLayout;
- (void)item;

//: - (void)changeLayout:(CGFloat)inputHeight;
- (void)colorLayout:(CGFloat)inputHeight;

//: - (void)cleanCache;
- (void)duringScreenRecording;

//: - (void)pullUp;
- (void)manage;

//按钮响应接口
//: - (void)mediaAudioPressed:(FFFMessageModel *)messageModel;
- (void)item:(MoreModel *)messageModel;

//: - (void)mediaPicturePressed;
- (void)vertical;

//: - (void)mediaShootPressed;
- (void)titleInvite;

//: - (void)mediaLocationPressed;
- (void)input;

//页面状态同步接口

//: - (void)onViewWillAppear;
- (void)modelAppear;

//: - (void)onViewDidDisappear;
- (void)vanguardDate;

//页面状态切换接口(正常/选择)
//: - (NIMKitSessionState)sessionState;
- (NIMKitSessionState)encounter;

//: - (void)setSessionState:(NIMKitSessionState)sessionState;
- (void)setEncounter:(NIMKitSessionState)sessionState;

//: - (void)setReferenceMessage:(NIMMessage *)message;
- (void)setMagnitudeRelation:(NIMMessage *)message;

//: @end
@end