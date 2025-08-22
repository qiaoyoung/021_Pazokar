
#import <Foundation/Foundation.h>

NSString *StringFromHandleShowData(Byte *data);        


//: video_chat_push.mp3
Byte k_reliabilityStr[] = {74, 19, 36, 7, 180, 91, 242, 82, 69, 64, 65, 75, 59, 63, 68, 61, 80, 59, 76, 81, 79, 68, 10, 73, 76, 15, 112};

//: messageChild
Byte user_redSideSeparateMessage[] = {17, 12, 63, 13, 5, 136, 65, 211, 32, 193, 146, 18, 154, 46, 38, 52, 52, 34, 40, 38, 4, 41, 42, 45, 37, 8};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlayerData.m
//  NIM
//
//  Created by amao on 2017/5/4.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVNotifier.h"
#import "PlayerData.h" 
//: @import AudioToolbox;
@import AudioToolbox;


//: static void VibrateCompletion(SystemSoundID soundID, void *data)
static void positionCompletion(SystemSoundID soundID, void *data)
{
    //: id notifier = (__bridge id)data;
    id notifier = (__bridge id)data;
    //: if([notifier isKindOfClass:[NTESAVNotifier class]])
    if([notifier isKindOfClass:[PlayerData class]])
    {
        //: SEL selector = NSSelectorFromString(@"vibrate");
        SEL selector = NSSelectorFromString(StringFromHandleShowData(user_redSideSeparateMessage));
        //: SuppressPerformSelectorLeakWarning([(NTESAVNotifier *)notifier performSelector:selector withObject:nil afterDelay:1.0]);
        SuppressPerformSelectorLeakWarning([(PlayerData *)notifier performSelector:selector withObject:nil afterDelay:1.0]);
    }
}

//: @interface NTESAVNotifier ()
@interface PlayerData ()
//: @property (nonatomic,strong) UILocalNotification *currentNotification;
@property (nonatomic,strong) UILocalNotification *currentNotification;
//: @property (nonatomic,assign) BOOL shouldStopVibrate;
@property (nonatomic,assign) BOOL shouldStopVibrate;
//: @property (nonatomic,assign) NSInteger vibrateCount;
@property (nonatomic,assign) NSInteger vibrateCount;

//: @end
@end

//: @implementation NTESAVNotifier
@implementation PlayerData
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(willEnterForeground:)
                                                 selector:@selector(addForeground:)
                                                     //: name:UIApplicationWillEnterForegroundNotification
                                                     name:UIApplicationWillEnterForegroundNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)start:(NSString *)text
- (void)click:(NSString *)text
{
    //: if ([[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground)
    if ([[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground)
    {
        //: return;
        return;
    }
    //: [self stop];
    [self select];
    //: _vibrateCount = 0;
    _vibrateCount = 0;
    //: _shouldStopVibrate = NO;
    _shouldStopVibrate = NO;
    //: [self raiseNotification:text];
    [self background:text];
    //: [self vibrate];
    [self messageChild];

}

//: - (void)stop
- (void)select
{
    //: if (_currentNotification)
    if (_currentNotification)
    {
        //: [[UIApplication sharedApplication] cancelLocalNotification:_currentNotification];
        [[UIApplication sharedApplication] cancelLocalNotification:_currentNotification];
        //: _currentNotification = nil;
        _currentNotification = nil;
    }
    //: _shouldStopVibrate = YES;
    _shouldStopVibrate = YES;
}

//: - (void)willEnterForeground:(NSNotification *)notification
- (void)addForeground:(NSNotification *)notification
{
    //: [self stop];
    [self select];
}

//: - (void)vibrate
- (void)messageChild
{
    //: if (!_shouldStopVibrate)
    if (!_shouldStopVibrate)
    {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, NULL, NULL, VibrateCompletion, (__bridge void *)self);
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, NULL, NULL, positionCompletion, (__bridge void *)self);

        //: _vibrateCount++;
        _vibrateCount++;
        //: if (_vibrateCount >= 15)
        if (_vibrateCount >= 15)
        {
            //: _shouldStopVibrate = YES;
            _shouldStopVibrate = YES;
        }
    }
}

//: - (void)raiseNotification:(NSString *)text
- (void)background:(NSString *)text
{
    //: _currentNotification = [[UILocalNotification alloc] init];
    _currentNotification = [[UILocalNotification alloc] init];
    //: _currentNotification.soundName = @"video_chat_push.mp3";
    _currentNotification.soundName = StringFromHandleShowData(k_reliabilityStr);
    //: _currentNotification.alertBody = text;
    _currentNotification.alertBody = text;

    //: [[UIApplication sharedApplication] presentLocalNotificationNow:_currentNotification];
    [[UIApplication sharedApplication] presentLocalNotificationNow:_currentNotification];
}
//: @end
@end

Byte * HandleShowDataToCache(Byte *data) {
    int decisionMaker = data[0];
    int cellSize = data[1];
    Byte mallOff = data[2];
    int subdivision = data[3];
    if (!decisionMaker) return data + subdivision;
    for (int i = subdivision; i < subdivision + cellSize; i++) {
        int value = data[i] + mallOff;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[subdivision + cellSize] = 0;
    return data + subdivision;
}

NSString *StringFromHandleShowData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)HandleShowDataToCache(data)];
}
