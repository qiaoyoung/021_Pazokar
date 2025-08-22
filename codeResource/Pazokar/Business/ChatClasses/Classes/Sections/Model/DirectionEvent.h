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
//: #import "FFFMessageModel.h"
#import "MoreModel.h"

//: @interface FFFKitEvent : NSObject
@interface DirectionEvent : NSObject

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @property (nonatomic,strong) FFFMessageModel *messageModel;
@property (nonatomic,strong) MoreModel *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @end
@end




//: extern NSString *const FFFKitEventNameTapContent;
extern NSString *const notiMessageId;
//: extern NSString *const FFFKitEventNameTapLabelLink;
extern NSString *const user_commentFormat;
//: extern NSString *const FFFKitEventNameTapAudio;
extern NSString *const mainEventId;

//: extern NSString *const FFFKitEventNameTapRepliedContent;
extern NSString *const m_restoreMessage;