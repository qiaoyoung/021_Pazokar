
#import <Foundation/Foundation.h>

@interface CedeData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CedeData

+ (instancetype)sharedInstance {
    static CedeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CedeDataToCache:(Byte *)data {
    int ink = data[0];
    Byte sumerview = data[1];
    int tightenEcru = data[2];
    for (int i = tightenEcru; i < tightenEcru + ink; i++) {
        int value = data[i] - sumerview;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[tightenEcru + ink] = 0;
    return data + tightenEcru;
}

- (NSString *)StringFromCedeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CedeDataToCache:data]];
}

//: You must override %@ in %@
- (NSString *)m_termsTitlePath {
    /* static */ NSString *m_termsTitlePath = nil;
    if (!m_termsTitlePath) {
        Byte value[] = {26, 24, 12, 106, 192, 66, 42, 165, 57, 61, 103, 1, 113, 135, 141, 56, 133, 141, 139, 140, 56, 135, 142, 125, 138, 138, 129, 124, 125, 56, 61, 88, 56, 129, 134, 56, 61, 88, 93};
        m_termsTitlePath = [self StringFromCedeData:value];
    }
    return m_termsTitlePath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DiscView.m
//  MarginOfSafetyView
//
//  Created by Tanguy Aladenise on 2015-01-22.
//  Copyright (c) 2015 Tanguy Aladenise. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TAAbstractDotView.h"
#import "DiscView.h"

//: @implementation TAAbstractDotView
@implementation DiscView


//: - (id)init
- (id)init
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:[[CedeData sharedInstance] m_termsTitlePath], NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}


//: - (void)changeActivityState:(BOOL)active
- (void)furtherances:(BOOL)active
{
    //: @throw [NSException exceptionWithName:NSInternalInconsistencyException
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   //: reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                   reason:[NSString stringWithFormat:[[CedeData sharedInstance] m_termsTitlePath], NSStringFromSelector(_cmd), self.class]
                                 //: userInfo:nil];
                                 userInfo:nil];
}

//: @end
@end