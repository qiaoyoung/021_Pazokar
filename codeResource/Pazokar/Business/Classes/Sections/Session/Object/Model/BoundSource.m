
#import <Foundation/Foundation.h>

@interface TouristViewData : NSObject

+ (instancetype)sharedInstance;

//: %@。error:%zd
@property (nonatomic, copy) NSString *show_migrationPath;

//: 附件下载错误
@property (nonatomic, copy) NSString *notiExaminePath;

//: 文件解码错误
@property (nonatomic, copy) NSString *show_leadershipPath;

@end

@implementation TouristViewData

+ (instancetype)sharedInstance {
    static TouristViewData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)TouristViewDataToCache:(Byte *)data {
    int believe = data[0];
    Byte overseeUsually = data[1];
    int textMotor = data[2];
    for (int i = textMotor; i < textMotor + believe; i++) {
        int value = data[i] + overseeUsually;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[textMotor + believe] = 0;
    return data + textMotor;
}

- (NSString *)StringFromTouristViewData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self TouristViewDataToCache:data]];
}

//: 文件解码错误
- (NSString *)show_leadershipPath {
    if (!_show_leadershipPath) {
        Byte value[] = {18, 26, 3, 204, 124, 109, 202, 161, 156, 206, 141, 137, 205, 134, 103, 207, 122, 127, 206, 149, 149, 219};
        _show_leadershipPath = [self StringFromTouristViewData:value];
    }
    return _show_leadershipPath;
}

//: 附件下载错误
- (NSString *)notiExaminePath {
    if (!_notiExaminePath) {
        Byte value[] = {18, 33, 12, 73, 178, 252, 75, 51, 157, 85, 157, 136, 200, 120, 99, 195, 154, 149, 195, 151, 106, 199, 156, 156, 200, 115, 120, 199, 142, 142, 91};
        _notiExaminePath = [self StringFromTouristViewData:value];
    }
    return _notiExaminePath;
}

//: %@。error:%zd
- (NSString *)show_migrationPath {
    if (!_show_migrationPath) {
        Byte value[] = {14, 32, 7, 109, 18, 181, 142, 5, 32, 195, 96, 98, 69, 82, 82, 79, 82, 26, 5, 90, 68, 202};
        _show_migrationPath = [self StringFromTouristViewData:value];
    }
    return _show_migrationPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BoundSource.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageDataSource.h"
#import "BoundSource.h"
//: #import "NTESMessageSerialization.h"
#import "WithNameSerialization.h"
//: #import "NTESMessageModel.h"
#import "TheoreticalAccountMessageModel.h"
//: #import "BusyTimestampModel.h"
#import "AppRow.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ModelText.h"

//: @interface NTESMergeMessageDataSource ()
@interface BoundSource ()

//: @property (nonatomic, assign) NSInteger currentDay;
@property (nonatomic, assign) NSInteger currentDay;
//: @property (nonatomic, strong) NTESMessageSerialization *serialization;
@property (nonatomic, strong) WithNameSerialization *serialization;
//: @end
@end

//: @implementation NTESMergeMessageDataSource
@implementation BoundSource

//: - (instancetype)init {
- (instancetype)init {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _serialization = [[NTESMessageSerialization alloc] init];
        _serialization = [[WithNameSerialization alloc] init];
    }
    //: return self;
    return self;
}

//: - (void)pullDataWithAttachment:(NTESMultiRetweetAttachment *)attachment
- (void)queryed:(ModelText *)attachment
                    //: completion:(void (^)(NSString *msg))complete {
                    message:(void (^)(NSString *msg))complete {
    //: __block NSString *msg = nil;
    __block NSString *msg = nil;
    //: NSFileManager *fm = [NSFileManager defaultManager];
    NSFileManager *fm = [NSFileManager defaultManager];
    //: BOOL isDir = NO;
    BOOL isDir = NO;
    //: NSString *filePath = attachment.filePath;
    NSString *filePath = attachment.filePath;
    //: NSString *fileUrl = attachment.url;
    NSString *fileUrl = attachment.url;
    //: BOOL fileExist = ([fm fileExistsAtPath:filePath isDirectory:&isDir] && !isDir);
    BOOL fileExist = ([fm fileExistsAtPath:filePath isDirectory:&isDir] && !isDir);
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (fileExist) {
    if (fileExist) {
        //: [weakSelf.serialization decode:filePath
        [weakSelf.serialization shouldBy:filePath
                               //: encrypt:attachment.encrypted
                               canister:attachment.encrypted
                              //: password:attachment.password
                              picture:attachment.password
                            //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                            viewShould:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:[TouristViewData sharedInstance].show_migrationPath,[TouristViewData sharedInstance].show_leadershipPath.untilNtes, error.code];
            //: } else {
            } else {
                //: [weakSelf checkAttachmentState:messages];
                [weakSelf anState:messages];
                //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                weakSelf.items = [weakSelf pinView:messages];
            }
            //: if (complete) {
            if (complete) {
                //: complete(msg);
                complete(msg);
            }
        //: }];
        }];
    //: } else {
    } else {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: [[NIMSDK sharedSDK].resourceManager download:fileUrl filepath:filePath progress:nil completion:^(NSError * _Nullable error) {
        [[NIMSDK sharedSDK].resourceManager download:fileUrl filepath:filePath progress:nil completion:^(NSError * _Nullable error) {
            //: if (error) {
            if (error) {
                //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"附件下载错误".ntes_localized, error.code];
                msg = [NSString stringWithFormat:[TouristViewData sharedInstance].show_migrationPath,[TouristViewData sharedInstance].notiExaminePath.untilNtes, error.code];
            //: } else {
            } else {
                //: [weakSelf.serialization decode:filePath
                [weakSelf.serialization shouldBy:filePath
                                       //: encrypt:attachment.encrypted
                                       canister:attachment.encrypted
                                      //: password:attachment.password
                                      picture:attachment.password
                                    //: completion:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                                    viewShould:^(NSError * _Nullable error, NSMutableArray<NIMMessage *> * _Nullable messages) {
                    //: if (error) {
                    if (error) {
                        //: msg = [NSString stringWithFormat:@"%@。error:%zd",@"文件解码错误".ntes_localized, error.code];
                        msg = [NSString stringWithFormat:[TouristViewData sharedInstance].show_migrationPath,[TouristViewData sharedInstance].show_leadershipPath.untilNtes, error.code];
                    //: } else {
                    } else {
                        //: [weakSelf checkAttachmentState:messages];
                        [weakSelf anState:messages];
                        //: weakSelf.items = [weakSelf itemsWithMessages:messages];
                        weakSelf.items = [weakSelf pinView:messages];
                    }
                    //: if (complete) {
                    if (complete) {
                        //: complete(msg);
                        complete(msg);
                    }
                //: }];
                }];
            }
        //: }];
        }];
    }
}

//: - (NSIndexPath *)updateMessage:(NIMMessage *)message
- (NSIndexPath *)qualifyInfoMessage:(NIMMessage *)message
{
    //: NTESMessageModel *model = nil;
    TheoreticalAccountMessageModel *model = nil;
    //: NSIndexPath *indexPath = nil;
    NSIndexPath *indexPath = nil;
    //: for (id item in _items) {
    for (id item in _items) {

        //: if (![item isKindOfClass:[NTESMessageModel class]]) {
        if (![item isKindOfClass:[TheoreticalAccountMessageModel class]]) {
            //: continue;
            continue;
        }

        //: NTESMessageModel *modelItem = (NTESMessageModel *)item;
        TheoreticalAccountMessageModel *modelItem = (TheoreticalAccountMessageModel *)item;
        //: if ([modelItem.message.messageId isEqualToString:message.messageId]) {
        if ([modelItem.message.messageId isEqualToString:message.messageId]) {
            //: model = item;
            model = item;
            //: break;
            break;
        }
    }
    //: if (model)
    if (model)
    {
        //: NTESMessageModel *target = [self setupMessageModel:message];
        TheoreticalAccountMessageModel *target = [self make:message];
        //: NSInteger index = [_items indexOfObject:model];
        NSInteger index = [_items indexOfObject:model];
        //: [_items replaceObjectAtIndex:index withObject:target];
        [_items replaceObjectAtIndex:index withObject:target];
        //: indexPath = [NSIndexPath indexPathForRow:index inSection:0];
        indexPath = [NSIndexPath indexPathForRow:index inSection:0];
    }
    //: return indexPath;
    return indexPath;
}

//: - (NTESMessageModel *)setupMessageModel:(NIMMessage *)message {
- (TheoreticalAccountMessageModel *)make:(NIMMessage *)message {
    //: NTESMessageModel *model = [[NTESMessageModel alloc] initWithMessage:message];
    TheoreticalAccountMessageModel *model = [[TheoreticalAccountMessageModel alloc] initWithLabel:message];
    //: model.focreShowAvatar = YES;
    model.focreShowAvatar = YES;
    //: model.focreShowNickName = YES;
    model.focreShowNickName = YES;
    //: model.focreShowLeft = YES;
    model.focreShowLeft = YES;
    //: return model;
    return model;
}

//: - (BusyTimestampModel *)setupTimeModel:(NSTimeInterval)timestamp {
- (AppRow *)possibility:(NSTimeInterval)timestamp {
    //: BusyTimestampModel *ret = [[BusyTimestampModel alloc] init];
    AppRow *ret = [[AppRow alloc] init];
    //: ret.messageTime = timestamp;
    ret.messageTime = timestamp;
    //: ret.height = 8.0f;
    ret.height = 8.0f;
    //: return ret;
    return ret;
}

//: - (NSMutableArray<NTESMessageModel *> *)itemsWithMessages:(NSMutableArray <NIMMessage *> *)messages {
- (NSMutableArray<TheoreticalAccountMessageModel *> *)pinView:(NSMutableArray <NIMMessage *> *)messages {
    //: NSMutableArray *items = [NSMutableArray array];
    NSMutableArray *items = [NSMutableArray array];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        //: if (idx == 0) { 
        if (idx == 0) { //插入时间
            //: weakSelf.currentDay = [weakSelf getDay:obj.timestamp];
            weakSelf.currentDay = [weakSelf mismanage:obj.timestamp];
            //: BusyTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            AppRow *timeModel = [weakSelf possibility:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            TheoreticalAccountMessageModel *msgModel = [self make:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else if ([weakSelf needInsertTimeModel:obj]){
        } else if ([weakSelf circuit:obj]){

            //: id lastMsgModel = items.lastObject;
            id lastMsgModel = items.lastObject;
            //: if ([lastMsgModel isKindOfClass:[NTESMessageModel class]]) {
            if ([lastMsgModel isKindOfClass:[TheoreticalAccountMessageModel class]]) {
                //: NTESMessageModel *model = (NTESMessageModel *)lastMsgModel;
                TheoreticalAccountMessageModel *model = (TheoreticalAccountMessageModel *)lastMsgModel;
                //: model.hiddenSeparatorLine = YES;
                model.hiddenSeparatorLine = YES;
            }

            //: BusyTimestampModel *timeModel = [weakSelf setupTimeModel:obj.timestamp];
            AppRow *timeModel = [weakSelf possibility:obj.timestamp];
            //: [items addObject:timeModel];
            [items addObject:timeModel];

            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            TheoreticalAccountMessageModel *msgModel = [self make:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        //: } else {
        } else {
            //: NTESMessageModel *msgModel = [self setupMessageModel:obj];
            TheoreticalAccountMessageModel *msgModel = [self make:obj];
            //: [items addObject:msgModel];
            [items addObject:msgModel];
        }
    //: }];
    }];
    //: return items;
    return items;
}

//: - (BOOL)needInsertTimeModel:(NIMMessage *)message {
- (BOOL)circuit:(NIMMessage *)message {
    //: BOOL ret = NO;
    BOOL ret = NO;
    //: NSInteger currentDay = [self getDay:message.timestamp];
    NSInteger currentDay = [self mismanage:message.timestamp];
    //: if (_currentDay != currentDay) {
    if (_currentDay != currentDay) {
        //: _currentDay = currentDay;
        _currentDay = currentDay;
        //: ret = YES;
        ret = YES;
    }
    //: return ret;
    return ret;
}

//: - (NSInteger)getDay:(NSTimeInterval)timestamp {
- (NSInteger)mismanage:(NSTimeInterval)timestamp {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timestamp];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"dd"];
    [formatter setDateFormat:@"dd"];
    //: NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    NSInteger currentDay=[[formatter stringFromDate:date] integerValue];
    //: return currentDay;
    return currentDay;
}


//: - (void)checkAttachmentState:(NSArray *)messages{
- (void)anState:(NSArray *)messages{
    //: NSArray *items = [NSArray arrayWithArray:messages];
    NSArray *items = [NSArray arrayWithArray:messages];
    //: for (id item in items) {
    for (id item in items) {
        //: NIMMessage *message;
        NIMMessage *message;
        //: if ([item isKindOfClass:[NIMMessage class]]) {
        if ([item isKindOfClass:[NIMMessage class]]) {
            //: message = item;
            message = item;
        }
        //: if ([item isKindOfClass:[BusyMessageModel class]]) {
        if ([item isKindOfClass:[MoreModel class]]) {
            //: message = [(BusyMessageModel *)item message];
            message = [(MoreModel *)item message];
        }
        //: if (message && !message.isOutgoingMsg
        if (message && !message.isOutgoingMsg
            //: && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            && message.attachmentDownloadState == NIMMessageAttachmentDownloadStateNeedDownload
            //: && message.messageType != NIMMessageTypeFile)
            && message.messageType != NIMMessageTypeFile)
        {
            //: [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
            [[NIMSDK sharedSDK].chatManager fetchMessageAttachment:message error:nil];
        }
    }
}

//: @end
@end
