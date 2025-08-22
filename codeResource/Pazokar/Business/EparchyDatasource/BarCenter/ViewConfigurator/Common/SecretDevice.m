
#import <Foundation/Foundation.h>

NSString *StringFromRefreshData(Byte *data);


//: info must be fired in main thread
Byte noti_justiceKey[] = {17, 33, 92, 7, 187, 185, 254, 197, 202, 194, 203, 124, 201, 209, 207, 208, 124, 190, 193, 124, 194, 197, 206, 193, 192, 124, 197, 202, 124, 201, 189, 197, 202, 124, 208, 196, 206, 193, 189, 192, 148};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SecretDevice.m
// Case
//
//  Created by chris on 16/6/13.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyKitNotificationFirer.h"
#import "SecretDevice.h"

//: NSString *const notiArrayName = @"notiArrayName";
NSString *const notiArrayName = @"notiArrayName";
//: NSString *const dreamMessageTableKey = @"dreamMessageTableKey";
NSString *const dreamMessageTableKey = @"dreamMessageTableKey";

//: NSString *const NIMKitUserBlackListHasUpdatedNotification = @"NIMKitUserBlackListHasUpdatedNotification";
NSString *const noti_kitName = @"NIMKitUserBlackListHasUpdatedNotification";
//: NSString *const NIMKitUserMuteListHasUpdatedNotification = @"NIMKitUserMuteListHasUpdatedNotification";
NSString *const user_insideFormat = @"NIMKitUserMuteListHasUpdatedNotification";

//: NSString *const k_pathIdent = @"k_pathIdent";
NSString *const k_pathIdent = @"k_pathIdent";

//: NSString *const mFileThreadTitle = @"InfoId";
NSString *const mFileThreadTitle = @"InfoId";

//: @implementation BusyKitNotificationFirer
@implementation SecretDevice

//: - (instancetype)init{
- (instancetype)init{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _timer = [[BusyKitTimerHolder alloc] init];
        _timer = [[NameWith alloc] init];
        //: _timeInterval = 1.0f;
        _timeInterval = 1.0f;
        //: _cachedInfo = [[NSMutableDictionary alloc] init];
        _cachedInfo = [[NSMutableDictionary alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)addFireInfo:(NIMKitFirerInfo *)info{
- (void)putOff:(StateText *)info{
    //: NSAssert([NSThread currentThread].isMainThread, @"info must be fired in main thread");
    NSAssert([NSThread currentThread].isMainThread, StringFromRefreshData(noti_justiceKey));
    //: if (!self.cachedInfo.count) {
    if (!self.cachedInfo.count) {
        //: [self.timer startTimer:self.timeInterval delegate:self repeats:NO];
        [self.timer icon:self.timeInterval size:self title:NO];
    }
    //: [self.cachedInfo setObject:info forKey:info.saveIdentity];
    [self.cachedInfo setObject:info forKey:info.tingIdentity];
}

//: #pragma mark - BusyKitTimerHolderDelegate
#pragma mark - ChildRefresh

//: - (void)onNIMKitTimerFired:(BusyKitTimerHolder *)holder{
- (void)alonging:(NameWith *)holder{
    //: NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    //: for (NIMKitFirerInfo *info in self.cachedInfo.allValues) {
    for (StateText *info in self.cachedInfo.allValues) {
        //: NSMutableArray *fireInfos = dict[info.notificationName];
        NSMutableArray *fireInfos = dict[info.notificationName];
        //: if (!fireInfos) {
        if (!fireInfos) {
            //: fireInfos = [[NSMutableArray alloc] init];
            fireInfos = [[NSMutableArray alloc] init];
            //: dict[info.notificationName] = fireInfos;
            dict[info.notificationName] = fireInfos;
        }
        //: if (info.fireObject) {
        if (info.searched) {
            //: [fireInfos addObject:info.fireObject];
            [fireInfos addObject:info.searched];
        }
    }

    //: for (NSString *notificationName in dict) {
    for (NSString *notificationName in dict) {
        //: NSDictionary *userInfo = dict[notificationName]? @{ mFileThreadTitle:dict[notificationName] } : nil;
        NSDictionary *userInfo = dict[notificationName]? @{ mFileThreadTitle:dict[notificationName] } : nil;
        //: [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
        [[NSNotificationCenter defaultCenter] postNotificationName:notificationName object:nil userInfo:userInfo];
    }

    //: [self.cachedInfo removeAllObjects];
    [self.cachedInfo removeAllObjects];
}


//: @end
@end


//: @implementation NIMKitFirerInfo
@implementation StateText

//: - (NSObject *)fireObject
- (NSObject *)searched
{
    //: if (self.session) {
    if (self.session) {
        //: return self.session.sessionId;
        return self.session.sessionId;
    }
    //: return [NSNull null];
    return [NSNull null];
}

//: - (NSString *)saveIdentity
- (NSString *)tingIdentity
{
    //: if (self.session) {
    if (self.session) {
        //: return [NSString stringWithFormat:@"%@-%zd",self.session.sessionId,self.session.sessionType];;
        return [NSString stringWithFormat:@"%@-%zd",self.session.sessionId,self.session.sessionType];;
    }
    //: return self.notificationName;
    return self.notificationName;
}

//: @end
@end

Byte * RefreshDataToCache(Byte *data) {
    int director = data[0];
    int respectivelyNeighborhood = data[1];
    Byte idealNeighborhood = data[2];
    int messageLeadership = data[3];
    if (!director) return data + messageLeadership;
    for (int i = messageLeadership; i < messageLeadership + respectivelyNeighborhood; i++) {
        int value = data[i] - idealNeighborhood;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[messageLeadership + respectivelyNeighborhood] = 0;
    return data + messageLeadership;
}

NSString *StringFromRefreshData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)RefreshDataToCache(data)];
}
