
#import <Foundation/Foundation.h>

typedef struct {
    Byte reachingUh;
    Byte *cabinLiterally;
    unsigned int sideVirus;
} StructMineralData;

@interface MineralData : NSObject

+ (instancetype)sharedInstance;

//: emoji_ios.plist
@property (nonatomic, copy) NSString *userChannelStr;

//: bundle
@property (nonatomic, copy) NSString *appControlConsciousnessMessage;

//: %@.lproj
@property (nonatomic, copy) NSString *user_celebrityValue;

//: en.lproj
@property (nonatomic, copy) NSString *appCornerPath;

//: emoji.plist
@property (nonatomic, copy) NSString *mBalloonMessage;

//: AlongsideTruth
@property (nonatomic, copy) NSString *noti_detectSemenName;

//: NSUserDefaultLanguage
@property (nonatomic, copy) NSString *mMakeSizeStr;

@end

@implementation MineralData

+ (instancetype)sharedInstance {
    static MineralData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)MineralDataToData:(NSString *)value {
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

- (Byte *)MineralDataToByte:(StructMineralData *)data {
    for (int i = 0; i < data->sideVirus; i++) {
        data->cabinLiterally[i] ^= data->reachingUh;
    }
    data->cabinLiterally[data->sideVirus] = 0;
    return data->cabinLiterally;
}

- (NSString *)StringFromMineralData:(StructMineralData *)data {
    return [NSString stringWithUTF8String:(char *)[self MineralDataToByte:data]];
}

//: %@.lproj
- (NSString *)user_celebrityValue {
    if (!_user_celebrityValue) {
		NSString *origin = @"44214f0d11130e0b25";
		NSData *data = [MineralData MineralDataToData:origin];
        StructMineralData value = (StructMineralData){97, (Byte *)data.bytes, 8};
        _user_celebrityValue = [self StringFromMineralData:&value];
    }
    return _user_celebrityValue;
}

//: NSUserDefaultLanguage
- (NSString *)mMakeSizeStr {
    if (!_mMakeSizeStr) {
		NSString *origin = @"3d202600160137161512061f073f121d1406121416ed";
		NSData *data = [MineralData MineralDataToData:origin];
        StructMineralData value = (StructMineralData){115, (Byte *)data.bytes, 21};
        _mMakeSizeStr = [self StringFromMineralData:&value];
    }
    return _mMakeSizeStr;
}

//: AlongsideTruth
- (NSString *)noti_detectSemenName {
    if (!_noti_detectSemenName) {
		NSString *origin = @"bd9093929b8f959899a88e89889446";
		NSData *data = [MineralData MineralDataToData:origin];
        StructMineralData value = (StructMineralData){252, (Byte *)data.bytes, 14};
        _noti_detectSemenName = [self StringFromMineralData:&value];
    }
    return _noti_detectSemenName;
}

//: emoji_ios.plist
- (NSString *)userChannelStr {
    if (!_userChannelStr) {
		NSString *origin = @"545c5e5b586e585e421f415d5842456b";
		NSData *data = [MineralData MineralDataToData:origin];
        StructMineralData value = (StructMineralData){49, (Byte *)data.bytes, 15};
        _userChannelStr = [self StringFromMineralData:&value];
    }
    return _userChannelStr;
}

//: emoji.plist
- (NSString *)mBalloonMessage {
    if (!_mBalloonMessage) {
		NSString *origin = @"00080a0f0c4b15090c1611ef";
		NSData *data = [MineralData MineralDataToData:origin];
        StructMineralData value = (StructMineralData){101, (Byte *)data.bytes, 11};
        _mBalloonMessage = [self StringFromMineralData:&value];
    }
    return _mBalloonMessage;
}

//: bundle
- (NSString *)appControlConsciousnessMessage {
    if (!_appControlConsciousnessMessage) {
		NSString *origin = @"988f949e969f01";
		NSData *data = [MineralData MineralDataToData:origin];
        StructMineralData value = (StructMineralData){250, (Byte *)data.bytes, 6};
        _appControlConsciousnessMessage = [self StringFromMineralData:&value];
    }
    return _appControlConsciousnessMessage;
}

//: en.lproj
- (NSString *)appCornerPath {
    if (!_appCornerPath) {
		NSString *origin = @"8f84c4869a98858087";
		NSData *data = [MineralData MineralDataToData:origin];
        StructMineralData value = (StructMineralData){234, (Byte *)data.bytes, 8};
        _appCornerPath = [self StringFromMineralData:&value];
    }
    return _appCornerPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSBundle+NIMKit.m
// Case
//
//  Created by Genning-Work on 2019/11/14.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Case.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "BusyInputEmoticonDefine.h"
#import "BusyInputEmoticonDefine.h"
//: #import "SSZipArchiveManager.h"
#import "ValuePraise.h"

//: @implementation NSBundle (MyUserKit)
@implementation NSBundle (Case)

//: + (NSBundle *)nim_defaultEmojiBundle {
+ (NSBundle *)labelTing {
    //: NSBundle *bundle = [NSBundle bundleForClass:[MyUserKit class]];
    NSBundle *bundle = [NSBundle bundleForClass:[Case class]];
    //: NSURL *url = [bundle URLForResource:@"AlongsideTruth" withExtension:@"bundle"];
    NSURL *url = [bundle URLForResource:[MineralData sharedInstance].noti_detectSemenName withExtension:[MineralData sharedInstance].appControlConsciousnessMessage];
    //: NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    NSBundle *emojiBundle = [NSBundle bundleWithURL:url];
    //: return emojiBundle;
    return emojiBundle;
}

//: + (NSBundle *)nim_defaultLanguageBundle {
+ (NSBundle *)infoLanguage {
    // 获取语言资源所在路径
    //: NSString *lprojPath = [[SSZipArchiveManager sharedManager] getLprojPath];
    NSString *lprojPath = [[ValuePraise show] ting];
    //: if (!lprojPath || ![lprojPath length]) {
    if (!lprojPath || ![lprojPath length]) {
        //: return nil;
        return nil;
    }

    // 构建完整的语言资源路径
    //: NSString *languageName = [self preferredLanguage];
    NSString *languageName = [self recent];
    //: NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.lproj", languageName]];
    NSString *fullLprojPath = [lprojPath stringByAppendingPathComponent:[NSString stringWithFormat:[MineralData sharedInstance].user_celebrityValue, languageName]];

    // 检查路径是否存在
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
    if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        // 如果指定语言的资源不存在，尝试使用默认语言（英语）
        //: fullLprojPath = [lprojPath stringByAppendingPathComponent:@"en.lproj"];
        fullLprojPath = [lprojPath stringByAppendingPathComponent:[MineralData sharedInstance].appCornerPath];
        //: if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
        if (![[NSFileManager defaultManager] fileExistsAtPath:fullLprojPath]) {
            //: return nil;
            return nil;
        }
    }
    // 创建并返回语言资源包
    //: return [NSBundle bundleWithPath:fullLprojPath];
    return [NSBundle bundleWithPath:fullLprojPath];
}

//: + (NSString *)nim_EmojiPlistFile {
+ (NSString *)title {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[ValuePraise show] message];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji_ios.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:[MineralData sharedInstance].userChannelStr];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [Case sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji_ios" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}


//: + (NSString *)nim_EmojiGifPlistFile {
+ (NSString *)itemShadow {
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[ValuePraise show] message];
    //: NSString *plistPath = [emojiPath stringByAppendingPathComponent:@"emoji.plist"];
    NSString *plistPath = [emojiPath stringByAppendingPathComponent:[MineralData sharedInstance].mBalloonMessage];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        //: return plistPath;
        return plistPath;
    }
    //: return @"";
    return @"";
//    NSBundle *bundle = [Case sharedKit].emoticonBundle;
//    NSString *filepath = [bundle pathForResource:@"emoji" ofType:@"plist" inDirectory:NEEKIT_EmojiPath];
//    return filepath;
}

//: + (NSString *)preferredLanguage
+ (NSString *)recent
{

    //: NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
    NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:[MineralData sharedInstance].mMakeSizeStr];
    //: if (lang.length <= 0) {
    if (lang.length <= 0) {
        //: lang = @"en";
        lang = @"en";
    }
//    NSString * preferredLanguage = [NSLocale preferredLanguages].firstObject;
//    if ([preferredLanguage rangeOfString:@"zh-Hans"].location != NSNotFound) {
//        preferredLanguage = @"zh";
//    } else {
//        preferredLanguage = @"en";
//    }

    //: return lang;
    return lang;
}


//: @end
@end
