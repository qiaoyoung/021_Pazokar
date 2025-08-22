// __DEBUG__
// __CLOSE_PRINT__
//
//  NameWith.m
//  NIM
//
//  Created by amao on 5/16/14.
//  Copyright (c) 2014 amao. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyKitTimerHolder.h"
#import "NameWith.h"

//: @interface BusyKitTimerHolder ()
@interface NameWith ()
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

//: @implementation BusyKitTimerHolder
@implementation NameWith

//: - (void)dealloc
- (void)dealloc
{
    //: [self stopTimer];
    [self backBy];
}

//: - (void)startTimer: (NSTimeInterval)seconds
- (void)icon: (NSTimeInterval)seconds
          //: delegate: (id<BusyKitTimerHolderDelegate>)delegate
          size: (id<ChildRefresh>)delegate
           //: repeats: (BOOL)repeats
           title: (BOOL)repeats
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
- (void)backBy
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
    //: if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(onNIMKitTimerFired:)])
    if (_timerDelegate && [_timerDelegate respondsToSelector:@selector(alonging:)])
    {
        //: [_timerDelegate onNIMKitTimerFired:self];
        [_timerDelegate alonging:self];
    }
}

//: @end
@end
