// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCustomSysNotiSender.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESCustomSysNotificationSender : NSObject
@interface ChildShared : NSObject

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session;
- (void)key:(NSString *)content blueish:(NIMSession *)session;

//: - (void)sendTypingState:(NIMSession *)session;
- (void)space:(NIMSession *)session;

//: - (void)sendCallNotification:(NIMTeam *)team
- (void)by:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    lavatoryTextLength:(NSString *)roomName
                     //: members:(NSArray *)members;
                     image:(NSArray *)members;

//: @end
@end