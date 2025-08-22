// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageCellFactory.h
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMessageCellFactory.h"
#import "MessageFactory.h"
//: #import "NTESTimestampCell.h"
#import "AlongView.h"
//: #import "NTESMergeMessageCell.h"
#import "NameMessageCell.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESMessageCellFactory : FFFMessageCellFactory
@interface MessageCellFactory : MessageFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (NameMessageCell *)littleLeagueTeam:(UITableView*)tableView
                           //: forMessageMode:(FFFMessageModel *)model;
                           size:(MoreModel *)model;

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (AlongView *)net:(UITableView *)tableView
                          //: forTimeModel:(FFFTimestampModel *)model;
                          total:(AppRow *)model;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END