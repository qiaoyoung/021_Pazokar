// __DEBUG__
// __CLOSE_PRINT__
//
//  AppRow.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "BusyCellConfig.h"
#import "BusyCellConfig.h"

//: @interface BusyTimestampModel : NSObject
@interface AppRow : NSObject

/**
 *  时间戳
 */
//: @property (nonatomic, assign) NSTimeInterval messageTime;
@property (nonatomic, assign) NSTimeInterval messageTime;

/**
*  Cell 高度
*/
//: @property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat height;

//: @end
@end
