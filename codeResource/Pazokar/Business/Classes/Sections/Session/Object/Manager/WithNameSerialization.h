// __DEBUG__
// __CLOSE_PRINT__
//
//  WithNameSerialization.h
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @class NTESMessageSerializationInfo;
@class TingInfo;

//: typedef void(^NTESMessageEncodeResult)(NSError * _Nullable error, NTESMessageSerializationInfo * _Nullable info);
typedef void(^NTESMessageEncodeResult)(NSError * _Nullable error, TingInfo * _Nullable info);
//: typedef void(^NTESMessageDecodeResult)(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages);
typedef void(^NTESMessageDecodeResult)(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages);

//: @interface NTESMessageSerialization : NSObject
@interface WithNameSerialization : NSObject

//: - (void)encode:(NSArray <NIMMessage *>*)messages
- (void)at:(NSArray <NIMMessage *>*)messages
       //: encrypt:(BOOL)encrypt
       messageWith:(BOOL)encrypt
      //: password:(NSString *)password
      view:(NSString *)password
    //: completion:(NTESMessageEncodeResult)completion;
    more:(NTESMessageEncodeResult)completion;

//: - (void)decode:(NSString *)filePath
- (void)shouldBy:(NSString *)filePath
       //: encrypt:(BOOL)encrypt
       canister:(BOOL)encrypt
      //: password:(NSString *)password
      picture:(NSString *)password
    //: completion:(NTESMessageDecodeResult)completion;
    viewShould:(NTESMessageDecodeResult)completion;

//: @end
@end

//: @interface NTESMessageSerializationInfo : NSObject
@interface TingInfo : NSObject

//: @property (nonatomic, copy) NSString *filePath;
@property (nonatomic, copy) NSString *filePath;

//: @property (nonatomic, copy) NSString *md5;
@property (nonatomic, copy) NSString *md5;

//: @property (nonatomic, assign) BOOL encrypted;
@property (nonatomic, assign) BOOL encrypted;

//: @property (nonatomic, copy) NSString *password;
@property (nonatomic, copy) NSString *password;

//: @property (nonatomic, assign) BOOL compressed;
@property (nonatomic, assign) BOOL compressed;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END