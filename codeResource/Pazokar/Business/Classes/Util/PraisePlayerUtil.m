
#import <Foundation/Foundation.h>

NSString *StringFromTermsData(Byte *data);        


//: home_fragment_pc
Byte k_literallyMsg[] = {47, 16, 71, 5, 36, 33, 40, 38, 30, 24, 31, 43, 26, 32, 38, 30, 39, 45, 24, 41, 28, 142};

//: home_fragment_phone
Byte userDetectName[] = {29, 19, 70, 6, 126, 253, 34, 41, 39, 31, 25, 32, 44, 27, 33, 39, 31, 40, 46, 25, 42, 34, 41, 40, 31, 1};

//: home_fragment_web
Byte dreamEnableValue[] = {88, 17, 36, 5, 193, 68, 75, 73, 65, 59, 66, 78, 61, 67, 73, 65, 74, 80, 59, 83, 65, 62, 95};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PraisePlayerUtil.m
//  NIM
//
//  Created by chris on 15/7/27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESClientUtil.h"
#import "PraisePlayerUtil.h"

//: @implementation NTESClientUtil
@implementation PraisePlayerUtil

//: + (NSString *)clientName:(NIMLoginClientType)clientType{
+ (NSString *)assemblage:(NIMLoginClientType)clientType{
    //: switch (clientType) {
    switch (clientType) {
        //: case NIMLoginClientTypeAOS:
        case NIMLoginClientTypeAOS:
        //: case NIMLoginClientTypeiOS:
        case NIMLoginClientTypeiOS:
        //: case NIMLoginClientTypeWP:
        case NIMLoginClientTypeWP:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_phone"];
            return [SendName streetSmart:StringFromTermsData(userDetectName)];
        //: case NIMLoginClientTypePC:
        case NIMLoginClientTypePC:
        //: case NIMLoginClientTypemacOS:
        case NIMLoginClientTypemacOS:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_pc"];
            return [SendName streetSmart:StringFromTermsData(k_literallyMsg)];
        //: case NIMLoginClientTypeWeb:
        case NIMLoginClientTypeWeb:
            //: return [FFFLanguageManager getTextWithKey:@"home_fragment_web"];
            return [SendName streetSmart:StringFromTermsData(dreamEnableValue)];
        //: default:
        default:
            //: return @"";
            return @"";
    }
}

//: @end
@end

Byte * TermsDataToCache(Byte *data) {
    int trulyDoorway = data[0];
    int sir = data[1];
    Byte omitNegative = data[2];
    int reinstate = data[3];
    if (!trulyDoorway) return data + reinstate;
    for (int i = reinstate; i < reinstate + sir; i++) {
        int value = data[i] + omitNegative;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[reinstate + sir] = 0;
    return data + reinstate;
}

NSString *StringFromTermsData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TermsDataToCache(data)];
}
