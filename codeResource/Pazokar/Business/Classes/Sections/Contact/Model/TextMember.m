
#import <Foundation/Foundation.h>

@interface RedData : NSObject

@end

@implementation RedData

+ (Byte *)RedDataToCache:(Byte *)data {
    int factor = data[0];
    Byte childTitle = data[1];
    int corner = data[2];
    for (int i = corner; i < corner + factor; i++) {
        int value = data[i] - childTitle;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[corner + factor] = 0;
    return data + corner;
}

+ (NSString *)StringFromRedData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RedDataToCache:data]];
}

//: NTESContactDataItem
+ (NSString *)k_centerRecentMessage {
    /* static */ NSString *k_centerRecentMessage = nil;
    if (!k_centerRecentMessage) {
        Byte value[] = {19, 16, 8, 5, 198, 55, 73, 212, 94, 100, 85, 99, 83, 127, 126, 132, 113, 115, 132, 84, 113, 132, 113, 89, 132, 117, 125, 45};
        k_centerRecentMessage = [self StringFromRedData:value];
    }
    return k_centerRecentMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TextMember.m
//  NIM
//
//  Created by chris on 15/9/21.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataMember.h"
#import "TextMember.h"
//: #import "NTESSpellingCenter.h"
#import "ParentCenter.h"

//: @implementation NTESContactDataMember
@implementation TextMember

//: - (CGFloat)uiHeight{
- (CGFloat)saveSelected{
    //: return 60;
    return 60;
}

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面

//: - (NSString *)vcName{
- (NSString *)dateName{
    //: return nil;
    return nil;
}

//: - (NSString *)reuseId{
- (NSString *)systemEnable{
    //: return @"NTESContactDataItem";
    return [RedData k_centerRecentMessage];
}

//: - (NSString *)cellName{
- (NSString *)cell{
    //: return @"NTESContactDataCell";
    return @"IndexPointDataCell";
}

//: - (NSString *)badge{
- (NSString *)digitizer{
    //: return @"";
    return @"";
}

//: - (NSString *)groupTitle {
- (NSString *)bottom {
    //: NSString *title = [[NTESSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[ParentCenter mean] carryEnable:self.info.showName].capitalizedString;
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

//: - (NSString *)userId{
- (NSString *)modeContent{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (UIImage *)icon{
- (UIImage *)message{
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrl{
- (NSString *)quickUrl{
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: - (NSString *)memberId{
- (NSString *)colorData{
    //: return self.info.infoId;
    return self.info.infoId;
}

//: - (NSString *)showName{
- (NSString *)ting{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (BOOL)showAccessoryView{
- (BOOL)bringHomeUponPosition{
    //: return NO;
    return NO;
}

//: - (id)sortKey {
- (id)sort {
    //: return [[NTESSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[ParentCenter mean] disable:self.info.showName].shortSpelling;
}

//: - (BOOL)isEqual:(id)object{
- (BOOL)isEqual:(id)object{
    //: if (![object isKindOfClass:[self class]]) {
    if (![object isKindOfClass:[self class]]) {
        //: return NO;
        return NO;
    }
    //: return [self.info.infoId isEqualToString:[[object info] infoId]];
    return [self.info.infoId isEqualToString:[[object info] infoId]];
}


//: @end
@end