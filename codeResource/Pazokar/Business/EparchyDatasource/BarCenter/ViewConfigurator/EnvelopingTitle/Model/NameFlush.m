
#import <Foundation/Foundation.h>

@interface BeeData : NSObject

@end

@implementation BeeData

+ (NSData *)BeeDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)BeeDataToCache:(Byte *)data {
    int uncertain = data[0];
    Byte bail = data[1];
    int subsequently = data[2];
    for (int i = subsequently; i < subsequently + uncertain; i++) {
        int value = data[i] - bail;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[subsequently + uncertain] = 0;
    return data + subsequently;
}

+ (NSString *)StringFromBeeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BeeDataToCache:data]];
}

//: contact_group_header
+ (NSString *)user_toolValue {
    /* static */ NSString *user_toolValue = nil;
    if (!user_toolValue) {
		NSArray<NSNumber *> *origin = @[@20, @98, @12, @160, @170, @89, @149, @247, @154, @161, @231, @41, @197, @209, @208, @214, @195, @197, @214, @193, @201, @212, @209, @215, @210, @193, @202, @199, @195, @198, @199, @212, @158];
		NSData *data = [BeeData BeeDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        user_toolValue = [self StringFromBeeData:value];
    }
    return user_toolValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamInfoData.m
//  NIM
//
//  Created by chris on 15/6/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyTeamInfoData.h"
#import "NameFlush.h"
//: #import "BusySpellingCenter.h"
#import "PinValueTing.h"

//: @implementation BusyTeamInfoData
@implementation NameFlush

//: - (instancetype)initWithTeam:(NIMTeam *)team{
- (instancetype)initWithGreenTeam:(NIMTeam *)team{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = team.teamId;
        _teamId = team.teamId;
        //: _teamName = team.teamName;
        _teamName = team.teamName;
        //: _iconId = @"contact_group_header";
        _iconId = [BeeData user_toolValue];
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)end{
    //: NSString *title = [[BusySpellingCenter sharedCenter] firstLetter:self.teamName].capitalizedString;
    NSString *title = [[PinValueTing sharedToCenterBackground] location:self.teamName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }

}

//: - (NSString *)memberId{
- (NSString *)conference{
    //: return self.teamId;
    return self.teamId;
}

//: - (id)sortKey{
- (id)meanSolarDay{
    //: return [[BusySpellingCenter sharedCenter] spellingForString:self.teamName].shortSpelling;
    return [[PinValueTing sharedToCenterBackground] pressedShow:self.teamName].shortSpelling;
}

//: - (NSString *)usrId{
- (NSString *)tranche{
    //: return self.teamId;
    return self.teamId;
}

//: - (NSString *)nick{
- (NSString *)teamVideo{
    //: return self.teamName;
    return self.teamName;
}

//: - (NSString *)showName{
- (NSString *)begin{
    //: return self.teamName;
    return self.teamName;
}


//: @end
@end
