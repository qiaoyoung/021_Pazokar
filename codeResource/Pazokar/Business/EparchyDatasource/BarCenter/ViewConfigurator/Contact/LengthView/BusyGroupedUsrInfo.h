// __DEBUG__
// __CLOSE_PRINT__
//
//  BusyGroupedUsrInfo.h
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyContactDefines.h"
#import "BusyContactDefines.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @interface NIMGroupUser:NSObject<NIMGroupMemberProtocol>
@interface PtolemaicSystemReload:NSObject<DatePraise>

//: @property (nonatomic,readonly) BusyKitInfo *info;
@property (nonatomic,readonly) Info *info;

//: - (instancetype)initWithUserId:(NSString *)userId;
- (instancetype)initWithManager:(NSString *)userId;

//: @end
@end

//: @interface NIMGroupTeamMember:NSObject<NIMGroupMemberProtocol>
@interface SortMember:NSObject<DatePraise>

//: @property (nonatomic,readonly) BusyKitInfo *info;
@property (nonatomic,readonly) Info *info;

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithPoint:(NSString *)userId
                       //: session:(NIMSession *)session;
                       key:(NIMSession *)session;

//: @end
@end


//: @interface NIMGroupTeam:NSObject<NIMGroupMemberProtocol>
@interface PointCenter:NSObject<DatePraise>

//: @property (nonatomic,readonly) BusyKitInfo *info;
@property (nonatomic,readonly) Info *info;

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithPin:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType;
                      incentiveStockOption:(NIMKitTeamType)teamType;

//: @end
@end
