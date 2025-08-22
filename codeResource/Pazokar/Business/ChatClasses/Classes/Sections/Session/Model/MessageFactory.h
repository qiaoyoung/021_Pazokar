// __DEBUG__
// __CLOSE_PRINT__
//
//  BusyMessageCellMaker.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "BusyMessageCell.h"
#import "CompartmentViewCell.h"
//: #import "BusySessionTimestampCell.h"
#import "MaxRedViewCell.h"
//: #import "BusyCellConfig.h"
#import "BusyCellConfig.h"
//: #import "BusyMessageCellProtocol.h"
#import "BusyMessageCellProtocol.h"

//: @interface BusyMessageCellFactory : NSObject
@interface MessageFactory : NSObject

//: - (BusyMessageCell *)cellInTable:(UITableView*)tableView
- (CompartmentViewCell *)progressRange:(UITableView*)tableView
                 //: forMessageMode:(BusyMessageModel *)model;
                 message:(MoreModel *)model;

//: - (BusySessionTimestampCell *)cellInTable:(UITableView *)tableView
- (MaxRedViewCell *)toAGreaterExtent:(UITableView *)tableView
                            //: forTimeModel:(BusyTimestampModel *)model;
                            tinkle:(AppRow *)model;

//: @end
@end
