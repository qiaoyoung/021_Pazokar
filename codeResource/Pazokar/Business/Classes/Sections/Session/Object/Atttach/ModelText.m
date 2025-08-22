
#import <Foundation/Foundation.h>

NSString *StringFromChromaticData(Byte *data);


//: fileName
Byte mMemberContent[] = {78, 8, 6, 10, 218, 79, 24, 202, 161, 161, 108, 111, 114, 107, 84, 103, 115, 107, 83};

//: messageAbstract
Byte mMessageUrl[] = {20, 15, 43, 11, 101, 18, 28, 177, 11, 24, 127, 152, 144, 158, 158, 140, 146, 144, 108, 141, 158, 159, 157, 140, 142, 159, 158};

//: data
Byte userStrikeName[] = {13, 4, 19, 4, 119, 116, 135, 116, 103};

//: sender
Byte notiInputIdent[] = {10, 6, 5, 11, 58, 131, 174, 34, 37, 200, 128, 120, 106, 115, 105, 106, 119, 67};

//: password
Byte showLetterTelevisionKey[] = {7, 8, 47, 8, 3, 23, 148, 116, 159, 144, 162, 162, 166, 158, 161, 147, 127};

//: message
Byte main_toName[] = {76, 7, 12, 6, 163, 238, 121, 113, 127, 127, 109, 115, 113, 201};

//: sessionId
Byte mContentTitle[] = {51, 9, 18, 9, 21, 179, 239, 12, 31, 133, 119, 133, 133, 123, 129, 128, 91, 118, 232};

//: 聊天记录
Byte appIdealMsg[] = {41, 12, 20, 14, 175, 98, 204, 40, 126, 224, 189, 119, 103, 201, 252, 149, 158, 249, 184, 189, 252, 194, 196, 249, 209, 169, 2};

//: null
Byte kLetterTitle[] = {37, 4, 14, 4, 124, 131, 122, 122, 121};

//: md5
Byte dreamSizeMsg[] = {81, 3, 16, 8, 238, 139, 128, 17, 125, 116, 69, 164};

//: compressed
Byte m_chapterMsg[] = {36, 10, 35, 13, 40, 83, 226, 75, 37, 212, 72, 6, 154, 134, 146, 144, 147, 149, 136, 150, 150, 136, 135, 114};

//: type
Byte showMakeName[] = {30, 4, 26, 8, 227, 7, 52, 6, 142, 147, 138, 127, 80};

//: sessionName
Byte notiControlId[] = {11, 11, 21, 10, 30, 251, 217, 28, 112, 126, 136, 122, 136, 136, 126, 132, 131, 99, 118, 130, 122, 195};

//: url
Byte mainSeedUrl[] = {30, 3, 69, 9, 234, 97, 71, 153, 167, 186, 183, 177, 172};

//: encrypted
Byte main_killerTitle[] = {93, 9, 72, 4, 173, 182, 171, 186, 193, 184, 188, 173, 172, 11};

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelText.m
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMultiRetweetAttachment.h"
#import "ModelText.h"
//: #import "NTESFileLocationHelper.h"
#import "VersionData.h"
//: #import "FFFKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Doing.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "CypherScrollView+Case.h"
//: #import "NTESMessageUtil.h"
#import "WithUtil.h"
//: #import "FFFInputEmoticonParser.h"
#import "ViewApp.h"

//: @interface NTESMultiRetweetAttachment ()
@interface ModelText ()

//: @property (nonatomic,weak) NIMMessage *message;
@property (nonatomic,weak) NIMMessage *message;
//: @property (nonatomic,strong) M80AttributedLabel *label;
@property (nonatomic,strong) CypherScrollView *label;

//: @end
@end

//: @implementation NTESMultiRetweetAttachment
@implementation ModelText

//: - (NSString *)encodeAttachment {
- (NSString *)encodeAttachment {

    //: NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    //: dataDic[@"url"] = _url;
    dataDic[StringFromChromaticData(mainSeedUrl)] = _url;
    //: dataDic[@"md5"] = _md5;
    dataDic[StringFromChromaticData(dreamSizeMsg)] = _md5;
    //: dataDic[@"fileName"] = _fileName;
    dataDic[StringFromChromaticData(mMemberContent)] = _fileName;
    //: dataDic[@"compressed"] = @(_compressed);
    dataDic[StringFromChromaticData(m_chapterMsg)] = @(_compressed);
    //: dataDic[@"encrypted"] = @(_encrypted);
    dataDic[StringFromChromaticData(main_killerTitle)] = @(_encrypted);
    //: dataDic[@"password"] = _password;
    dataDic[StringFromChromaticData(showLetterTelevisionKey)] = _password;
    //: dataDic[@"messageAbstract"] = _messageAbstract;
    dataDic[StringFromChromaticData(mMessageUrl)] = _messageAbstract;
    //: dataDic[@"sessionName"] = _sessionName;
    dataDic[StringFromChromaticData(notiControlId)] = _sessionName;
    //: dataDic[@"sessionId"] = _sessionId;
    dataDic[StringFromChromaticData(mContentTitle)] = _sessionId;
    //: NSDictionary *dict = @{@"type" : @(CustomMessageTypeMultiRetweet),
    NSDictionary *dict = @{StringFromChromaticData(showMakeName) : @(CustomMessageTypeMultiRetweet),
                           //: @"data" : dataDic};
                           StringFromChromaticData(userStrikeName) : dataDic};
    //: NSData *data = [NSJSONSerialization dataWithJSONObject:dict
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict
                                                   //: options:0
                                                   options:0
                                                     //: error:nil];
                                                     error:nil];
    //: NSString *content = @"";
    NSString *content = @"";
    //: if (data) {
    if (data) {
        //: content = [[NSString alloc] initWithData:data
        content = [[NSString alloc] initWithData:data
                                        //: encoding:NSUTF8StringEncoding];
                                        encoding:NSUTF8StringEncoding];
    }


    //: return content;
    return content;
}

//: - (void)setAbstracts:(NSMutableArray<NTESMessageAbstract *> *)abstracts {
- (void)setAbstracts:(NSMutableArray<TextAbstract *> *)abstracts {
    //: _abstracts = abstracts;
    _abstracts = abstracts;
    //: NSMutableArray *abstractDics = [NSMutableArray array];
    NSMutableArray *abstractDics = [NSMutableArray array];
    //: for (NTESMessageAbstract *obj in abstracts) {
    for (TextAbstract *obj in abstracts) {
        //: NSDictionary *objDic = [obj abstractDictionary];
        NSDictionary *objDic = [obj noticeDictionary];
        //: if (objDic) {
        if (objDic) {
            //: [abstractDics addObject:objDic];
            [abstractDics addObject:objDic];
        }
    }
    //: _messageAbstract = abstractDics;
    _messageAbstract = abstractDics;
}

//: - (void)setMessageAbstract:(NSArray *)messageAbstract {
- (void)setMessageAbstract:(NSArray *)messageAbstract {
    //: _messageAbstract = messageAbstract;
    _messageAbstract = messageAbstract;
    //: if (!messageAbstract) {
    if (!messageAbstract) {
        //: _abstracts = nil;
        _abstracts = nil;
    //: } else {
    } else {
        //: _abstracts = [NSMutableArray array];
        _abstracts = [NSMutableArray array];
        //: for (id obj in messageAbstract) {
        for (id obj in messageAbstract) {
            //: if ([obj isKindOfClass:[NSDictionary class]]) {
            if ([obj isKindOfClass:[NSDictionary class]]) {
                //: NTESMessageAbstract *abstract = [NTESMessageAbstract abstractWithDictionary:obj];
                TextAbstract *abstract = [TextAbstract app:obj];
                //: if (abstract) {
                if (abstract) {
                    //: [_abstracts addObject:abstract];
                    [_abstracts addObject:abstract];
                }
            }
        }
    }
}

//: - (NSString *)formatTitleMessage {
- (NSString *)titleMessage {
    //: return [NSString stringWithFormat:@"%@%@",
    return [NSString stringWithFormat:@"%@%@",
            //: _sessionName,
            _sessionName,
            //: @"聊天记录".ntes_localized];
            StringFromChromaticData(appIdealMsg).untilNtes];
}

//: - (NSString *)formatAbstractMessage:(NTESMessageAbstract *)abstract {
- (NSString *)row:(TextAbstract *)abstract {
    //: return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
    return [NSString stringWithFormat:@"%@:%@", abstract.sender, abstract.message];
}

//: #pragma mark - 上传接口
#pragma mark - 上传接口
//: - (BOOL)attachmentNeedsUpload {
- (BOOL)attachmentNeedsUpload {
    //: return [_url length] == 0;
    return [_url length] == 0;
}

//: - (NSString *)attachmentPathForUploading {
- (NSString *)attachmentPathForUploading {
    //: return self.filePath;
    return self.filePath;
}

//: - (void)updateAttachmentURL:(NSString *)urlString {
- (void)updateAttachmentURL:(NSString *)urlString {
    //: self.url = urlString;
    self.url = urlString;
}

//: #pragma mark - 下载相关接口
#pragma mark - 下载相关接口
//: - (BOOL)attachmentNeedsDownload {
- (BOOL)attachmentNeedsDownload {
    //: NSFileManager *fm = [NSFileManager defaultManager];
    NSFileManager *fm = [NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: BOOL fileExist = ([fm fileExistsAtPath:self.filePath isDirectory:&isDir]
    BOOL fileExist = ([fm fileExistsAtPath:self.filePath isDirectory:&isDir]
                      //: && !isDir);
                      && !isDir);
    //: return !fileExist;
    return !fileExist;
}

//: - (NSString *)attachmentURLStringForDownloading {
- (NSString *)attachmentURLStringForDownloading {
    //: return _url;
    return _url;
}

//: - (NSString *)attachmentPathForDownloading {
- (NSString *)attachmentPathForDownloading {
    //: return self.filePath;
    return self.filePath;
}

//: #pragma mark - cell相关
#pragma mark - cell相关
//: - (NSString *)cellContent:(NIMMessage *)message {
- (NSString *)title:(NIMMessage *)message {
    //: return @"NTESSessionMultiRetweetContentView";
    return @"SendBubbleContentView";
}

//: - (CGSize)contentSize:(NIMMessage *)message cellWidth:(CGFloat)width {
- (CGSize)content:(NIMMessage *)message time:(CGFloat)width {
    //: CGFloat msgBubbleMaxWidth = (width - 130);
    CGFloat msgBubbleMaxWidth = (width - 130);
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    CGFloat msgContentMaxWidth = (msgBubbleMaxWidth - 2 * padding);
    //: NSString *titleString = [self formatTitleMessage];
    NSString *titleString = [self titleMessage];
    //: NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    //: CGSize bounding = CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308);
    CGSize bounding = CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308);
    //: NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    NSStringDrawingOptions options = NSStringDrawingUsesLineFragmentOrigin |NSStringDrawingUsesFontLeading;
    //: CGSize titleSize = [titleString boundingRectWithSize:bounding
    CGSize titleSize = [titleString boundingRectWithSize:bounding
                                                 //: options:options
                                                 options:options
                                              //: attributes:attribute
                                              attributes:attribute
                                                 //: context:nil].size;
                                                 context:nil].size;

    //: attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:11]};
    attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:11]};
    //: CGSize subTitleSize = [@"聊天记录".ntes_localized boundingRectWithSize:bounding
    CGSize subTitleSize = [StringFromChromaticData(appIdealMsg).untilNtes boundingRectWithSize:bounding
                                                               //: options:options
                                                               options:options
                                                            //: attributes:attribute
                                                            attributes:attribute
                                                               //: context:nil].size;
                                                               context:nil].size;


    //: CGFloat abstractHeight = 0;
    CGFloat abstractHeight = 0;
    //: for (NTESMessageAbstract *abs in _abstracts) {
    for (TextAbstract *abs in _abstracts) {
        //: [self.label nim_setText:[self formatAbstractMessage:abs]];
        [self.label nameCover:[self row:abs]];
        //: CGSize size = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        CGSize size = [self.label sizeThatFits:CGSizeMake(msgContentMaxWidth, 1.7976931348623157e+308)];
        //: abstractHeight += (size.height + padding);
        abstractHeight += (size.height + padding);
    }

    //: CGFloat height = titleSize.height +
    CGFloat height = titleSize.height +
                    //: abstractHeight + 1.0 +
                    abstractHeight + 1.0 +
                    //: padding + subTitleSize.height;
                    padding + subTitleSize.height;

    //: return CGSizeMake(msgBubbleMaxWidth, height);
    return CGSizeMake(msgBubbleMaxWidth, height);
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message {
- (UIEdgeInsets)select:(NIMMessage *)message {
    //: return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
    return UIEdgeInsetsMake(12.0, 12.0, 12.0, 4.0);
}

//: - (BOOL)canBeRevoked {
- (BOOL)straddle {
    //: return YES;
    return YES;
}

//: - (BOOL)canBeForwarded {
- (BOOL)spectrum {
    //: return YES;
    return YES;
}

//: - (NSString *)filePath
- (NSString *)filePath
{
    //: NSString *filePath = self.fileName ? [NTESFileLocationHelper filepathForMergeForwardFile:self.fileName] : nil;
    NSString *filePath = self.fileName ? [VersionData success:self.fileName] : nil;
    //: return filePath;
    return filePath;
}

//: - (NSString *)fileName
- (NSString *)fileName
{
    //: if (!_fileName) {
    if (!_fileName) {
        //: _fileName = self.url.lastPathComponent;
        _fileName = self.url.lastPathComponent;
    }
    //: return _fileName;
    return _fileName;
}

//: - (M80AttributedLabel *)label {
- (CypherScrollView *)label {
    //: if (!_label) {
    if (!_label) {
        //: _label = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
        _label = [[CypherScrollView alloc] initWithFrame:CGRectZero];
        //: _label.textColor = [UIColor lightGrayColor];
        _label.textColor = [UIColor lightGrayColor];
        //: _label.font = [UIFont systemFontOfSize:11];
        _label.font = [UIFont systemFontOfSize:11];
        //: _label.numberOfLines = 1;
        _label.numberOfLines = 1;
    }
    //: return _label;
    return _label;
}

//: @end
@end

//: #pragma mark - NTESMessageAbstract
#pragma mark - TextAbstract


//: @implementation NTESMessageAbstract
@implementation TextAbstract

//: - (NSDictionary *)abstractDictionary {
- (NSDictionary *)noticeDictionary {
    //: if (_sender && _message) {
    if (_sender && _message) {
        //: NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        NSMutableDictionary *dic = [NSMutableDictionary dictionary];
        //: dic[@"sender"] = _sender;
        dic[StringFromChromaticData(notiInputIdent)] = _sender;
        //: dic[@"message"] = _message;
        dic[StringFromChromaticData(main_toName)] = _message;
        //: return dic;
        return dic;
    //: } else {
    } else {
        //: return nil;
        return nil;
    }
}

//: + (instancetype)abstractWithMessage:(NIMMessage *)message {
+ (instancetype)date:(NIMMessage *)message {
    //: if (!message) {
    if (!message) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    TextAbstract *ret = [[TextAbstract alloc] init];
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    InfoGreenImage *option = [[InfoGreenImage alloc] init];
    //: option.session = message.session;
    option.session = message.session;
    //: option.message = message;
    option.message = message;
    //: FFFKitInfo *info = [[MyUserKit sharedKit].provider infoByUser:message.from option:option];
    Info *info = [[Case pastTop].provider consumer:message.from message:option];
    //: ret.sender = info.showName ?: @"null";
    ret.sender = info.showName ?: StringFromChromaticData(kLetterTitle);
    //: ret.message = [ret abstract:message];
    ret.message = [ret to:message];
    //: return ret;
    return ret;
}

//: + (instancetype)abstractWithDictionary:(NSDictionary *)content {
+ (instancetype)app:(NSDictionary *)content {
    //: if (!content) {
    if (!content) {
        //: return nil;
        return nil;
    }
    //: NTESMessageAbstract *ret = [[NTESMessageAbstract alloc] init];
    TextAbstract *ret = [[TextAbstract alloc] init];
    //: ret.sender = [content jsonString:@"sender"];
    ret.sender = [content withCord:StringFromChromaticData(notiInputIdent)];
    //: ret.message = [content jsonString:@"message"];
    ret.message = [content withCord:StringFromChromaticData(main_toName)];
    //: return ret;
    return ret;
}

//: - (NSString *)abstract:(NIMMessage *)message {
- (NSString *)to:(NIMMessage *)message {
    //: NSString *msg = [NTESMessageUtil messageContent:message];
    NSString *msg = [WithUtil imagePull:message];
    //: NSMutableString *ret = [NSMutableString string];
    NSMutableString *ret = [NSMutableString string];
    //: if (msg.length > (32)) {
    if (msg.length > (32)) {
        //: NSArray *tokens = [[FFFInputEmoticonParser currentParser] tokens:msg];
        NSArray *tokens = [[ViewApp today] bySumervalRed:msg];
        //: for (NIMInputTextToken *token in tokens) { 
        for (Saloon *token in tokens) { //防止emoji表情被截断
            //: if (ret.length > (32)) {
            if (ret.length > (32)) {
                //: break;
                break;
            }
            //: [ret appendString:token.text];
            [ret appendString:token.text];
        }
    //: } else {
    } else {
        //: [ret appendString:msg];
        [ret appendString:msg];
    }
    //: return ret;
    return ret;
}

//: @end
@end

Byte * ChromaticDataToCache(Byte *data) {
    int literallyCell = data[0];
    int aggressiveOption = data[1];
    Byte cornerTeam = data[2];
    int usually = data[3];
    if (!literallyCell) return data + usually;
    for (int i = usually; i < usually + aggressiveOption; i++) {
        int value = data[i] - cornerTeam;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[usually + aggressiveOption] = 0;
    return data + usually;
}

NSString *StringFromChromaticData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ChromaticDataToCache(data)];
}
