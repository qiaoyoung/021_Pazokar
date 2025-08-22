// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGQRCodeLog.h"
#import "PraiseLog.h"

//: static SGQRCodeLog *singleton = nil;
static PraiseLog *notiAbstractUrl = nil;

//: @implementation SGQRCodeLog
@implementation PraiseLog

//: + (instancetype)sharedQRCodeLog {
+ (instancetype)canBy {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: if (singleton == nil) {
        if (notiAbstractUrl == nil) {
            //: singleton = [[super allocWithZone:NULL] init];
            notiAbstractUrl = [[super allocWithZone:NULL] init];
        }
    //: });
    });
    //: return singleton;
    return notiAbstractUrl;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] canBy];
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)sessionAcross:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] canBy];
}

//: - (id)mutableCopyWithZone:(NSZone *)zone {
- (id)rave:(NSZone *)zone {
    //: return [[self class] sharedQRCodeLog];
    return [[self class] canBy];
}

//: @end
@end