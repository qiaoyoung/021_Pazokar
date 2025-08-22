
#import <Foundation/Foundation.h>

NSString *StringFromIllegalData(Byte *data);


//: #A148FF
Byte user_voiceStr[] = {6, 7, 11, 16, 114, 248, 215, 89, 157, 138, 223, 70, 70, 56, 52, 49, 65, 35, 1};

//: #EEEEEE
Byte main_programmingPath[] = {64, 7, 9, 145, 115, 151, 244, 5, 129, 69, 69, 69, 69, 69, 69, 35, 83};

//: #fffBusy
Byte mainPateMessage[] = {40, 7, 10, 86, 244, 176, 151, 79, 15, 253, 102, 102, 102, 102, 102, 102, 35, 74};

//: contact_tag_fragment_sure
Byte user_handlePath[] = {43, 25, 10, 182, 250, 173, 113, 42, 254, 24, 101, 114, 117, 115, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 185};

//: icon_cell_blue_normal
Byte mainRisingTitle[] = {86, 21, 12, 67, 121, 113, 240, 4, 31, 81, 18, 32, 108, 97, 109, 114, 111, 110, 95, 101, 117, 108, 98, 95, 108, 108, 101, 99, 95, 110, 111, 99, 105, 209};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AggregationView.m
// Case
//
//  Created by chris on 15/9/15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyContactSelectTabView.h"
#import "AggregationView.h"
//: #import "BusyContactPickedView.h"
#import "LengthView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "BusyGlobalMacro.h"
#import "BusyGlobalMacro.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @implementation BusyContactSelectTabView
@implementation AggregationView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _pickedView = [[BusyContactPickedView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _pickedView = [[LengthView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self addSubview:_pickedView];
        [self addSubview:_pickedView];

        //: _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: UIImage *doneButtonNormal = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonNormal = [UIImage grayishInColour:StringFromIllegalData(mainRisingTitle) magnitude:[UIColor status:StringFromIllegalData(user_voiceStr)]];
        //: UIImage *doneButtonHighlighted = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonHighlighted = [UIImage grayishInColour:StringFromIllegalData(mainRisingTitle) magnitude:[UIColor status:StringFromIllegalData(user_voiceStr)]];
        //: [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        //: [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        //: [_doneButton setTitle:[BusyLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_doneButton setTitle:[SendName streetSmart:StringFromIllegalData(user_handlePath)] forState:UIControlStateNormal];
        //: [_doneButton sizeToFit];
        [_doneButton sizeToFit];
        //: _doneButton.nim_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.nim_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.nim_width + 12.0)),
        _doneButton.nim_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.nim_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.nim_width + 12.0)),
                                          //: doneButtonNormal.size.height);
                                          doneButtonNormal.size.height);
        //: [self addSubview:_doneButton];
        [self addSubview:_doneButton];
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"contact_bg"]];
        //: self.backgroundColor = [UIColor colorWithHexString:@"#fffBusy"];
        self.backgroundColor = [UIColor status:StringFromIllegalData(mainPateMessage)];

        //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
        line.backgroundColor = [UIColor status:StringFromIllegalData(main_programmingPath)];
        //: [self addSubview:line];
        [self addSubview:line];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat spacing = 15.f;
    CGFloat spacing = 15.f;
    //: _pickedView.nim_height = self.nim_height;
    _pickedView.nim_height = self.nim_height;
    //: _pickedView.nim_width = self.nim_width - _doneButton.nim_width - spacing;
    _pickedView.nim_width = self.nim_width - _doneButton.nim_width - spacing;
    //: CGFloat doneButtonRight = 15.f;
    CGFloat doneButtonRight = 15.f;
    //: _doneButton.nim_right = self.nim_width - doneButtonRight;
    _doneButton.nim_right = self.nim_width - doneButtonRight;
    //: _doneButton.nim_centerY = self.nim_height * .5f;
    _doneButton.nim_centerY = self.nim_height * .5f;
}

//: @end
@end

Byte * IllegalDataToCache(Byte *data) {
    int towerRecord = data[0];
    int sliceForbid = data[1];
    int furtherPosse = data[2];
    if (!towerRecord) return data + furtherPosse;
    for (int i = 0; i < sliceForbid / 2; i++) {
        int begin = furtherPosse + i;
        int end = furtherPosse + sliceForbid - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[furtherPosse + sliceForbid] = 0;
    return data + furtherPosse;
}

NSString *StringFromIllegalData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)IllegalDataToCache(data)];
}  
