// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFMessageCellMaker.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFMessageCell.h"
#import "CompartmentViewCell.h"
//: #import "FFFSessionTimestampCell.h"
#import "MaxRedViewCell.h"
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"
//: #import "FFFMessageCellProtocol.h"
#import "FFFMessageCellProtocol.h"

//: @interface FFFMessageCellFactory : NSObject
@interface MessageFactory : NSObject

//: - (FFFMessageCell *)cellInTable:(UITableView*)tableView
- (CompartmentViewCell *)progressRange:(UITableView*)tableView
                 //: forMessageMode:(FFFMessageModel *)model;
                 message:(MoreModel *)model;

//: - (FFFSessionTimestampCell *)cellInTable:(UITableView *)tableView
- (MaxRedViewCell *)toAGreaterExtent:(UITableView *)tableView
                            //: forTimeModel:(FFFTimestampModel *)model;
                            tinkle:(AppRow *)model;

//: @end
@end