
#import <Foundation/Foundation.h>

typedef struct {
    Byte cargoAh;
    Byte *voiceGiven;
    unsigned int managerRecord;
} StructMallData;

@interface MallData : NSObject

+ (instancetype)sharedInstance;

//: tag
@property (nonatomic, copy) NSString *dreamOilValue;

//: gif
@property (nonatomic, copy) NSString *k_pateName;

//: unicode
@property (nonatomic, copy) NSString *userScapeName;

//: normal
@property (nonatomic, copy) NSString *mainChapterValue;

//: file
@property (nonatomic, copy) NSString *showEnemyTitle;

//: title
@property (nonatomic, copy) NSString *main_absoluteMsg;

//: info
@property (nonatomic, copy) NSString *user_honestlyFormat;

//: pressed
@property (nonatomic, copy) NSString *appTeamFromKey;

//: data
@property (nonatomic, copy) NSString *main_emphasizeKey;

@end

@implementation MallData

+ (instancetype)sharedInstance {
    static MallData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)MallDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)MallDataToByte:(StructMallData *)data {
    for (int i = 0; i < data->managerRecord; i++) {
        data->voiceGiven[i] ^= data->cargoAh;
    }
    data->voiceGiven[data->managerRecord] = 0;
    return data->voiceGiven;
}

- (NSString *)StringFromMallData:(StructMallData *)data {
    return [NSString stringWithUTF8String:(char *)[self MallDataToByte:data]];
}

//: data
- (NSString *)main_emphasizeKey {
    if (!_main_emphasizeKey) {
		NSArray<NSString *> *origin = @[@"89", @"92", @"73", @"92", @"61"];
		NSData *data = [MallData MallDataToData:origin];
        StructMallData value = (StructMallData){61, (Byte *)data.bytes, 4};
        _main_emphasizeKey = [self StringFromMallData:&value];
    }
    return _main_emphasizeKey;
}

//: normal
- (NSString *)mainChapterValue {
    if (!_mainChapterValue) {
		NSArray<NSString *> *origin = @[@"65", @"64", @"93", @"66", @"78", @"67", @"26"];
		NSData *data = [MallData MallDataToData:origin];
        StructMallData value = (StructMallData){47, (Byte *)data.bytes, 6};
        _mainChapterValue = [self StringFromMallData:&value];
    }
    return _mainChapterValue;
}

//: tag
- (NSString *)dreamOilValue {
    if (!_dreamOilValue) {
		NSArray<NSString *> *origin = @[@"24", @"13", @"11", @"248"];
		NSData *data = [MallData MallDataToData:origin];
        StructMallData value = (StructMallData){108, (Byte *)data.bytes, 3};
        _dreamOilValue = [self StringFromMallData:&value];
    }
    return _dreamOilValue;
}

//: pressed
- (NSString *)appTeamFromKey {
    if (!_appTeamFromKey) {
		NSArray<NSString *> *origin = @[@"17", @"19", @"4", @"18", @"18", @"4", @"5", @"80"];
		NSData *data = [MallData MallDataToData:origin];
        StructMallData value = (StructMallData){97, (Byte *)data.bytes, 7};
        _appTeamFromKey = [self StringFromMallData:&value];
    }
    return _appTeamFromKey;
}

//: info
- (NSString *)user_honestlyFormat {
    if (!_user_honestlyFormat) {
		NSArray<NSString *> *origin = @[@"193", @"198", @"206", @"199", @"187"];
		NSData *data = [MallData MallDataToData:origin];
        StructMallData value = (StructMallData){168, (Byte *)data.bytes, 4};
        _user_honestlyFormat = [self StringFromMallData:&value];
    }
    return _user_honestlyFormat;
}

//: title
- (NSString *)main_absoluteMsg {
    if (!_main_absoluteMsg) {
		NSArray<NSString *> *origin = @[@"149", @"136", @"149", @"141", @"132", @"137"];
		NSData *data = [MallData MallDataToData:origin];
        StructMallData value = (StructMallData){225, (Byte *)data.bytes, 5};
        _main_absoluteMsg = [self StringFromMallData:&value];
    }
    return _main_absoluteMsg;
}

//: unicode
- (NSString *)userScapeName {
    if (!_userScapeName) {
		NSArray<NSString *> *origin = @[@"66", @"89", @"94", @"84", @"88", @"83", @"82", @"81"];
		NSData *data = [MallData MallDataToData:origin];
        StructMallData value = (StructMallData){55, (Byte *)data.bytes, 7};
        _userScapeName = [self StringFromMallData:&value];
    }
    return _userScapeName;
}

//: gif
- (NSString *)k_pateName {
    if (!_k_pateName) {
		NSArray<NSString *> *origin = @[@"18", @"28", @"19", @"88"];
		NSData *data = [MallData MallDataToData:origin];
        StructMallData value = (StructMallData){117, (Byte *)data.bytes, 3};
        _k_pateName = [self StringFromMallData:&value];
    }
    return _k_pateName;
}

//: file
- (NSString *)showEnemyTitle {
    if (!_showEnemyTitle) {
		NSArray<NSString *> *origin = @[@"39", @"40", @"45", @"36", @"190"];
		NSData *data = [MallData MallDataToData:origin];
        StructMallData value = (StructMallData){65, (Byte *)data.bytes, 4};
        _showEnemyTitle = [self StringFromMallData:&value];
    }
    return _showEnemyTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESEmoticonManager.h
//  NIM
//
//  Created by amao on 7/2/14.
//  Copyright (c) 2014 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyInputEmoticonManager.h"
#import "DeviceManager.h"
//: #import "BusyInputEmoticonDefine.h"
#import "BusyInputEmoticonDefine.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Case.h"

//: @implementation NIMInputEmoticon
@implementation CityCenterWith

//: - (NIMEmoticonType)type {
- (NIMEmoticonType)type {
    //: if (_unicode.length) {
    if (_unicode.length) {
        //: return NIMEmoticonTypeUnicode;
        return NIMEmoticonTypeUnicode;
    }
    //: else if (_gif.length) {
    else if (_gif.length) {
        //: return NIMEmoticonTypeGif;
        return NIMEmoticonTypeGif;
    }
    //: else {
    else {
        //: return NIMEmoticonTypeFile;
        return NIMEmoticonTypeFile;
    }
}

//: @end
@end

//: @implementation NIMInputEmoticonCatalog
@implementation ImageColor
//: @end
@end

//: @implementation NIMInputEmoticonLayout
@implementation SignalingLayout

//: - (id)initEmojiLayout:(CGFloat)width
- (id)initShowTo:(CGFloat)width
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _rows = 3;
        _rows = 3;
        //: _columes = ((width - 15 - 15) / 46.0);
        _columes = ((width - 15 - 15) / 46.0);
        //: _itemCountInPage = _rows * _columes -1;
        _itemCountInPage = _rows * _columes -1;
        //: _cellWidth = (width - 15 - 15) / _columes;
        _cellWidth = (width - 15 - 15) / _columes;
        //: _cellHeight = 46.0;
        _cellHeight = 46.0;
        //: _imageWidth = 46.0;
        _imageWidth = 46.0;
        //: _imageHeight = 46.0;
        _imageHeight = 46.0;
        //: _emoji = YES;
        _emoji = YES;
    }
    //: return self;
    return self;
}

//: - (id)initCharletLayout:(CGFloat)width{
- (id)initTool:(CGFloat)width{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: _rows = 2;
        _rows = 2;
        //: _columes = ((width - 15 - 15) / 70.f);
        _columes = ((width - 15 - 15) / 70.f);
        //: _itemCountInPage = _rows * _columes;
        _itemCountInPage = _rows * _columes;
        //: _cellWidth = (width - 15 - 15) / _columes;
        _cellWidth = (width - 15 - 15) / _columes;
        //: _cellHeight = 76.0;
        _cellHeight = 76.0;
        //: _imageWidth = 70.f;
        _imageWidth = 70.f;
        //: _imageHeight = 70.f;
        _imageHeight = 70.f;
        //: _emoji = NO;
        _emoji = NO;
    }
    //: return self;
    return self;
}

//: @end
@end

//: @interface BusyInputEmoticonManager ()
@interface DeviceManager ()
//: @property (nonatomic,strong) NSArray *catalogs;
@property (nonatomic,strong) NSArray *catalogs;
//: @end
@end

//: @implementation BusyInputEmoticonManager
@implementation DeviceManager

//: + (instancetype)sharedManager
+ (instancetype)history
{
    //: static BusyInputEmoticonManager *instance = nil;
    static DeviceManager *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[BusyInputEmoticonManager alloc]init];
        instance = [[DeviceManager alloc]init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (id)init
- (id)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self parsePlist];
        [self manager];
        //: [self preloadEmoticonResource];
        [self at];
    }
    //: return self;
    return self;
}

//: - (void)start {};
- (void)elect {};

//: - (NIMInputEmoticonCatalog *)emoticonCatalog:(NSString *)catalogID
- (ImageColor *)play:(NSString *)catalogID
{
    //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
    for (ImageColor *catalog in _catalogs)
    {
        //: if ([catalog.catalogID isEqualToString:catalogID])
        if ([catalog.catalogID isEqualToString:catalogID])
        {
            //: return catalog;
            return catalog;
        }
    }
    //: return nil;
    return nil;
}


//: - (NIMInputEmoticon *)emoticonByTag:(NSString *)tag
- (CityCenterWith *)viewText:(NSString *)tag
{
    //: NIMInputEmoticon *emoticon = nil;
    CityCenterWith *emoticon = nil;
    //: if ([tag length])
    if ([tag length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (ImageColor *catalog in _catalogs)
        {
            //: emoticon = [catalog.tag2Emoticons objectForKey:tag];
            emoticon = [catalog.tag2Emoticons objectForKey:tag];
            //: if (emoticon)
            if (emoticon)
            {
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}


//: - (NIMInputEmoticon *)emoticonByID:(NSString *)emoticonID
- (CityCenterWith *)pagingTing:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    CityCenterWith *emoticon = nil;
    //: if ([emoticonID length])
    if ([emoticonID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (ImageColor *catalog in _catalogs)
        {
            //: emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
            emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
            //: if (emoticon)
            if (emoticon)
            {
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: - (NIMInputEmoticon *)emoticonByCatalogID:(NSString *)catalogID
- (CityCenterWith *)can:(NSString *)catalogID
                           //: emoticonID:(NSString *)emoticonID
                           session:(NSString *)emoticonID
{
    //: NIMInputEmoticon *emoticon = nil;
    CityCenterWith *emoticon = nil;
    //: if ([emoticonID length] && [catalogID length])
    if ([emoticonID length] && [catalogID length])
    {
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs)
        for (ImageColor *catalog in _catalogs)
        {
            //: if ([catalog.catalogID isEqualToString:catalogID])
            if ([catalog.catalogID isEqualToString:catalogID])
            {
                //: emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
                emoticon = [catalog.id2Emoticons objectForKey:emoticonID];
                //: break;
                break;
            }
        }
    }
    //: return emoticon;
    return emoticon;
}

//: - (void)parsePlist
- (void)manager
{
    //: NSMutableArray *catalogs = [NSMutableArray array];
    NSMutableArray *catalogs = [NSMutableArray array];
    //: NSString *filepath = [NSBundle nim_EmojiPlistFile];
    NSString *filepath = [NSBundle title];
    //: if (filepath) {
    if (filepath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filepath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[[MallData sharedInstance].user_honestlyFormat];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[[MallData sharedInstance].main_emphasizeKey];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            ImageColor *catalog = [self intervalerval:info
                                                     //: emoticons:emoticons];
                                                     factoid:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: NSString *filegifpath = [NSBundle nim_EmojiGifPlistFile];
    NSString *filegifpath = [NSBundle itemShadow];
    //: if (filegifpath) {
    if (filegifpath) {
        //: NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        NSArray *array = [NSArray arrayWithContentsOfFile:filegifpath];
        //: for (NSDictionary *dict in array)
        for (NSDictionary *dict in array)
        {
            //: NSDictionary *info = dict[@"info"];
            NSDictionary *info = dict[[MallData sharedInstance].user_honestlyFormat];
            //: NSArray *emoticons = dict[@"data"];
            NSArray *emoticons = dict[[MallData sharedInstance].main_emphasizeKey];

            //: NIMInputEmoticonCatalog *catalog = [self catalogByInfo:info
            ImageColor *catalog = [self intervalerval:info
                                                     //: emoticons:emoticons];
                                                     factoid:emoticons];
            //: [catalogs addObject:catalog];
            [catalogs addObject:catalog];
        }
    }

    //: _catalogs = catalogs;
    _catalogs = catalogs;
}

//: - (NIMInputEmoticonCatalog *)catalogByInfo:(NSDictionary *)info
- (ImageColor *)intervalerval:(NSDictionary *)info
                             //: emoticons:(NSArray *)emoticonsArray
                             factoid:(NSArray *)emoticonsArray
{
    //: NIMInputEmoticonCatalog *catalog = [[NIMInputEmoticonCatalog alloc]init];
    ImageColor *catalog = [[ImageColor alloc]init];
    //: catalog.catalogID = info[@"id"];
    catalog.catalogID = info[@"id"];
    //: catalog.title = info[@"title"];
    catalog.title = info[[MallData sharedInstance].main_absoluteMsg];
    //: catalog.icon = info[@"normal"];
    catalog.icon = info[[MallData sharedInstance].mainChapterValue];
    //: catalog.iconPressed = info[@"pressed"];
    catalog.iconPressed = info[[MallData sharedInstance].appTeamFromKey];
    //: NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *tag2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    NSMutableDictionary *id2Emoticons = [NSMutableDictionary dictionary];
    //: NSMutableArray *emoticons = [NSMutableArray array];
    NSMutableArray *emoticons = [NSMutableArray array];

    //: for (NSDictionary *emoticonDict in emoticonsArray) {
    for (NSDictionary *emoticonDict in emoticonsArray) {
        //: NIMInputEmoticon *emoticon = [[NIMInputEmoticon alloc] init];
        CityCenterWith *emoticon = [[CityCenterWith alloc] init];
        //: emoticon.emoticonID = emoticonDict[@"id"];
        emoticon.emoticonID = emoticonDict[@"id"];
        //: emoticon.tag = emoticonDict[@"tag"];
        emoticon.tag = emoticonDict[[MallData sharedInstance].dreamOilValue];
        //: emoticon.unicode = emoticonDict[@"unicode"];
        emoticon.unicode = emoticonDict[[MallData sharedInstance].userScapeName];
        //: emoticon.filename = emoticonDict[@"file"];
        emoticon.filename = emoticonDict[[MallData sharedInstance].showEnemyTitle];
        //: emoticon.gif = emoticonDict[@"gif"];
        emoticon.gif = emoticonDict[[MallData sharedInstance].k_pateName];

        //: if (emoticon.emoticonID) {
        if (emoticon.emoticonID) {
            //: [emoticons addObject:emoticon];
            [emoticons addObject:emoticon];
            //: id2Emoticons[emoticon.emoticonID] = emoticon;
            id2Emoticons[emoticon.emoticonID] = emoticon;
        }
        //: if (emoticon.tag) {
        if (emoticon.tag) {
            //: tag2Emoticons[emoticon.tag] = emoticon;
            tag2Emoticons[emoticon.tag] = emoticon;
        }
    }

    //: catalog.emoticons = emoticons;
    catalog.emoticons = emoticons;
    //: catalog.id2Emoticons = id2Emoticons;
    catalog.id2Emoticons = id2Emoticons;
    //: catalog.tag2Emoticons = tag2Emoticons;
    catalog.tag2Emoticons = tag2Emoticons;
    //: return catalog;
    return catalog;
}

//: - (void)preloadEmoticonResource {
- (void)at {
    //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        //: for (NIMInputEmoticonCatalog *catalog in _catalogs) {
        for (ImageColor *catalog in _catalogs) {
            //: [catalog.emoticons enumerateObjectsUsingBlock:^(NIMInputEmoticon *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [catalog.emoticons enumerateObjectsUsingBlock:^(CityCenterWith *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                //: if (obj.filename) {
                if (obj.filename) {
                   //: __unused UIImage *image = [UIImage nim_emoticonInKit:obj.filename];
                   __unused UIImage *image = [UIImage quickKit:obj.filename];
                }
            //: }];
            }];
        }
    //: });
    });
}

//: @end
@end
