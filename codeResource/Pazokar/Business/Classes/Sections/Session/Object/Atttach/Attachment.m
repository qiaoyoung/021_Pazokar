
#import <Foundation/Foundation.h>

NSString *StringFromEmphasizePosseData(Byte *data);


//: data
Byte k_fainFileHeightTitle[] = {55, 4, 17, 8, 47, 237, 121, 203, 117, 114, 133, 114, 107};

//: 领取了你的红包
Byte noti_childValue[] = {7, 21, 64, 6, 152, 199, 41, 226, 198, 37, 207, 214, 36, 250, 198, 36, 253, 224, 39, 218, 196, 39, 250, 226, 37, 204, 197, 234};

//: 领取了你的红包，你的红包已被领完
Byte dreamLeadershipContent[] = {54, 48, 38, 12, 195, 68, 219, 32, 63, 64, 148, 129, 15, 200, 172, 11, 181, 188, 10, 224, 172, 10, 227, 198, 13, 192, 170, 13, 224, 200, 11, 178, 171, 21, 226, 178, 10, 227, 198, 13, 192, 170, 13, 224, 200, 11, 178, 171, 11, 221, 216, 14, 200, 209, 15, 200, 172, 11, 212, 178, 19};

//: 你领取了
Byte kFlushKey[] = {31, 12, 88, 6, 246, 111, 60, 21, 248, 65, 250, 222, 61, 231, 238, 60, 18, 222, 135};

//: 你领取了自己的红包
Byte main_cellContentMsg[] = {3, 27, 51, 12, 170, 103, 23, 62, 81, 84, 239, 5, 23, 240, 211, 28, 213, 185, 24, 194, 201, 23, 237, 185, 27, 186, 221, 24, 234, 228, 26, 205, 183, 26, 237, 213, 24, 191, 184, 238};

//: isGetDone
Byte user_nameMessage[] = {14, 9, 96, 14, 15, 51, 140, 185, 189, 78, 203, 82, 98, 62, 201, 211, 167, 197, 212, 164, 207, 206, 197, 6};

//: redPacketId
Byte mProcedureSemenId[] = {16, 11, 85, 12, 85, 252, 98, 73, 240, 133, 180, 155, 199, 186, 185, 165, 182, 184, 192, 186, 201, 158, 185, 248};

//: 你领取了自己的红包，你的红包已被领完
Byte show_objectUsuallyId[] = {69, 54, 95, 9, 162, 238, 108, 190, 137, 67, 28, 255, 72, 1, 229, 68, 238, 245, 67, 25, 229, 71, 230, 9, 68, 22, 16, 70, 249, 227, 70, 25, 1, 68, 235, 228, 78, 27, 235, 67, 28, 255, 70, 249, 227, 70, 25, 1, 68, 235, 228, 68, 22, 17, 71, 1, 10, 72, 1, 229, 68, 13, 235, 202};

//: openPacketId
Byte show_strikeKey[] = {86, 12, 71, 12, 129, 202, 44, 42, 90, 30, 16, 147, 182, 183, 172, 181, 151, 168, 170, 178, 172, 187, 144, 171, 164};

//: sendPacketId
Byte show_memberData[] = {48, 12, 81, 10, 62, 63, 191, 23, 210, 253, 196, 182, 191, 181, 161, 178, 180, 188, 182, 197, 154, 181, 174};

//: type
Byte main_imageData[] = {47, 4, 92, 9, 53, 85, 3, 72, 158, 208, 213, 204, 193, 88};

// __DEBUG__
// __CLOSE_PRINT__
//
//  Attachment.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPacketTipAttachment.h"
#import "Attachment.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "M80AttributedLabel.h"
#import "CypherScrollView.h"
//: #import "BusyKitInfoFetchOption.h"
#import "InfoGreenImage.h"

//: @interface NTESRedPacketTipAttachment()
@interface Attachment()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;

//: @end
@end

//: @implementation NTESRedPacketTipAttachment
@implementation Attachment

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSDictionary *dictContent = @{
    NSDictionary *dictContent = @{
                                  //: @"sendPacketId" : self.sendPacketId,
                                  StringFromEmphasizePosseData(show_memberData) : self.sendPacketId,
                                  //: @"openPacketId" : self.openPacketId,
                                  StringFromEmphasizePosseData(show_strikeKey) : self.openPacketId,
                                  //: @"redPacketId" : self.packetId,
                                  StringFromEmphasizePosseData(mProcedureSemenId) : self.packetId,
                                  //: @"isGetDone" : self.isGetDone,
                                  StringFromEmphasizePosseData(user_nameMessage) : self.isGetDone,
                                  //: };
                                  };
    //: NSDictionary *dict = @{@"type": @(CustomMessageTypeRedPacketTip), @"data": dictContent};
    NSDictionary *dict = @{StringFromEmphasizePosseData(main_imageData): @(CustomMessageTypeRedPacketTip), StringFromEmphasizePosseData(k_fainFileHeightTitle): dictContent};

    //: NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict
                                                       //: options:0
                                                       options:0
                                                         //: error:nil];
                                                         error:nil];

    //: return [[NSString alloc] initWithData:jsonData
    return [[NSString alloc] initWithData:jsonData
                                 //: encoding:NSUTF8StringEncoding];
                                 encoding:NSUTF8StringEncoding];
}


//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width{
- (CGSize)content:(NIMMessage *)message time:(CGFloat)width{
    //: self.message = message;
    self.message = message;

    //: M80AttributedLabel *label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    CypherScrollView *label = [[CypherScrollView alloc] initWithFrame:CGRectZero];
    //: label.font = [UIFont systemFontOfSize:10];
    label.font = [UIFont systemFontOfSize:10];

    //: CGFloat messageWidth = width;
    CGFloat messageWidth = width;

    //: [label appendText:self.formatedMessage];
    [label canName:self.parentTeam];
    //: label.autoDetectLinks = NO;
    label.autoDetectLinks = NO;
    //: label.numberOfLines = 0;
    label.numberOfLines = 0;

    //: CGFloat padding = [MyUserKit sharedKit].config.maxNotificationTipPadding;
    CGFloat padding = [Case pastTop].config.dateText;
    //: CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    CGSize size = [label sizeThatFits:CGSizeMake(width - 2 * padding, 1.7976931348623157e+308)];
    //: CGFloat cellPadding = 11.f;
    CGFloat cellPadding = 11.f;
    //: CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    CGSize contentSize = CGSizeMake(messageWidth, size.height + 2 * cellPadding);;
    //: return contentSize;
    return contentSize;
}


//: - (NSString *)formatedMessage{
- (NSString *)parentTeam{
    //: NSString * showContent;
    NSString * showContent;
    //: NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString * currentUserId = [[NIMSDK sharedSDK].loginManager currentAccount];
    // 领取别人的红包
    //: BusyKitInfoFetchOption *option = [[BusyKitInfoFetchOption alloc] init];
    InfoGreenImage *option = [[InfoGreenImage alloc] init];
    //: option.message = self.message;
    option.message = self.message;

    //: if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    if ([currentUserId isEqualToString:self.sendPacketId] && [currentUserId isEqualToString:self.openPacketId])
    {
        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = @"你领取了自己的红包，你的红包已被领完".ntes_localized;
            showContent = StringFromEmphasizePosseData(show_objectUsuallyId).untilNtes;
        }
        //: else
        else
        {
            //: showContent = @"你领取了自己的红包".ntes_localized;
            showContent = StringFromEmphasizePosseData(main_cellContentMsg).untilNtes;
        }
    }
    //: else if ([currentUserId isEqualToString:self.openPacketId])
    else if ([currentUserId isEqualToString:self.openPacketId])
    {
        //: BusyKitInfo * sendUserInfo = [[MyUserKit sharedKit] infoByUser:self.sendPacketId option:option];
        Info * sendUserInfo = [[Case pastTop] consumer:self.sendPacketId message:option];
        //: NSString * name = sendUserInfo.showName;
        NSString * name = sendUserInfo.showName;
        //: showContent = [NSString stringWithFormat:@"%@%@%@",
        showContent = [NSString stringWithFormat:@"%@%@%@",
                       //: @"你领取了".ntes_localized,
                       StringFromEmphasizePosseData(kFlushKey).untilNtes,
                       //: name,
                       name,
                       //: @"红包".ntes_localized];
                       @"红包".untilNtes];
    }

    // 他人领取你的红包
    //: else if ([currentUserId isEqualToString:self.sendPacketId])
    else if ([currentUserId isEqualToString:self.sendPacketId])
    {
        //: BusyKitInfo * openUserInfo = [[MyUserKit sharedKit] infoByUser:self.openPacketId option:option];
        Info * openUserInfo = [[Case pastTop] consumer:self.openPacketId message:option];
        //: NSString * name = openUserInfo.showName;
        NSString * name = openUserInfo.showName;

        //: if ([self.isGetDone boolValue])
        if ([self.isGetDone boolValue])
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包，你的红包已被领完".ntes_localized];
                           StringFromEmphasizePosseData(dreamLeadershipContent).untilNtes];
        }
        //: else
        else
        {
            //: showContent = [NSString stringWithFormat:@"%@%@",
            showContent = [NSString stringWithFormat:@"%@%@",
                           //: name,
                           name,
                           //: @"领取了你的红包".ntes_localized];
                           StringFromEmphasizePosseData(noti_childValue).untilNtes];
        }
    }

    //: return [NSString stringWithFormat:@"  %@",showContent];
    return [NSString stringWithFormat:@"  %@",showContent];
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)select:(NIMMessage *)message
{
    //: return UIEdgeInsetsZero;
    return UIEdgeInsetsZero;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)title:(NIMMessage *)message
{
    //: return @"NTESSessionRedPacketTipContentView";
    return @"ColorControl";
}

//: - (BOOL)canBeForwarded
- (BOOL)spectrum
{
    //: return NO;
    return NO;
}

//: - (BOOL)canBeRevoked
- (BOOL)straddle
{
    //: return NO;
    return NO;
}


//: @end
@end

Byte * EmphasizePosseDataToCache(Byte *data) {
    int rangeFactor = data[0];
    int modeText = data[1];
    Byte readName = data[2];
    int backgroundLeadership = data[3];
    if (!rangeFactor) return data + backgroundLeadership;
    for (int i = backgroundLeadership; i < backgroundLeadership + modeText; i++) {
        int value = data[i] - readName;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[backgroundLeadership + modeText] = 0;
    return data + backgroundLeadership;
}

NSString *StringFromEmphasizePosseData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)EmphasizePosseDataToCache(data)];
}
