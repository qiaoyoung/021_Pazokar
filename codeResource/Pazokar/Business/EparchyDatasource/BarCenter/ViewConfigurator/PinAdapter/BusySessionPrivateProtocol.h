// __DEBUG__
// __CLOSE_PRINT__
//
//  BusySessionPrivateProtocol.h
// Case
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//
//: #import "BusySessionViewController.h"
#import "DirectionViewController.h"

// __M_A_C_R_O__

//: @class NIMMessage;
@class NIMMessage;
//: @class BusyMessageModel;
@class MoreModel;

//: @interface NIMSessionMessageOperateResult : NSObject
@interface AppMore : NSObject

//: @property (nonatomic,copy) NSArray *indexpaths;
@property (nonatomic,copy) NSArray *indexpaths;

//: @property (nonatomic,copy) NSArray *messageModels;
@property (nonatomic,copy) NSArray *messageModels;

//: @end
@end

//: @protocol NIMSessionDataSource <NSObject>
@protocol DirectionSource <NSObject>

//: - (NSArray *)items;
- (NSArray *)user;

//: - (NIMSessionMessageOperateResult *)addMessageModels:(NSArray *)models;
- (AppMore *)selected:(NSArray *)models;

//: - (NIMSessionMessageOperateResult *)insertMessageModels:(NSArray *)models;
- (AppMore *)pull:(NSArray *)models;

//: - (NIMSessionMessageOperateResult *)deleteMessageModel:(BusyMessageModel *)model;
- (AppMore *)tipDisable:(MoreModel *)model;

//: - (NIMSessionMessageOperateResult *)updateMessageModel:(BusyMessageModel *)model;
- (AppMore *)consuetude:(MoreModel *)model;

//: - (BusyMessageModel *)findModel:(NIMMessage *)message;
- (MoreModel *)image:(NIMMessage *)message;

//: - (NSInteger)indexAtModelArray:(BusyMessageModel *)model;
- (NSInteger)bodyPart:(MoreModel *)model;

//: - (NSArray *)deleteModels:(NSRange)range;
- (NSArray *)cover:(NSRange)range;

//: - (void)resetMessages:(void(^)(NSError *error))handler;
- (void)button:(void(^)(NSError *error))handler;

//: - (void)enhancedResetMessages:(void(^)(NSError *error, NSArray *))handler;
- (void)quantity:(void(^)(NSError *error, NSArray *))handler;

//: - (void)loadHistoryMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;
- (void)aggregation:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;

//: - (void)loadNewMessagesWithComplete:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;
- (void)messagesChange:(void(^)(NSInteger index, NSArray *messages , NSError *error))handler;

//: - (void)checkAttachmentState:(NSArray *)messages;
- (void)someFinish:(NSArray *)messages;

//: - (NSDictionary *)checkReceipts:(NSArray<NIMMessageReceipt *> *)receipts;
- (NSDictionary *)keyUser:(NSArray<NIMMessageReceipt *> *)receipts;

//: - (void)sendMessageReceipt:(NSArray *)messages;
- (void)dayReceipt:(NSArray *)messages;

//: - (void)cleanCache;
- (void)messageTing;

//: - (void)refreshMessageModelShowSelect:(BOOL)isShow;
- (void)ironedQuery:(BOOL)isShow;

//: - (void)loadMessagePins:(void (^)(NSError *))handler;
- (void)complete:(void (^)(NSError *))handler;

// 展示message之前做额外配置
//: - (void)willDisplayMessageModel:(BusyMessageModel *)model;
- (void)flash:(MoreModel *)model;

//: - (void)addPinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)session:(NIMMessage *)message inheritance:(void (^)(NSError *))handler;

//: - (void)removePinForMessage:(NIMMessage *)message callback:(void (^)(NSError *))handler;
- (void)info:(NIMMessage *)message bottom:(void (^)(NSError *))handler;

//: @end
@end


//: @protocol NIMSessionLayoutDelegate <NSObject>
@protocol StigmatizePlayer <NSObject>

//: - (void)onRefresh;
- (void)restoreShow;

//: @end
@end

//: @protocol NIMSessionLayout <NSObject>
@protocol ChildContent <NSObject>

//: - (void)update:(NSIndexPath *)indexPath;
- (void)socialStatus:(NSIndexPath *)indexPath;

//: - (void)insert:(NSArray *)indexPaths animated:(BOOL)animated;
- (void)informationAnimated:(NSArray *)indexPaths title:(BOOL)animated;

//: - (void)remove:(NSArray *)indexPaths;
- (void)cellDisable:(NSArray *)indexPaths;

//: - (BOOL)canInsertChatroomMessages;
- (BOOL)canOrMessages;

//: - (void)calculateContent:(BusyMessageModel *)model;
- (void)assemblage:(MoreModel *)model;

//: - (void)reloadTable;
- (void)holderTo;

//: - (void)resetLayout;
- (void)min;

//: - (void)changeLayout:(CGFloat)inputViewHeight;
- (void)streetSmart:(CGFloat)inputViewHeight;

//: - (void)setDelegate:(id<NIMSessionLayoutDelegate>)delegate;
- (void)setDelegate:(id<StigmatizePlayer>)delegate;

//: - (void)layoutAfterRefresh;
- (void)my;

//: - (void)adjustOffset:(NSInteger)row;
- (void)volition:(NSInteger)row;

//: - (void)dismissReplyContent;
- (void)inputDoing;

//: - (NSInteger)numberOfRows;
- (NSInteger)isClean;

//: @end
@end





//: @interface BusySessionViewController(Interactor)
@interface DirectionViewController(Interactor)

//: - (void)setInteractor:(id<NIMSessionInteractor>) interactor;
- (void)setInteractor:(id<TagRed>) interactor;

//: - (void)setTableDelegate:(id<UITableViewDelegate, UITableViewDataSource>) tableDelegate;
- (void)setToManager:(id<UITableViewDelegate, UITableViewDataSource>) tableDelegate;

//: @end
@end
