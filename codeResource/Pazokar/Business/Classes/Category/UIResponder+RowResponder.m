// __DEBUG__
// __CLOSE_PRINT__
//
//  UIResponder+RowResponder.m
//  NIM
//
//  Created by chris on 15/9/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIResponder+NTESFirstResponder.h"
#import "UIResponder+RowResponder.h"

//: static __weak id currentFirstResponder;
static __weak id showOptionMsg;
//: static __weak id currentSecodResponder;
static __weak id mainTextKey;

//: @implementation UIResponder (NTESFirstResponder)
@implementation UIResponder (RowResponder)

//: + (instancetype)currentFirstResponder {
+ (instancetype)remote {
    //: currentFirstResponder = nil;
    showOptionMsg = nil;
    //: currentSecodResponder = nil;
    mainTextKey = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(itemResponder:) to:nil from:nil forEvent:nil];
    //: return currentFirstResponder;
    return showOptionMsg;
}

//: + (instancetype)currentSecondResponder{
+ (instancetype)cell{
    //: currentFirstResponder = nil;
    showOptionMsg = nil;
    //: currentSecodResponder = nil;
    mainTextKey = nil;
    //: [[UIApplication sharedApplication] sendAction:@selector(findFirstResponder:) to:nil from:nil forEvent:nil];
    [[UIApplication sharedApplication] sendAction:@selector(itemResponder:) to:nil from:nil forEvent:nil];
    //: return currentSecodResponder;
    return mainTextKey;
}

//: - (void)findFirstResponder:(id)sender {
- (void)itemResponder:(id)sender {
    //: currentFirstResponder = self;
    showOptionMsg = self;
    //: [self.nextResponder findSecondResponder:sender];
    [self.nextResponder option:sender];
}


//: - (void)findSecondResponder:(id)sender{
- (void)option:(id)sender{
    //: currentSecodResponder = self;
    mainTextKey = self;
}

//: @end
@end