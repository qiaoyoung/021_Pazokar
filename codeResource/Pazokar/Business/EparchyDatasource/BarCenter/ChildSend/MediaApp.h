// __DEBUG__
// __CLOSE_PRINT__
//
//  MediaApp.h
//  NIM
//
//  Created by chris on 15/6/29.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

// __M_A_C_R_O__

//: @class NIMCommonTableRow;
@class PublicAppearRow;

//: @protocol BusyCommonTableViewCell <NSObject>
@protocol MediaApp <NSObject>

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
- (instancetype)initWithDisable:(UITableViewCellStyle)style to:(NSString *)reuseIdentifier;

//: @optional
@optional
//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;
- (void)should:(PublicAppearRow *)rowData position_strong:(UITableView *)tableView;

//: @end
@end
