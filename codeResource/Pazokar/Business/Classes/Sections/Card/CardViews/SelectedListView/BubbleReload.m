// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleReload.m
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SelectedListModel.h"
#import "BubbleReload.h"

//: @implementation SelectedListModel
@implementation BubbleReload

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithThread:(NSInteger)sid
                      //: Title:(NSString *)title{
                      tagName:(NSString *)title{

    //: return [[SelectedListModel alloc] initWithSid:sid Title:title Context:nil];
    return [[BubbleReload alloc] initWithNeed:sid image:title message:nil];
}

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithNeed:(NSInteger)sid
                      //: Title:(NSString *)title
                      image:(NSString *)title
                    //: Context:(id)context{
                    message:(id)context{

    //: self = [super init];
    self = [super init];

    //: if (self) {
    if (self) {

        //: _sid = sid;
        _sid = sid;

        //: _title = title;
        _title = title;

        //: _context = context;
        _context = context;
    }

    //: return self;
    return self;
}

//: @end
@end