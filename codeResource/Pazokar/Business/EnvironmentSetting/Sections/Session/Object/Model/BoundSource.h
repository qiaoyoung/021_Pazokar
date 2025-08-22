// __DEBUG__
// __CLOSE_PRINT__
//
//  BoundSource.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @class NTESMessageModel;
@class TheoreticalAccountMessageModel;
//: @class NTESMultiRetweetAttachment;
@class ModelText;

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMergeMessageDataSource : NSObject
@interface BoundSource : NSObject

//: @property (nonatomic, strong) NSMutableArray<NTESMessageModel *> *items;
@property (nonatomic, strong) NSMutableArray<TheoreticalAccountMessageModel *> *items;

//: - (void)pullDataWithAttachment:(NTESMultiRetweetAttachment *)attachment
- (void)queryed:(ModelText *)attachment
                    //: completion:(void (^)(NSString *msg))complete;
                    message:(void (^)(NSString *msg))complete;

//: - (NSIndexPath * _Nullable)updateMessage:(NIMMessage *)message;
- (NSIndexPath * _Nullable)qualifyInfoMessage:(NIMMessage *)message;

//: - (NTESMessageModel *)setupMessageModel:(NIMMessage *)message;
- (TheoreticalAccountMessageModel *)make:(NIMMessage *)message;

//: - (NSMutableArray<NTESMessageModel *> *)itemsWithMessages:(NSMutableArray <NIMMessage *> *)messages;
- (NSMutableArray<TheoreticalAccountMessageModel *> *)pinView:(NSMutableArray <NIMMessage *> *)messages;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END