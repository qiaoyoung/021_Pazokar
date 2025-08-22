// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESTeamCardMemberItem.h
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "BusyCardDataSourceProtocol.h"
#import "BusyCardDataSourceProtocol.h"

//: @interface NIMCardMemberItem : NSObject<BusyKitCardHeaderData>
@interface NameItem : NSObject<BusyKitCardHeaderData>

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @end
@end

//: @interface BusyTeamCardMemberItem : NSObject<BusyKitCardHeaderData>
@interface HomegirlFormat : NSObject<BusyKitCardHeaderData>

//: @property (nonatomic, readonly) NIMTeamMember *member;
@property (nonatomic, readonly) NIMTeamMember *member;

//: @property (nonatomic, copy) NSString *userId;
@property (nonatomic, copy) NSString *userId;

//: @property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;
@property (nonatomic, assign) NIMKitCardHeaderOpeator opeator;

//: - (instancetype)initWithMember:(NIMTeamMember *)member
- (instancetype)initWithRead:(NIMTeamMember *)member
                      //: teamType:(NIMTeamType)teamType;
                      showDoing:(NIMTeamType)teamType;

//: @end
@end
