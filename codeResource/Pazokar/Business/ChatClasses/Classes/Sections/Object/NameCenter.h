// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableData.h
// Case
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"
//: #import "FFFSessionPrivateProtocol.h"
#import "FFFSessionPrivateProtocol.h"
//: #import "FFFSessionConfig.h"
#import "QuantityelligenceInformationCan.h"

//: @interface FFFSessionDataSourceImpl : NSObject<NIMSessionDataSource>
@interface NameCenter : NSObject<DirectionSource>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithName:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         comment:(id<QuantityelligenceInformationCan>)sessionConfig;

//: @end
@end