
#import <Foundation/Foundation.h>

@interface HonestlyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation HonestlyData

+ (instancetype)sharedInstance {
    static HonestlyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)HonestlyDataToCache:(Byte *)data {
    int objectAye = data[0];
    int chronicle = data[1];
    for (int i = 0; i < objectAye / 2; i++) {
        int begin = chronicle + i;
        int end = chronicle + objectAye - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[chronicle + objectAye] = 0;
    return data + chronicle;
}

- (NSString *)StringFromHonestlyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HonestlyDataToCache:data]];
}  

//: _ntes
- (NSString *)notiNameText {
    /* static */ NSString *notiNameText = nil;
    if (!notiNameText) {
        Byte value[] = {5, 5, 248, 15, 113, 115, 101, 116, 110, 95, 186};
        notiNameText = [self StringFromHonestlyData:value];
    }
    return notiNameText;
}

//: time_ntes
- (NSString *)kRecentValue {
    /* static */ NSString *kRecentValue = nil;
    if (!kRecentValue) {
        Byte value[] = {9, 2, 115, 101, 116, 110, 95, 101, 109, 105, 116, 218};
        kRecentValue = [self StringFromHonestlyData:value];
    }
    return kRecentValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageCellFactory.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMessageCellFactory.h"
#import "MessageCellFactory.h"

//: @implementation NTESMessageCellFactory
@implementation MessageCellFactory

//: - (NTESMergeMessageCell *)ntesCellInTable:(UITableView*)tableView
- (NameMessageCell *)littleLeagueTeam:(UITableView*)tableView
                         //: forMessageMode:(BusyMessageModel *)model {
                         size:(MoreModel *)model {
    //: id<BusyCellLayoutConfig> layoutConfig = [[MyUserKit sharedKit] layoutConfig];
    id<ParentMargin> layoutConfig = [[Case pastTop] layoutConfig];
    //: NSString *identity = [[layoutConfig cellContent:model] stringByAppendingString:@"_ntes"];
    NSString *identity = [[layoutConfig flushCell:model] stringByAppendingString:[[HonestlyData sharedInstance] notiNameText]];
    //: BusyMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    CompartmentViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESMergeMessageCell";
        NSString *clz = @"NameMessageCell";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: return (NTESMergeMessageCell *)cell;
    return (NameMessageCell *)cell;
}

//: - (NTESTimestampCell *)ntesCellInTable:(UITableView *)tableView
- (AlongView *)net:(UITableView *)tableView
                            //: forTimeModel:(BusyTimestampModel *)model {
                            total:(AppRow *)model {
    //: NSString *identity = @"time_ntes";
    NSString *identity = [[HonestlyData sharedInstance] kRecentValue];
    //: NTESTimestampCell *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    AlongView *cell = [tableView dequeueReusableCellWithIdentifier:identity];
    //: if (!cell) {
    if (!cell) {
        //: NSString *clz = @"NTESTimestampCell";
        NSString *clz = @"AlongView";
        //: [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        [tableView registerClass:NSClassFromString(clz) forCellReuseIdentifier:identity];
        //: cell = [tableView dequeueReusableCellWithIdentifier:identity];
        cell = [tableView dequeueReusableCellWithIdentifier:identity];
    }
    //: [cell refreshData:model];
    [cell stopMetadata:model];
    //: return (NTESTimestampCell *)cell;
    return (AlongView *)cell;
}

//: @end
@end
