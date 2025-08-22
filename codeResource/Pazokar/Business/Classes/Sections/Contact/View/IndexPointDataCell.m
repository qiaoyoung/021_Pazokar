// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexPointDataCell.m
//  NIM
//
//  Created by chris on 2017/4/7.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataCell.h"
#import "IndexPointDataCell.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"

//: @implementation NTESContactDataCell
@implementation IndexPointDataCell

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member
- (void)periodOfTimeUser:(id<DatePraise>)member
{
    //: [super refreshUser:member];
    [super periodOfTimeUser:member];
    //: NSString *state = [NTESSessionUtil onlineState:self.memberId detail:NO];
    NSString *state = [DeviceDate container:self.memberId tingFrame:NO];
    //: NSString *title = @"";
    NSString *title = @"";
//    if (state.length)
//    {
//        title = [NSString stringWithFormat:@"[%@] %@",state,member.showName];
//    }
//    else
//    {
        //: title = [NSString stringWithFormat:@"%@",member.showName];
        title = [NSString stringWithFormat:@"%@",member.begin];
//    }

    //: self.textLabel.text = title;
    self.textLabel.text = title;
}


//: @end
@end