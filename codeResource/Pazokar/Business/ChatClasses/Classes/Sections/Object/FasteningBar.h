// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionInteractor.h
// Case
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "BusySessionPrivateProtocol.h"
#import "BusySessionPrivateProtocol.h"
//: #import "BusySessionConfigurateProtocol.h"
#import "BusySessionConfigurateProtocol.h"

//: @interface BusySessionInteractorImpl : NSObject<NIMSessionInteractor,NIMSessionLayoutDelegate>
@interface FasteningBar : NSObject<TagRed,StigmatizePlayer>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithSession:(NIMSession *)session
                         //: config:(id<BusySessionConfig>)sessionConfig;
                         distance:(id<QuantityelligenceInformationCan>)sessionConfig;

//: @property(nonatomic,weak) id<NIMSessionInteractorDelegate> delegate;
@property(nonatomic,weak) id<StateModel> delegate;

//: @property(nonatomic,strong) id<NIMSessionDataSource> dataSource;
@property(nonatomic,strong) id<DirectionSource> dataSource;

//: @property(nonatomic,strong) id<NIMSessionLayout> layout;
@property(nonatomic,strong) id<ChildContent> layout;

//: @end
@end
