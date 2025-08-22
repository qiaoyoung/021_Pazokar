// __DEBUG__
// __CLOSE_PRINT__
//
//  Holder.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESTimerHolder.h"
#import "Holder.h"

//: @interface NTESTimerHolder ()
@interface Holder ()
{
    //: NSTimer *_timer;
    NSTimer *_timer;
    //: BOOL _repeats;
    BOOL _repeats;
}
//: - (void)onTimer: (NSTimer *)timer;
- (void)keyGreenTap: (NSTimer *)timer;
//: @end
@end

//: @implementation NTESTimerHolder
@implementation Holder

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self streetSmart];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)praise: (NSTimeInterval)seconds
          //: delegate: (id<NTESTimerHolderDelegate>)delegate
          showHolderDelegate: (id<PerspectiveDelegate>)delegate
           //: repeats: (BOOL)repeats
           size: (BOOL)repeats
{
    //: _timerDelegate = delegate;
    _timerDelegate = delegate;
    //: _repeats = repeats;
    _repeats = repeats;
    //: if (_timer)
    if (_timer)
    {
        //: [_timer invalidate];
        [_timer invalidate];
        //: _timer = nil;
        _timer = nil;
    }
    //: _timer = [NSTimer scheduledTimerWithTimeInterval:seconds
    _timer = [NSTimer scheduledTimerWithTimeInterval:seconds
                                              //: target:self
                                              target:self
                                            //: selector:@selector(onTimer:)
                                            selector:@selector(keyGreenTap:)
                                            //: userInfo:nil
                                            userInfo:nil
                                             //: repeats:repeats];
                                             repeats:repeats];
}

//: - (void)stopTimer
- (void)streetSmart
{
    //: [_timer invalidate];
    [_timer invalidate];
    //: _timer = nil;
    _timer = nil;
    //: _timerDelegate = nil;
    _timerDelegate = nil;
}

//: - (void)onTimer: (NSTimer *)timer
- (void)keyGreenTap: (NSTimer *)timer
{
    //: if (!_repeats)
    if (!_repeats)
    {
        //: _timer = nil;
        _timer = nil;
    }
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onNTESTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(changes:)])
    {
        //: [_timerDelegate onNTESTimerFired:self];
        [_timerDelegate changes:self];
    }
}

//: @end
@end