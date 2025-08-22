// __DEBUG__
// __CLOSE_PRINT__
//
//  DirectionEvent.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "BusyMessageModel.h"
#import "MoreModel.h"

//: @interface BusyKitEvent : NSObject
@interface DirectionEvent : NSObject

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @property (nonatomic,strong) BusyMessageModel *messageModel;
@property (nonatomic,strong) MoreModel *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @end
@end




//: extern NSString *const BusyKitEventNameTapContent;
extern NSString *const notiMessageId;
//: extern NSString *const BusyKitEventNameTapLabelLink;
extern NSString *const user_commentFormat;
//: extern NSString *const BusyKitEventNameTapAudio;
extern NSString *const mainEventId;

//: extern NSString *const BusyKitEventNameTapRepliedContent;
extern NSString *const m_restoreMessage;
