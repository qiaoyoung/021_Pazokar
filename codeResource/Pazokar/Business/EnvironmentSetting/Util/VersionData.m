
#import <Foundation/Foundation.h>

@interface StatueData : NSObject

+ (instancetype)sharedInstance;

//: merge
@property (nonatomic, copy) NSString *m_showMsg;

//: image
@property (nonatomic, copy) NSString *app_fullData;

//: video
@property (nonatomic, copy) NSString *showCurrentlyFormat;

@end

@implementation StatueData

+ (instancetype)sharedInstance {
    static StatueData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)StatueDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)StatueDataToCache:(Byte *)data {
    int negative = data[0];
    int beamList = data[1];
    for (int i = 0; i < negative / 2; i++) {
        int begin = beamList + i;
        int end = beamList + negative - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[beamList + negative] = 0;
    return data + beamList;
}

- (NSString *)StringFromStatueData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self StatueDataToCache:data]];
}  

//: video
- (NSString *)showCurrentlyFormat {
    if (!_showCurrentlyFormat) {
		NSArray<NSString *> *origin = @[@"5", @"6", @"234", @"61", @"213", @"7", @"111", @"101", @"100", @"105", @"118", @"239"];
		NSData *data = [StatueData StatueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showCurrentlyFormat = [self StringFromStatueData:value];
    }
    return _showCurrentlyFormat;
}

//: merge
- (NSString *)m_showMsg {
    if (!_m_showMsg) {
		NSArray<NSString *> *origin = @[@"5", @"5", @"37", @"88", @"240", @"101", @"103", @"114", @"101", @"109", @"21"];
		NSData *data = [StatueData StatueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_showMsg = [self StringFromStatueData:value];
    }
    return _m_showMsg;
}

//: image
- (NSString *)app_fullData {
    if (!_app_fullData) {
		NSArray<NSString *> *origin = @[@"5", @"4", @"217", @"222", @"101", @"103", @"97", @"109", @"105", @"72"];
		NSData *data = [StatueData StatueDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_fullData = [self StringFromStatueData:value];
    }
    return _app_fullData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  VersionData.m
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFileLocationHelper.h"
#import "VersionData.h"
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "BusyConfig.h"
#import "IndexTag.h"

//: @interface NTESFileLocationHelper ()
@interface VersionData ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)icon: (NSString *)dirname filepathWithinFilename: (NSString *)filename;
//: @end
@end


//: @implementation NTESFileLocationHelper
@implementation VersionData
//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)to:(NSURL *)URL
{
    //: assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);
    assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);


    //: NSError *error = nil;
    NSError *error = nil;
    //: BOOL success = [URL setResourceValue:@(YES)
    BOOL success = [URL setResourceValue:@(YES)
                                  //: forKey:NSURLIsExcludedFromBackupKey
                                  forKey:NSURLIsExcludedFromBackupKey
                                   //: error:&error];
                                   error:&error];
    //: if(!success)
    if(!success)
    {
    }
    //: return success;
    return success;

}
//: + (NSString *)getAppDocumentPath
+ (NSString *)input
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [[BusyConfig sharedConfig] appKey];
        NSString *appKey = [[IndexTag ambit] appKey];
        //: NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        //: appDocumentPath= [[NSString alloc]initWithFormat:@"%@/%@/",[paths objectAtIndex:0],appKey];
        appDocumentPath= [[NSString alloc]initWithFormat:@"%@/%@/",[paths objectAtIndex:0],appKey];
        //: if (![[NSFileManager defaultManager] fileExistsAtPath:appDocumentPath])
        if (![[NSFileManager defaultManager] fileExistsAtPath:appDocumentPath])
        {
            //: [[NSFileManager defaultManager] createDirectoryAtPath:appDocumentPath
            [[NSFileManager defaultManager] createDirectoryAtPath:appDocumentPath
                                      //: withIntermediateDirectories:NO
                                      withIntermediateDirectories:NO
                                                       //: attributes:nil
                                                       attributes:nil
                                                            //: error:nil];
                                                            error:nil];
        }
        //: [NTESFileLocationHelper addSkipBackupAttributeToItemAtURL:[NSURL fileURLWithPath:appDocumentPath]];
        [VersionData to:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (NSString *)getAppTempPath
+ (NSString *)get
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)userDirectory
+ (NSString *)userLanguage
{
    //: NSString *documentPath = [NTESFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [VersionData input];
    //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: if ([userID length] == 0)
    if ([userID length] == 0)
    {
    }
    //: NSString* userDirectory= [NSString stringWithFormat:@"%@%@/",documentPath,userID];
    NSString* userDirectory= [NSString stringWithFormat:@"%@%@/",documentPath,userID];
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:userDirectory])
    if (![[NSFileManager defaultManager] fileExistsAtPath:userDirectory])
    {
        //: [[NSFileManager defaultManager] createDirectoryAtPath:userDirectory
        [[NSFileManager defaultManager] createDirectoryAtPath:userDirectory
                                  //: withIntermediateDirectories:NO
                                  withIntermediateDirectories:NO
                                                   //: attributes:nil
                                                   attributes:nil
                                                        //: error:nil];
                                                        error:nil];

    }
    //: return userDirectory;
    return userDirectory;
}

//: + (NSString *)resourceDir: (NSString *)resouceName
+ (NSString *)image: (NSString *)resouceName
{
    //: NSString *dir = [[NTESFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[VersionData userLanguage] stringByAppendingPathComponent:resouceName];
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:dir])
    if (![[NSFileManager defaultManager] fileExistsAtPath:dir])
    {
        //: [[NSFileManager defaultManager] createDirectoryAtPath:dir
        [[NSFileManager defaultManager] createDirectoryAtPath:dir
                                  //: withIntermediateDirectories:NO
                                  withIntermediateDirectories:NO
                                                   //: attributes:nil
                                                   attributes:nil
                                                        //: error:nil];
                                                        error:nil];
    }
    //: return dir;
    return dir;
}


//: + (NSString *)filepathForVideo:(NSString *)filename
+ (NSString *)commentAdd:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"video")
    return [VersionData icon:([StatueData sharedInstance].showCurrentlyFormat)
                                     //: filename:filename];
                                     filepathWithinFilename:filename];
}

//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)cleanVisualisation:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"image")
    return [VersionData icon:([StatueData sharedInstance].app_fullData)
                                     //: filename:filename];
                                     filepathWithinFilename:filename];
}

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename {
+ (NSString *)success:(NSString *)filename {
    //: return [NTESFileLocationHelper filepathForDir:(@"merge")
    return [VersionData icon:([StatueData sharedInstance].m_showMsg)
                                     //: filename:filename];
                                     filepathWithinFilename:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)circleInputExt:(NSString *)ext
{
    //: CFUUIDRef uuid = CFUUIDCreate(nil);
    CFUUIDRef uuid = CFUUIDCreate(nil);
    //: NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    //: CFRelease(uuid);
    CFRelease(uuid);
    //: NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    //: NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    //: return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
    return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
}


//: #pragma mark - 辅助方法
#pragma mark - 辅助方法
//: + (NSString *)filepathForDir:(NSString *)dirname
+ (NSString *)icon:(NSString *)dirname
                    //: filename:(NSString *)filename
                    filepathWithinFilename:(NSString *)filename
{
    //: return [[NTESFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[VersionData image:dirname] stringByAppendingPathComponent:filename];
}

//: @end
@end
