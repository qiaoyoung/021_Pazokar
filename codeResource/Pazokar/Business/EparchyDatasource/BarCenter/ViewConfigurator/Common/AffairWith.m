// __DEBUG__
// __CLOSE_PRINT__
//
//  AffairWith.m
// Case
//
//  Created by chris on 2017/11/3.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyKitKeyboardInfo.h"
#import "AffairWith.h"

//: NSNotificationName const NIMKitKeyboardWillChangeFrameNotification = @"NIMKitKeyboardWillChangeFrameNotification";
NSNotificationName const notiMakeIdent = @"NIMKitKeyboardWillChangeFrameNotification";
//: NSNotificationName const NIMKitKeyboardWillHideNotification = @"NIMKitKeyboardWillHideNotification";
NSNotificationName const mUserFormat = @"NIMKitKeyboardWillHideNotification";

//: @implementation BusyKitKeyboardInfo
@implementation AffairWith

//: @synthesize keyboardHeight = _keyboardHeight;
@synthesize keyboardHeight = _keyboardHeight;

//: + (instancetype)instance
+ (instancetype)liquidEcstasyInstance
{
    //: static BusyKitKeyboardInfo *instance;
    static AffairWith *instance;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[BusyKitKeyboardInfo alloc] init];
        instance = [[AffairWith alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}


//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillChangeFrame:) name:UIKeyboardWillChangeFrameNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(ating:) name:UIKeyboardWillChangeFrameNotification object:nil];
        //: [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(backgroundText:) name:UIKeyboardWillHideNotification object:nil];
    }
    //: return self;
    return self;
}


//: - (void)keyboardWillChangeFrame:(NSNotification *)notification
- (void)ating:(NSNotification *)notification
{
    //: NSDictionary *userInfo = notification.userInfo;
    NSDictionary *userInfo = notification.userInfo;
    //: CGRect endFrame = [userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    CGRect endFrame = [userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    //: _isVisiable = endFrame.origin.y != [UIApplication sharedApplication].windows.firstObject.frame.size.height;
    _isVisiable = endFrame.origin.y != [UIApplication sharedApplication].windows.firstObject.frame.size.height;
    //: _keyboardHeight = _isVisiable? endFrame.size.height: 0;
    _keyboardHeight = _isVisiable? endFrame.size.height: 0;
    //: [[NSNotificationCenter defaultCenter] postNotificationName:NIMKitKeyboardWillChangeFrameNotification object:nil userInfo:notification.userInfo];
    [[NSNotificationCenter defaultCenter] postNotificationName:notiMakeIdent object:nil userInfo:notification.userInfo];
}



//: - (void)keyboardWillHide:(NSNotification *)notification
- (void)backgroundText:(NSNotification *)notification
{
    //: _isVisiable = NO;
    _isVisiable = NO;
    //: _keyboardHeight = 0;
    _keyboardHeight = 0;
    //: [[NSNotificationCenter defaultCenter] postNotificationName:NIMKitKeyboardWillHideNotification object:nil userInfo:notification.userInfo];
    [[NSNotificationCenter defaultCenter] postNotificationName:mUserFormat object:nil userInfo:notification.userInfo];
}




//: @end
@end
