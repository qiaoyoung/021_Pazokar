// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleText.m
//  NIM
//
//  Created by Netease on 15/8/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCADisplayLinkHolder.h"
#import "TitleText.h"

//: @implementation NTESCADisplayLinkHolder
@implementation TitleText
{
    //: CADisplayLink *_displayLink;
    CADisplayLink *_displayLink;
}

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _frameInterval = 1;
        _frameInterval = 1;
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [self stop];
    [self behindRecent];
    //: _delegate = nil;
    _delegate = nil;
}

//: - (void)startCADisplayLinkWithDelegate:(id<NTESCADisplayLinkHolderDelegate>)delegate
- (void)length:(id<TapMaxDelegate>)delegate
{
    //: _delegate = delegate;
    _delegate = delegate;
    //: [self stop];
    [self behindRecent];
    //: _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(onDisplayLink:)];
    _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(inputLink:)];
    //: [_displayLink setFrameInterval:_frameInterval];
    [_displayLink setFrameInterval:_frameInterval];
    //: [_displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    [_displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
}

//: - (void)stop
- (void)behindRecent
{
    //: if (_displayLink){
    if (_displayLink){
        //: [_displayLink invalidate];
        [_displayLink invalidate];
        //: _displayLink = nil;
        _displayLink = nil;
    }
}

//: - (void)onDisplayLink: (CADisplayLink *) displayLink
- (void)inputLink: (CADisplayLink *) displayLink
{
    //: if (_delegate && [_delegate respondsToSelector:@selector(onDisplayLinkFire:duration:displayLink:)]){
    if (_delegate && [_delegate respondsToSelector:@selector(picture:bar:should:)]){
        //: [_delegate onDisplayLinkFire:self
        [_delegate picture:self
                            //: duration:displayLink.duration
                            bar:displayLink.duration
                         //: displayLink:displayLink];
                         should:displayLink];
    }
}

//: @end
@end