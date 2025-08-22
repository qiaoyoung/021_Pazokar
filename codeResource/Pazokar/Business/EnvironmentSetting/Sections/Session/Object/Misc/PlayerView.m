
#import <Foundation/Foundation.h>

NSString *StringFromOptionData(Byte *data);


//: data
Byte mPinKey[] = {19, 4, 32, 7, 90, 228, 141, 132, 129, 148, 129, 219};

//: fileName
Byte userFileToolMessage[] = {88, 8, 74, 12, 131, 185, 120, 105, 207, 25, 57, 74, 176, 179, 182, 175, 152, 171, 183, 175, 158};

//: openPacketId
Byte noti_inputData[] = {36, 12, 28, 14, 148, 50, 173, 47, 218, 223, 113, 74, 209, 212, 139, 140, 129, 138, 108, 125, 127, 135, 129, 144, 101, 128, 222};

//: title
Byte dreamWoodenData[] = {20, 5, 97, 5, 173, 213, 202, 213, 205, 198, 249};

//: sendPacketId
Byte notiChapterRedFinPath[] = {82, 12, 10, 6, 21, 216, 125, 111, 120, 110, 90, 107, 109, 117, 111, 126, 83, 110, 103};

//: isGetDone
Byte noti_lineIdent[] = {47, 9, 61, 7, 90, 7, 159, 166, 176, 132, 162, 177, 129, 172, 171, 162, 237};

//: content
Byte noti_cellValue[] = {19, 7, 12, 14, 149, 231, 88, 46, 14, 148, 151, 39, 44, 226, 111, 123, 122, 128, 113, 122, 128, 115};

//: sessionId
Byte mAggressiveRedTitle[] = {20, 9, 85, 4, 200, 186, 200, 200, 190, 196, 195, 158, 185, 231};

//: sessionName
Byte app_recentId[] = {44, 11, 25, 14, 144, 216, 220, 72, 129, 39, 117, 26, 46, 102, 140, 126, 140, 140, 130, 136, 135, 103, 122, 134, 126, 211};

//: fired
Byte k_semenMinName[] = {7, 5, 75, 12, 183, 214, 148, 172, 30, 32, 92, 233, 177, 180, 189, 176, 175, 170};

//: messageAbstract
Byte appViewSourceRegardingId[] = {68, 15, 24, 12, 60, 27, 228, 248, 134, 193, 38, 204, 133, 125, 139, 139, 121, 127, 125, 89, 122, 139, 140, 138, 121, 123, 140, 31};

//: compressed
Byte show_gateValue[] = {39, 10, 90, 6, 181, 145, 189, 201, 199, 202, 204, 191, 205, 205, 191, 190, 184};

//: personCardId
Byte dream_showMessage[] = {30, 12, 17, 5, 135, 129, 118, 131, 132, 128, 127, 84, 114, 131, 117, 90, 117, 32};

//: value
Byte main_finFormat[] = {88, 5, 17, 14, 86, 253, 5, 244, 194, 79, 118, 117, 27, 227, 135, 114, 125, 134, 118, 160};

//: encrypted
Byte appFainTitle[] = {3, 9, 36, 6, 30, 169, 137, 146, 135, 150, 157, 148, 152, 137, 136, 229};

//: url
Byte showWithIdent[] = {17, 3, 4, 6, 40, 154, 121, 118, 112, 106};

//: password
Byte m_motorUrl[] = {63, 8, 60, 4, 172, 157, 175, 175, 179, 171, 174, 160, 103};

//: redPacketId
Byte userImageUrl[] = {65, 11, 1, 4, 115, 102, 101, 81, 98, 100, 108, 102, 117, 74, 101, 48};

//: redPacketSendID
Byte notiDisappointedName[] = {6, 15, 50, 7, 165, 205, 182, 164, 151, 150, 130, 147, 149, 157, 151, 166, 133, 151, 160, 150, 123, 118, 136};

//: flag
Byte main_enableFormat[] = {90, 4, 40, 10, 168, 226, 8, 168, 8, 219, 142, 148, 137, 143, 91};

//: type
Byte main_killerToolStr[] = {71, 4, 69, 5, 42, 185, 190, 181, 170, 139};

//: md5
Byte dreamVoiceUrl[] = {22, 3, 79, 4, 188, 179, 132, 23};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PlayerView.m
//  NIM
//
//  Created by amao on 7/2/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomAttachmentDecoder.h"
#import "PlayerView.h"
//: #import "NTESCustomAttachmentDefines.h"
#import "NTESCustomAttachmentDefines.h"
//: #import "NTESJanKenPonAttachment.h"
#import "MyAttachment.h"
//: #import "NTESSnapchatAttachment.h"
#import "MediaAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "TagAttachment.h"
//: #import "NTESRedPacketAttachment.h"
#import "BubbleTitleLabel.h"
//: #import "NTESRedPacketTipAttachment.h"
#import "Attachment.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ModelText.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Doing.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"
//: #import "NTESShareCardAttachment.h"
#import "WithChild.h"

//: @implementation NTESCustomAttachmentDecoder
@implementation PlayerView
//: - (id<NIMCustomAttachment>)decodeAttachment:(NSString *)content
- (id<NIMCustomAttachment>)decodeAttachment:(NSString *)content
{
    //: id<NIMCustomAttachment> attachment = nil;
    id<NIMCustomAttachment> attachment = nil;

    //: NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (data) {
    if (data) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [dict jsonInteger:@"type"];
            NSInteger type = [dict reply:StringFromOptionData(main_killerToolStr)];
            //: NSDictionary *data = [dict jsonDict:@"data"];
            NSDictionary *data = [dict styleOld:StringFromOptionData(mPinKey)];
            //: switch (type) {
            switch (type) {
                //: case CustomMessageTypeJanKenPon:
                case CustomMessageTypeJanKenPon:
                {
                    //: attachment = [[NTESJanKenPonAttachment alloc] init];
                    attachment = [[MyAttachment alloc] init];
                    //: ((NTESJanKenPonAttachment *)attachment).value = [data jsonInteger:@"value"];
                    ((MyAttachment *)attachment).value = [data reply:StringFromOptionData(main_finFormat)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeSnapchat:
                case CustomMessageTypeSnapchat:
                {
                    //: attachment = [[NTESSnapchatAttachment alloc] init];
                    attachment = [[MediaAttachment alloc] init];
                    //: ((NTESSnapchatAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((MediaAttachment *)attachment).md5 = [data withCord:StringFromOptionData(dreamVoiceUrl)];
                    //: ((NTESSnapchatAttachment *)attachment).url = [data jsonString:@"url"];
                    ((MediaAttachment *)attachment).url = [data withCord:StringFromOptionData(showWithIdent)];
                    //: ((NTESSnapchatAttachment *)attachment).isFired = [data jsonBool:@"fired"];
                    ((MediaAttachment *)attachment).isFired = [data shouldDoing:StringFromOptionData(k_semenMinName)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeWhiteboard:
                case CustomMessageTypeWhiteboard:
                {
                    //: attachment = [[NTESWhiteboardAttachment alloc] init];
                    attachment = [[TagAttachment alloc] init];
                    //: ((NTESWhiteboardAttachment *)attachment).flag = [data jsonInteger:@"flag"];
                    ((TagAttachment *)attachment).flag = [data reply:StringFromOptionData(main_enableFormat)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacket:
                case CustomMessageTypeRedPacket:
                {
                    //: attachment = [[NTESRedPacketAttachment alloc] init];
                    attachment = [[BubbleTitleLabel alloc] init];
                    //: ((NTESRedPacketAttachment *)attachment).title = [data jsonString:@"title"];
                    ((BubbleTitleLabel *)attachment).title = [data withCord:StringFromOptionData(dreamWoodenData)];
                    //: ((NTESRedPacketAttachment *)attachment).content = [data jsonString:@"content"];
                    ((BubbleTitleLabel *)attachment).content = [data withCord:StringFromOptionData(noti_cellValue)];
                    //: ((NTESRedPacketAttachment *)attachment).redPacketId = [data jsonString:@"redPacketId"];
                    ((BubbleTitleLabel *)attachment).redPacketId = [data withCord:StringFromOptionData(userImageUrl)];
                    //: ((NTESRedPacketAttachment *)attachment).sendID = [data jsonString:@"redPacketSendID"];
                    ((BubbleTitleLabel *)attachment).sendID = [data withCord:StringFromOptionData(notiDisappointedName)];

                }
                    //: break;
                    break;
                //: case CustomMessageTypeRedPacketTip:
                case CustomMessageTypeRedPacketTip:
                {
                    //: attachment = [[NTESRedPacketTipAttachment alloc] init];
                    attachment = [[Attachment alloc] init];
                    //: ((NTESRedPacketTipAttachment *)attachment).sendPacketId = [data jsonString:@"sendPacketId"];
                    ((Attachment *)attachment).sendPacketId = [data withCord:StringFromOptionData(notiChapterRedFinPath)];
                    //: ((NTESRedPacketTipAttachment *)attachment).packetId = [data jsonString:@"redPacketId"];
                    ((Attachment *)attachment).packetId = [data withCord:StringFromOptionData(userImageUrl)];
                    //: ((NTESRedPacketTipAttachment *)attachment).isGetDone = [data jsonString:@"isGetDone"];
                    ((Attachment *)attachment).isGetDone = [data withCord:StringFromOptionData(noti_lineIdent)];
                    //: ((NTESRedPacketTipAttachment *)attachment).openPacketId = [data jsonString:@"openPacketId"];
                    ((Attachment *)attachment).openPacketId = [data withCord:StringFromOptionData(noti_inputData)];
                }
                    //: break;
                    break;
                //: case CustomMessageTypeMultiRetweet:
                case CustomMessageTypeMultiRetweet:
                {
                    //: attachment = [[NTESMultiRetweetAttachment alloc] init];
                    attachment = [[ModelText alloc] init];
                    //: ((NTESMultiRetweetAttachment *)attachment).url = [data jsonString:@"url"];
                    ((ModelText *)attachment).url = [data withCord:StringFromOptionData(showWithIdent)];
                    //: ((NTESMultiRetweetAttachment *)attachment).md5 = [data jsonString:@"md5"];
                    ((ModelText *)attachment).md5 = [data withCord:StringFromOptionData(dreamVoiceUrl)];
                    //: ((NTESMultiRetweetAttachment *)attachment).fileName = [data jsonString:@"fileName"];
                    ((ModelText *)attachment).fileName = [data withCord:StringFromOptionData(userFileToolMessage)];
                    //: ((NTESMultiRetweetAttachment *)attachment).compressed = [data jsonBool:@"compressed"];
                    ((ModelText *)attachment).compressed = [data shouldDoing:StringFromOptionData(show_gateValue)];
                    //: ((NTESMultiRetweetAttachment *)attachment).encrypted = [data jsonBool:@"encrypted"];
                    ((ModelText *)attachment).encrypted = [data shouldDoing:StringFromOptionData(appFainTitle)];
                    //: ((NTESMultiRetweetAttachment *)attachment).password = [data jsonString:@"password"];
                    ((ModelText *)attachment).password = [data withCord:StringFromOptionData(m_motorUrl)];
                    //: ((NTESMultiRetweetAttachment *)attachment).messageAbstract = [data jsonArray:@"messageAbstract"];
                    ((ModelText *)attachment).messageAbstract = [data sizeArray:StringFromOptionData(appViewSourceRegardingId)];
                    //: ((NTESMultiRetweetAttachment *)attachment).sessionName = [data jsonString:@"sessionName"];
                    ((ModelText *)attachment).sessionName = [data withCord:StringFromOptionData(app_recentId)];
                    //: ((NTESMultiRetweetAttachment *)attachment).sessionId = [data jsonString:@"sessionId"];
                    ((ModelText *)attachment).sessionId = [data withCord:StringFromOptionData(mAggressiveRedTitle)];
                }
                    //: break;
                    break;

                //: case CustomMessageTypeCard:
                case CustomMessageTypeCard:
                {
                    //: attachment = [[NTESShareCardAttachment alloc] init];
                    attachment = [[WithChild alloc] init];
                    //: ((NTESShareCardAttachment *)attachment).title = [data jsonString:@"title"];
                    ((WithChild *)attachment).title = [data withCord:StringFromOptionData(dreamWoodenData)];
                    //: ((NTESShareCardAttachment *)attachment).type = [data jsonString:@"type"];
                    ((WithChild *)attachment).type = [data withCord:StringFromOptionData(main_killerToolStr)];
                    //: ((NTESShareCardAttachment *)attachment).content = [data jsonString:@"content"];
                    ((WithChild *)attachment).content = [data withCord:StringFromOptionData(noti_cellValue)];
                    //: ((NTESShareCardAttachment *)attachment).personCardId = [data jsonString:@"personCardId"];
                    ((WithChild *)attachment).personCardId = [data withCord:StringFromOptionData(dream_showMessage)];
                }
                    //: break;
                    break;
                //: default:
                default:
                    //: break;
                    break;
            }
            //: attachment = [self checkAttachment:attachment] ? attachment : nil;
            attachment = [self message:attachment] ? attachment : nil;
        }
    }
    //: return attachment;
    return attachment;
}


//: - (BOOL)checkAttachment:(id<NIMCustomAttachment>)attachment{
- (BOOL)message:(id<NIMCustomAttachment>)attachment{
    //: BOOL check = NO;
    BOOL check = NO;
    //: if ([attachment isKindOfClass:[NTESJanKenPonAttachment class]])
    if ([attachment isKindOfClass:[MyAttachment class]])
    {
        //: NSInteger value = [((NTESJanKenPonAttachment *)attachment) value];
        NSInteger value = [((MyAttachment *)attachment) value];
        //: check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
        check = (value>=CustomJanKenPonValueKen && value<=CustomJanKenPonValuePon) ? YES : NO;
    }
    //: else if ([attachment isKindOfClass:[NTESSnapchatAttachment class]])
    else if ([attachment isKindOfClass:[MediaAttachment class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESShareCardAttachment class]])
    else if ([attachment isKindOfClass:[WithChild class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESWhiteboardAttachment class]])
    else if ([attachment isKindOfClass:[TagAttachment class]])
    {
        //: NSInteger flag = [((NTESWhiteboardAttachment *)attachment) flag];
        NSInteger flag = [((TagAttachment *)attachment) flag];
        //: check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
        check = ((flag >= CustomWhiteboardFlagInvite) && (flag <= CustomWhiteboardFlagClose)) ? YES : NO;
    }
    //: else if([attachment isKindOfClass:[NTESRedPacketAttachment class]] || [attachment isKindOfClass:[NTESRedPacketTipAttachment class]])
    else if([attachment isKindOfClass:[BubbleTitleLabel class]] || [attachment isKindOfClass:[Attachment class]])
    {
        //: check = YES;
        check = YES;
    }
    //: else if ([attachment isKindOfClass:[NTESMultiRetweetAttachment class]])
    else if ([attachment isKindOfClass:[ModelText class]])
    {
        //: NTESMultiRetweetAttachment *target = (NTESMultiRetweetAttachment *)attachment;
        ModelText *target = (ModelText *)attachment;
        //: if (target.messageAbstract.count == 0) {
        if (target.messageAbstract.count == 0) {
            //: check = NO;
            check = NO;
        //: } else if (target.encrypted && target.password.length == 0) {
        } else if (target.encrypted && target.password.length == 0) {
            //: check = NO;
            check = NO;
        //: } else {
        } else {
            //: check = YES;
            check = YES;
        }
    }
    //: return check;
    return check;
}
//: @end
@end

Byte * OptionDataToCache(Byte *data) {
    int semenProximate = data[0];
    int barInfo = data[1];
    Byte strikeUsually = data[2];
    int afterwards = data[3];
    if (!semenProximate) return data + afterwards;
    for (int i = afterwards; i < afterwards + barInfo; i++) {
        int value = data[i] - strikeUsually;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[afterwards + barInfo] = 0;
    return data + afterwards;
}

NSString *StringFromOptionData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OptionDataToCache(data)];
}
