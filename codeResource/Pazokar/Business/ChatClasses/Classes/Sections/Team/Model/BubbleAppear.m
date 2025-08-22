
#import <Foundation/Foundation.h>

typedef struct {
    Byte balloonPoem;
    Byte *drawing;
    unsigned int plaza;
	int celebrity;
	int five;
} StructStreamOfConsciousnessData;

@interface StreamOfConsciousnessData : NSObject

@end

@implementation StreamOfConsciousnessData

+ (NSData *)StreamOfConsciousnessDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)StreamOfConsciousnessDataToByte:(StructStreamOfConsciousnessData *)data {
    for (int i = 0; i < data->plaza; i++) {
        data->drawing[i] ^= data->balloonPoem;
    }
    data->drawing[data->plaza] = 0;
	if (data->plaza >= 2) {
		data->celebrity = data->drawing[0];
		data->five = data->drawing[1];
	}
    return data->drawing;
}

+ (NSString *)StringFromStreamOfConsciousnessData:(StructStreamOfConsciousnessData *)data {
    return [NSString stringWithUTF8String:(char *)[self StreamOfConsciousnessDataToByte:data]];
}

//: icon_add_normal
+ (NSString *)m_risingPath {
    /* static */ NSString *m_risingPath = nil;
    if (!m_risingPath) {
		NSString *origin = @"E4EEE2E3D2ECE9E9D2E3E2FFE0ECE139";
		NSData *data = [StreamOfConsciousnessData StreamOfConsciousnessDataToData:origin];
        StructStreamOfConsciousnessData value = (StructStreamOfConsciousnessData){141, (Byte *)data.bytes, 15, 159, 77};
        m_risingPath = [self StringFromStreamOfConsciousnessData:&value];
    }
    return m_risingPath;
}

//: icon_add_pressed
+ (NSString *)user_letterExplainKey {
    /* static */ NSString *user_letterExplainKey = nil;
    if (!user_letterExplainKey) {
		NSString *origin = @"8C868A8BBA848181BA959780969680813F";
		NSData *data = [StreamOfConsciousnessData StreamOfConsciousnessDataToData:origin];
        StructStreamOfConsciousnessData value = (StructStreamOfConsciousnessData){229, (Byte *)data.bytes, 16, 34, 167};
        user_letterExplainKey = [self StringFromStreamOfConsciousnessData:&value];
    }
    return user_letterExplainKey;
}

//: icon_remove_normal
+ (NSString *)kObjectIdent {
    /* static */ NSString *kObjectIdent = nil;
    if (!kObjectIdent) {
		NSString *origin = @"6A606C6D5C71666E6C75665C6D6C716E626F54";
		NSData *data = [StreamOfConsciousnessData StreamOfConsciousnessDataToData:origin];
        StructStreamOfConsciousnessData value = (StructStreamOfConsciousnessData){3, (Byte *)data.bytes, 18, 16, 66};
        kObjectIdent = [self StringFromStreamOfConsciousnessData:&value];
    }
    return kObjectIdent;
}

//: icon_remove_pressed
+ (NSString *)m_greenId {
    /* static */ NSString *m_greenId = nil;
    if (!m_greenId) {
		NSString *origin = @"6268646554796E66647D6E547B796E78786E6F3B";
		NSData *data = [StreamOfConsciousnessData StreamOfConsciousnessDataToData:origin];
        StructStreamOfConsciousnessData value = (StructStreamOfConsciousnessData){11, (Byte *)data.bytes, 19, 155, 193};
        m_greenId = [self StringFromStreamOfConsciousnessData:&value];
    }
    return m_greenId;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardOperationItem.m
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCardOperationItem.h"
#import "BubbleAppear.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @interface FFFCardOperationItem()
@interface BubbleAppear()

//: @property(nonatomic,assign) NIMKitCardHeaderOpeator opera;
@property(nonatomic,assign) NIMKitCardHeaderOpeator opera;

//: @end
@end

//: @implementation FFFCardOperationItem
@implementation BubbleAppear

//: - (instancetype)initWithOperation:(NIMKitCardHeaderOpeator)opera{
- (instancetype)initWithOfVersion:(NIMKitCardHeaderOpeator)opera{
    //: self = [self init];
    self = [self init];
    //: if (self) {
    if (self) {
        //: [self buildWithTeamCardOperation:opera];
        [self streetwise:opera];
    }
    //: return self;
    return self;
}

//: - (void)buildWithTeamCardOperation:(NIMKitCardHeaderOpeator)opera{
- (void)streetwise:(NIMKitCardHeaderOpeator)opera{
    //: _opera = opera;
    _opera = opera;
    //: switch (opera) {
    switch (opera) {
        //: case CardHeaderOpeatorAdd:
        case CardHeaderOpeatorAdd:
            //: _title = @"加入".nim_localized;
            _title = @"加入".maxColor;
            //: _imageNormal = [UIImage imageNamed:@"icon_add_normal"];
            _imageNormal = [UIImage imageNamed:[StreamOfConsciousnessData m_risingPath]];
            //: _imageHighLight = [UIImage imageNamed:@"icon_add_pressed"];
            _imageHighLight = [UIImage imageNamed:[StreamOfConsciousnessData user_letterExplainKey]];
            //: break;
            break;
        //: case CardHeaderOpeatorRemove:
        case CardHeaderOpeatorRemove:
            //: _title = @"移除".nim_localized;
            _title = @"移除".maxColor;
            //: _imageNormal = [UIImage imageNamed:@"icon_remove_normal"];
            _imageNormal = [UIImage imageNamed:[StreamOfConsciousnessData kObjectIdent]];
            //: _imageHighLight = [UIImage imageNamed:@"icon_remove_pressed"];
            _imageHighLight = [UIImage imageNamed:[StreamOfConsciousnessData m_greenId]];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (NSString*)teamId {
- (NSString*)teamId {
    //: return @"";
    return @"";
}

//: - (NSString*)userId {
- (NSString*)userId {
    //: return @"";
    return @"";
}

//: - (NIMTeamMemberType)userType {
- (NIMTeamMemberType)userType {
    //: return NIMTeamMemberTypeNormal;
    return NIMTeamMemberTypeNormal;
}

//: - (void)setUserType:(NIMTeamMemberType)userType {}
- (void)setUserType:(NIMTeamMemberType)userType {}

//: - (NIMTeamType)teamType {
- (NIMTeamType)teamType {
    //: return NIMTeamTypeNormal;
    return NIMTeamTypeNormal;
}


//: - (NSString*)imageUrl {
- (NSString*)imageUrl {
    //: return nil;
    return nil;
}

//: - (NSString*)inviterAccid {
- (NSString*)inviterAccid {
    //: return nil;
    return nil;
}

//: - (BOOL)isMuted {
- (BOOL)isMuted {
    //: return NO;
    return NO;
}

//: - (BOOL)isMyUserId {
- (BOOL)isMyUserId {
    //: return NO;
    return NO;
}

//: @end
@end