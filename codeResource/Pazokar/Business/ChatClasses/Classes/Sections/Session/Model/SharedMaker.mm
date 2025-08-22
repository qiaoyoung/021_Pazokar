
#import <Foundation/Foundation.h>

NSString *StringFromDisappointmentBoarData(Byte *data);        


//: apns-collapse-id
Byte mainTermsValue[] = {40, 16, 38, 11, 11, 1, 51, 56, 26, 229, 213, 59, 74, 72, 77, 7, 61, 73, 70, 70, 59, 74, 77, 63, 7, 67, 62, 177};

//: nim_test_msg_env
Byte mViewValue[] = {34, 16, 48, 8, 209, 214, 123, 59, 62, 57, 61, 47, 68, 53, 67, 68, 47, 61, 67, 55, 47, 53, 62, 70, 23};

//: 发来了一段视频
Byte appIncludeCellData[] = {57, 21, 6, 8, 114, 56, 229, 132, 223, 137, 139, 224, 151, 159, 222, 180, 128, 222, 178, 122, 224, 168, 175, 226, 161, 128, 227, 156, 139, 11};

//: init_manager_nim_status_bar_image_message
Byte m_frameMessage[] = {50, 41, 29, 8, 115, 95, 114, 95, 76, 81, 76, 87, 66, 80, 68, 81, 68, 74, 72, 85, 66, 81, 76, 80, 66, 86, 87, 68, 87, 88, 86, 66, 69, 68, 85, 66, 76, 80, 68, 74, 72, 66, 80, 72, 86, 86, 68, 74, 72, 184};

//: 你收到了一条快捷评论
Byte appOverseeHaoCentralKey[] = {53, 30, 21, 9, 190, 94, 83, 8, 22, 207, 168, 139, 209, 127, 161, 208, 115, 155, 207, 165, 113, 207, 163, 107, 209, 136, 140, 208, 170, 150, 209, 120, 162, 211, 154, 111, 211, 153, 165, 251};

//: key
Byte show_hostageNowhereUrl[] = {89, 3, 99, 8, 26, 255, 212, 110, 8, 2, 22, 177};

//: value
Byte mainBankingUrl[] = {20, 5, 37, 5, 201, 81, 60, 71, 80, 64, 210};

//: 发来了一段语音
Byte m_childFormat[] = {76, 21, 88, 10, 36, 121, 142, 25, 63, 123, 141, 55, 57, 142, 69, 77, 140, 98, 46, 140, 96, 40, 142, 86, 93, 144, 87, 85, 145, 71, 91, 244};

// __DEBUG__
// __CLOSE_PRINT__
//
//  BusyMessageMaker.m
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyMessageMaker.h"
#import "SharedMaker.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "BusyInputAtCache.h"
#import "VersionPointCache.h"

//: NSString * generateUUID(void) {
NSString * kitData(void) {
    // 创建一个UUID
    //: CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    CFUUIDRef uuidObject = CFUUIDCreate(kCFAllocatorDefault);
    // 转换为字符串
    //: NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuidObject);
    // 释放UUID对象
    //: CFRelease(uuidObject);
    CFRelease(uuidObject);
    //: return uuidString;
    return uuidString;
}

//: @implementation BusyMessageMaker
@implementation SharedMaker

//: + (NIMMessage*)msgWithText:(NSString*)text
+ (NIMMessage*)icon:(NSString*)text
{
    //: NIMMessage *textMessage = [[NIMMessage alloc] init];
    NIMMessage *textMessage = [[NIMMessage alloc] init];
    //: textMessage.text = text;
    textMessage.text = text;
    //: [self setupMessage:textMessage];
    [self value:textMessage];
    //: return textMessage;
    return textMessage;
}

//: + (NIMMessage*)msgWithAudio:(NSString*)filePath
+ (NIMMessage*)timeCapsule:(NSString*)filePath
{
    //: NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    NIMAudioObject *audioObject = [[NIMAudioObject alloc] initWithSourcePath:filePath];
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = audioObject;
    message.messageObject = audioObject;
    //: message.text = @"发来了一段语音".nim_localized;
    message.text = StringFromDisappointmentBoarData(m_childFormat).maxColor;
    //: [self setupMessage:message];
    [self value:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithVideo:(NSString*)filePath
+ (NIMMessage*)intervalerval:(NSString*)filePath
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    NIMVideoObject *videoObject = [[NIMVideoObject alloc] initWithSourcePath:filePath];
    //: videoObject.displayName = generateUUID();
    videoObject.displayName = kitData();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = videoObject;
    message.messageObject = videoObject;
    //: message.apnsContent = @"发来了一段视频".nim_localized;
    message.apnsContent = StringFromDisappointmentBoarData(appIncludeCellData).maxColor;
    //: [self setupMessage:message];
    [self value:message];
    //: return message;
    return message;
}

//: + (NIMMessage*)msgWithImage:(UIImage*)image
+ (NIMMessage*)file:(UIImage*)image
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithImage:image];
    //: NIMImageOption *option = [[NIMImageOption alloc] init];
    NIMImageOption *option = [[NIMImageOption alloc] init];
    //: option.compressQuality = 0.7;
    option.compressQuality = 0.7;
    //: imageObject.option = option;
    imageObject.option = option;
    //: return [BusyMessageMaker generateImageMessage:imageObject];
    return [SharedMaker mentalImage:imageObject];
}

//: + (NIMMessage *)msgWithImagePath:(NSString*)path
+ (NIMMessage *)atInfo:(NSString*)path
{
    //: NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    NIMImageObject * imageObject = [[NIMImageObject alloc] initWithFilepath:path];
    //: return [BusyMessageMaker generateImageMessage:imageObject];
    return [SharedMaker mentalImage:imageObject];
}

//: + (NIMMessage *)msgWithImageData:(NSData *)data extension:(NSString *)extension
+ (NIMMessage *)tool:(NSData *)data formatExtension:(NSString *)extension
{
    //: NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    NIMImageObject *imageObject = [[NIMImageObject alloc] initWithData:data extension:extension];
    //: return [BusyMessageMaker generateImageMessage:imageObject];
    return [SharedMaker mentalImage:imageObject];
}

//: + (NIMMessage *)generateImageMessage:(NIMImageObject *)imageObject
+ (NIMMessage *)mentalImage:(NIMImageObject *)imageObject
{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
//    NSString *dateString = [dateFormatter stringFromDate:[NSDate date]];
    //: imageObject.displayName = generateUUID();
    imageObject.displayName = kitData();
    //: NIMMessage *message = [[NIMMessage alloc] init];
    NIMMessage *message = [[NIMMessage alloc] init];
    //: message.messageObject = imageObject;
    message.messageObject = imageObject;
    //: message.apnsContent = [BusyLanguageManager getTextWithKey:@"init_manager_nim_status_bar_image_message"];
    message.apnsContent = [SendName streetSmart:StringFromDisappointmentBoarData(m_frameMessage)];
    //: [self setupMessage:message];
    [self value:message];
    //: return message;
    return message;
}



//: + (void)setupMessage:(NIMMessage *)message
+ (void)value:(NIMMessage *)message
{
    //: message.apnsPayload = @{
    message.apnsPayload = @{
        //: @"apns-collapse-id": message.messageId,
        StringFromDisappointmentBoarData(mainTermsValue): message.messageId,
    //: };
    };

    //: NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    NIMMessageSetting *setting = [[NIMMessageSetting alloc] init];
    //: setting.teamReceiptEnabled = YES;
    setting.teamReceiptEnabled = YES;

    //: message.setting = setting;
    message.setting = setting;
    //: message.env = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_msg_env"];
    message.env = [[NSUserDefaults standardUserDefaults] objectForKey:StringFromDisappointmentBoarData(mViewValue)];
}


//: @end
@end


//: @implementation NIMCommentMaker
@implementation SortMaker

//: + (NIMQuickComment *)commentWithType:(int64_t)type
+ (NIMQuickComment *)text:(int64_t)type
                             //: content:(NSString *)content
                             inputSignal:(NSString *)content
                                 //: ext:(NSString *)ext
                                 change:(NSString *)ext
{
    //: NIMQuickComment *comment = [[NIMQuickComment alloc] init];
    NIMQuickComment *comment = [[NIMQuickComment alloc] init];
    //: comment.ext = ext;
    comment.ext = ext;
    //: NIMQuickCommentSetting *setting = [[NIMQuickCommentSetting alloc] init];
    NIMQuickCommentSetting *setting = [[NIMQuickCommentSetting alloc] init];
    //: setting.needPush = YES;
    setting.needPush = YES;
    //: setting.needBadge = YES;
    setting.needBadge = YES;
    //: setting.pushTitle = @"你收到了一条快捷评论";
    setting.pushTitle = StringFromDisappointmentBoarData(appOverseeHaoCentralKey);
    //: setting.pushContent = content;
    setting.pushContent = content;
    //: setting.pushPayload = @{
    setting.pushPayload = @{
        //: @"key" : @"value"
        StringFromDisappointmentBoarData(show_hostageNowhereUrl) : StringFromDisappointmentBoarData(mainBankingUrl)
    //: };
    };
    //: comment.setting = setting;
    comment.setting = setting;
    //: comment.replyType = type;
    comment.replyType = type;
    //: return comment;
    return comment;
}

//: @end
@end

Byte * DisappointmentBoarDataToCache(Byte *data) {
    int shuttle = data[0];
    int psychical = data[1];
    Byte peepShow = data[2];
    int termsSilent = data[3];
    if (!shuttle) return data + termsSilent;
    for (int i = termsSilent; i < termsSilent + psychical; i++) {
        int value = data[i] + peepShow;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[termsSilent + psychical] = 0;
    return data + termsSilent;
}

NSString *StringFromDisappointmentBoarData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DisappointmentBoarDataToCache(data)];
}
