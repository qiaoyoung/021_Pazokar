
#import <Foundation/Foundation.h>

NSString *StringFromSuccessData(Byte *data);


//: content
Byte m_centerToolIdent[] = {47, 7, 93, 13, 247, 48, 91, 76, 40, 177, 108, 207, 229, 192, 204, 203, 209, 194, 203, 209, 150};

//: timetag
Byte mainRedCellId[] = {18, 7, 8, 12, 250, 13, 116, 123, 119, 231, 236, 114, 124, 113, 117, 109, 124, 105, 111, 191};

//: sender
Byte kPopMsg[] = {29, 6, 30, 4, 145, 131, 140, 130, 131, 144, 250};

//: serial
Byte userChildName[] = {87, 6, 35, 4, 150, 136, 149, 140, 132, 143, 79};

//: receiver
Byte notiBarCornerMessage[] = {95, 8, 30, 9, 251, 250, 155, 139, 107, 144, 131, 129, 131, 135, 148, 131, 144, 210};

//: create index if not exists timetagindex on notifications(timetag)
Byte show_backgroundIdent[] = {64, 65, 61, 11, 71, 193, 28, 79, 28, 66, 241, 160, 175, 162, 158, 177, 162, 93, 166, 171, 161, 162, 181, 93, 166, 163, 93, 171, 172, 177, 93, 162, 181, 166, 176, 177, 176, 93, 177, 166, 170, 162, 177, 158, 164, 166, 171, 161, 162, 181, 93, 172, 171, 93, 171, 172, 177, 166, 163, 166, 160, 158, 177, 166, 172, 171, 176, 101, 177, 166, 170, 162, 177, 158, 164, 102, 127};

//: update notifications set status  = ? where serial = ?
Byte show_sizeId[] = {15, 53, 22, 12, 65, 243, 15, 107, 124, 131, 244, 227, 139, 134, 122, 119, 138, 123, 54, 132, 133, 138, 127, 124, 127, 121, 119, 138, 127, 133, 132, 137, 54, 137, 123, 138, 54, 137, 138, 119, 138, 139, 137, 54, 54, 83, 54, 85, 54, 141, 126, 123, 136, 123, 54, 137, 123, 136, 127, 119, 130, 54, 83, 54, 85, 32};

//: notification.db
Byte noti_managerKey[] = {35, 15, 79, 13, 27, 91, 121, 190, 1, 215, 138, 35, 242, 189, 190, 195, 184, 181, 184, 178, 176, 195, 184, 190, 189, 125, 179, 177, 57};

//: update notifications set status  = ? where status < ? or status > ?
Byte userModeContent[] = {17, 67, 66, 6, 10, 84, 183, 178, 166, 163, 182, 167, 98, 176, 177, 182, 171, 168, 171, 165, 163, 182, 171, 177, 176, 181, 98, 181, 167, 182, 98, 181, 182, 163, 182, 183, 181, 98, 98, 127, 98, 129, 98, 185, 170, 167, 180, 167, 98, 181, 182, 163, 182, 183, 181, 98, 126, 98, 129, 98, 177, 180, 98, 181, 182, 163, 182, 183, 181, 98, 128, 98, 129, 29};

//: create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)
Byte dream_nextFormat[] = {60, 165, 85, 10, 197, 219, 234, 82, 202, 110, 184, 199, 186, 182, 201, 186, 117, 201, 182, 183, 193, 186, 117, 190, 187, 117, 195, 196, 201, 117, 186, 205, 190, 200, 201, 200, 117, 195, 196, 201, 190, 187, 190, 184, 182, 201, 190, 196, 195, 200, 125, 200, 186, 199, 190, 182, 193, 117, 190, 195, 201, 186, 188, 186, 199, 117, 197, 199, 190, 194, 182, 199, 206, 117, 192, 186, 206, 129, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 117, 201, 190, 194, 186, 201, 182, 188, 117, 190, 195, 201, 186, 188, 186, 199, 129, 200, 186, 195, 185, 186, 199, 117, 201, 186, 205, 201, 129, 199, 186, 184, 186, 190, 203, 186, 199, 117, 201, 186, 205, 201, 129, 184, 196, 195, 201, 186, 195, 201, 117, 201, 186, 205, 201, 129, 200, 201, 182, 201, 202, 200, 117, 190, 195, 201, 186, 188, 186, 199, 126, 154};

//: select * from notifications where status != ? order by timetag desc limit ?
Byte kEraseImageFormat[] = {72, 75, 41, 8, 181, 197, 70, 114, 156, 142, 149, 142, 140, 157, 73, 83, 73, 143, 155, 152, 150, 73, 151, 152, 157, 146, 143, 146, 140, 138, 157, 146, 152, 151, 156, 73, 160, 145, 142, 155, 142, 73, 156, 157, 138, 157, 158, 156, 73, 74, 102, 73, 104, 73, 152, 155, 141, 142, 155, 73, 139, 162, 73, 157, 146, 150, 142, 157, 138, 144, 73, 141, 142, 156, 140, 73, 149, 146, 150, 146, 157, 73, 104, 1};

//: insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)
Byte appBackgroundUrl[] = {26, 96, 8, 11, 222, 161, 151, 101, 239, 143, 203, 113, 118, 123, 109, 122, 124, 40, 113, 118, 124, 119, 40, 118, 119, 124, 113, 110, 113, 107, 105, 124, 113, 119, 118, 123, 48, 124, 113, 117, 109, 124, 105, 111, 52, 123, 109, 118, 108, 109, 122, 52, 122, 109, 107, 109, 113, 126, 109, 122, 52, 107, 119, 118, 124, 109, 118, 124, 52, 123, 124, 105, 124, 125, 123, 49, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 126, 105, 116, 125, 109, 123, 48, 71, 52, 71, 52, 71, 52, 71, 52, 71, 49, 183};

//: select count(serial) from notifications where status = ?
Byte user_shouldFormat[] = {62, 56, 63, 5, 117, 178, 164, 171, 164, 162, 179, 95, 162, 174, 180, 173, 179, 103, 178, 164, 177, 168, 160, 171, 104, 95, 165, 177, 174, 172, 95, 173, 174, 179, 168, 165, 168, 162, 160, 179, 168, 174, 173, 178, 95, 182, 167, 164, 177, 164, 95, 178, 179, 160, 179, 180, 178, 95, 124, 95, 126, 128};

//: select * from notifications where timetag < %f and status != ? order by timetag desc limit ?
Byte kAfterValue[] = {82, 92, 84, 11, 103, 167, 15, 175, 20, 13, 89, 199, 185, 192, 185, 183, 200, 116, 126, 116, 186, 198, 195, 193, 116, 194, 195, 200, 189, 186, 189, 183, 181, 200, 189, 195, 194, 199, 116, 203, 188, 185, 198, 185, 116, 200, 189, 193, 185, 200, 181, 187, 116, 144, 116, 121, 186, 116, 181, 194, 184, 116, 199, 200, 181, 200, 201, 199, 116, 117, 145, 116, 147, 116, 195, 198, 184, 185, 198, 116, 182, 205, 116, 200, 189, 193, 185, 200, 181, 187, 116, 184, 185, 199, 183, 116, 192, 189, 193, 189, 200, 116, 147, 42};

//: update notifications set status  = ? where status = ?
Byte noti_centerKey[] = {36, 53, 69, 5, 41, 186, 181, 169, 166, 185, 170, 101, 179, 180, 185, 174, 171, 174, 168, 166, 185, 174, 180, 179, 184, 101, 184, 170, 185, 101, 184, 185, 166, 185, 186, 184, 101, 101, 130, 101, 132, 101, 188, 173, 170, 183, 170, 101, 184, 185, 166, 185, 186, 184, 101, 130, 101, 132, 26};

//: create index if not exists readindex on notifications(status)
Byte k_shouldData[] = {99, 61, 4, 7, 17, 47, 127, 103, 118, 105, 101, 120, 105, 36, 109, 114, 104, 105, 124, 36, 109, 106, 36, 114, 115, 120, 36, 105, 124, 109, 119, 120, 119, 36, 118, 105, 101, 104, 109, 114, 104, 105, 124, 36, 115, 114, 36, 114, 115, 120, 109, 106, 109, 103, 101, 120, 109, 115, 114, 119, 44, 119, 120, 101, 120, 121, 119, 45, 125};

// __DEBUG__
// __CLOSE_PRINT__
//
//  AppDb.m
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCustomNotificationDB.h"
#import "AppDb.h"
//: #import "FMDB.h"
#import "FMDB.h"
//: #import "NTESFileLocationHelper.h"
#import "VersionData.h"
//: #import "NTESCustomNotificationObject.h"
#import "TopSortDate.h"

//: typedef NS_ENUM(NSInteger, CustomNotificationStatus){
typedef NS_ENUM(NSInteger, CustomNotificationStatus){
    //: CustomNotificationStatusNone = 0,
    CustomNotificationStatusNone = 0,
    //: CustomNotificationStatusRead = 1,
    CustomNotificationStatusRead = 1,
    //: CustomNotificationStatusDeleted = 2,
    CustomNotificationStatusDeleted = 2,
//: };
};

//: @interface NTESCustomNotificationDB ()
@interface AppDb ()
//: @property (nonatomic,strong) FMDatabase *db;
@property (nonatomic,strong) FMDatabase *db;
//: @end
@end


//: @implementation NTESCustomNotificationDB
@implementation AppDb

//: + (instancetype)sharedInstance { static NTESCustomNotificationDB *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[NTESCustomNotificationDB alloc] init]; }); return sharedNTESCustomNotificationDB; };
+ (instancetype)onCommon { static AppDb *sharedNTESCustomNotificationDB = nil; static dispatch_once_t pred; _dispatch_once(&pred, ^{ sharedNTESCustomNotificationDB = [[AppDb alloc] init]; }); return sharedNTESCustomNotificationDB; };

//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [self openDatabase];
        [self can];
    }
    //: return self;
    return self;
}


//: - (NSInteger)unreadCount
- (NSInteger)unreadCount
{
    //: __block NSInteger count = 0;
    __block NSInteger count = 0;
    //: io_sync_safe(^{
    presentationName(^{
        //: count = _unreadCount;
        count = _unreadCount;
    //: });
    });
    //: return count;
    return count;
}

//: - (NSArray *)fetchNotifications:(NTESCustomNotificationObject *)notification
- (NSArray *)origin:(TopSortDate *)notification
                          //: limit:(NSInteger)limit{
                          window:(NSInteger)limit{
    //: __block NSArray *result = nil;
    __block NSArray *result = nil;

    //: NSString *sql = nil;
    NSString *sql = nil;
    //: if (notification)
    if (notification)
    {
        //: sql = [NSString stringWithFormat:@"select * from notifications where timetag < %f and status != ? order by timetag desc limit ?",
        sql = [NSString stringWithFormat:StringFromSuccessData(kAfterValue),
               //: notification.timestamp] ;
               notification.timestamp] ;
    }
    //: else
    else
    {
        //: sql = @"select * from notifications where status != ? order by timetag desc limit ?";
        sql = StringFromSuccessData(kEraseImageFormat);
    }
    //: io_sync_safe(^{
    presentationName(^{
        //: NSMutableArray *array = [NSMutableArray array];
        NSMutableArray *array = [NSMutableArray array];
        //: FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        FMResultSet *rs = [self.db executeQuery:sql,@(CustomNotificationStatusDeleted),@(limit)];
        //: while ([rs next])
        while ([rs next])
        {
            //: NTESCustomNotificationObject *notification = [[NTESCustomNotificationObject alloc] init];
            TopSortDate *notification = [[TopSortDate alloc] init];
            //: notification.serial = (NSInteger)[rs intForColumn:@"serial"];
            notification.serial = (NSInteger)[rs intForColumn:StringFromSuccessData(userChildName)];
            //: notification.timestamp = [rs doubleForColumn:@"timetag"];
            notification.timestamp = [rs doubleForColumn:StringFromSuccessData(mainRedCellId)];
            //: notification.sender = [rs stringForColumn:@"sender"];
            notification.sender = [rs stringForColumn:StringFromSuccessData(kPopMsg)];
            //: notification.receiver = [rs stringForColumn:@"receiver"];
            notification.receiver = [rs stringForColumn:StringFromSuccessData(notiBarCornerMessage)];
            //: notification.content = [rs stringForColumn:@"content"];
            notification.content = [rs stringForColumn:StringFromSuccessData(m_centerToolIdent)];
            //: [array addObject:notification];
            [array addObject:notification];
        }
        //: [rs close];
        [rs close];
        //: result = array;
        result = array;
    //: });
    });

    //: return result;
    return result;

}

//: - (BOOL)saveNotification:(NTESCustomNotificationObject *)notification{
- (BOOL)viewText:(TopSortDate *)notification{
    //: __block BOOL result = NO;
    __block BOOL result = NO;
    //: io_sync_safe(^{
    presentationName(^{
        //: if (notification)
        if (notification)
        {
            //: CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            CustomNotificationStatus status = notification.needBadge? CustomNotificationStatusNone : CustomNotificationStatusRead;
            //: NSString *sql = @"insert into notifications(timetag,sender,receiver,content,status)              values(?,?,?,?,?)";
            NSString *sql = StringFromSuccessData(appBackgroundUrl);

            //: if (![self.db executeUpdate:sql,
            if (![self.db executeUpdate:sql,
                  //: @(notification.timestamp),
                  @(notification.timestamp),
                  //: notification.sender,
                  notification.sender,
                  //: notification.receiver,
                  notification.receiver,
                  //: notification.content,
                  notification.content,
                  //: @(status)])
                  @(status)])
            {
            }
            //: else
            else
            {
                //: notification.serial = (NSInteger)[self.db lastInsertRowId];
                notification.serial = (NSInteger)[self.db lastInsertRowId];
                //: if (notification.needBadge) {
                if (notification.needBadge) {
                    //: self.unreadCount++;
                    self.unreadCount++;
                }
                //: result = YES;
                result = YES;
            }
        }
    //: });
    });
    //: return result;
    return result;

}

//: - (void)deleteNotification:(NTESCustomNotificationObject *)notification{
- (void)myNotification:(TopSortDate *)notification{
    //: NSString *sql = @"update notifications set status  = ? where serial = ?";
    NSString *sql = StringFromSuccessData(show_sizeId);
    //: io_async(^{
    orientationAssociated(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(notification.serial)])
        {
        }
        //: [self queryUnreadCount];
        [self warpathBy];
    //: });
    });
}


//: - (void)deleteAllNotification{
- (void)message{
    //: NSString *sql = @"update notifications set status  = ? where status < ? or status > ?";
    NSString *sql = StringFromSuccessData(userModeContent);
    //: io_async(^{
    orientationAssociated(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted),@(CustomNotificationStatusDeleted)])
        {
        }
        //: [self queryUnreadCount];
        [self warpathBy];
    //: });
    });
}


//: - (void)markAllNotificationsAsRead{
- (void)showRead{
    //: NSString *sql = @"update notifications set status  = ? where status = ?";
    NSString *sql = StringFromSuccessData(noti_centerKey);
    //: io_sync_safe(^{
    presentationName(^{
        //: if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        if (![self.db executeUpdate:sql,@(CustomNotificationStatusRead),@(CustomNotificationStatusNone)])
        {
        }
        //: [self queryUnreadCount];
        [self warpathBy];
    //: });
    });
}

//: - (void)queryUnreadCount{
- (void)warpathBy{
    //: NSInteger count = 0;
    NSInteger count = 0;
    //: NSString *sql = @"select count(serial) from notifications where status = ?";
    NSString *sql = StringFromSuccessData(user_shouldFormat);
    //: FMResultSet *rs = [_db executeQuery:sql,@(CustomNotificationStatusNone)];
    FMResultSet *rs = [_db executeQuery:sql,@(CustomNotificationStatusNone)];
    //: if ([rs next])
    if ([rs next])
    {
        //: count = (NSInteger)[rs intForColumnIndex:0];
        count = (NSInteger)[rs intForColumnIndex:0];
    }
    //: [rs close];
    [rs close];

    //: if (count != _unreadCount)
    if (count != _unreadCount)
    {
        //: self.unreadCount = count;
        self.unreadCount = count;
    }
}


//: #pragma mark - Misc
#pragma mark - Misc
//: - (void)openDatabase
- (void)can
{
    //: NSString *filepath = [[NTESFileLocationHelper userDirectory] stringByAppendingString:@"notification.db"];
    NSString *filepath = [[VersionData userLanguage] stringByAppendingString:StringFromSuccessData(noti_managerKey)];
    //: FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    FMDatabase *db = [FMDatabase databaseWithPath:filepath];
    //: if ([db open])
    if ([db open])
    {
        //: _db = db;
        _db = db;
        //: NSArray *sqls = @[@"create table if not exists notifications(serial integer primary key,                           timetag integer,sender text,receiver text,content text,status integer)",
        NSArray *sqls = @[StringFromSuccessData(dream_nextFormat),

                          //: @"create index if not exists readindex on notifications(status)",
                          StringFromSuccessData(k_shouldData),
                          //: @"create index if not exists timetagindex on notifications(timetag)"];
                          StringFromSuccessData(show_backgroundIdent)];
        //: for (NSString *sql in sqls)
        for (NSString *sql in sqls)
        {
            //: if (![_db executeUpdate:sql])
            if (![_db executeUpdate:sql])
            {
            }
        }
        //: [self queryUnreadCount];
        [self warpathBy];
    }
    //: else
    else
    {
    }
}

//: static const void * const NTESDispatchIOSpecificKey = &NTESDispatchIOSpecificKey;
static const void * const m_movieName = &m_movieName;
//: dispatch_queue_t NTESDispatchIOQueue()
dispatch_queue_t gravityCellTouch()
{
    //: static dispatch_queue_t queue;
    static dispatch_queue_t queue;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: queue = dispatch_queue_create("nim.demo.io.queue", 0);
        queue = dispatch_queue_create("nim.demo.io.queue", 0);
        //: dispatch_queue_set_specific(queue, NTESDispatchIOSpecificKey, (void *)NTESDispatchIOSpecificKey, NULL);
        dispatch_queue_set_specific(queue, m_movieName, (void *)m_movieName, NULL);
    //: });
    });
    //: return queue;
    return queue;
}


//: typedef void(^dispatch_block)(void);
typedef void(^dispatch_block)(void);
//: void io_sync_safe(dispatch_block block)
void presentationName(dispatch_block block)
{
    //: if (dispatch_get_specific(NTESDispatchIOSpecificKey))
    if (dispatch_get_specific(m_movieName))
    {
        //: block();
        block();
    }
    //: else
    else
    {
        //: dispatch_sync(NTESDispatchIOQueue(), ^() {
        dispatch_sync(gravityCellTouch(), ^() {
            //: block();
            block();
        //: });
        });
    }
}


//: void io_async(dispatch_block block){
void orientationAssociated(dispatch_block block){
    //: dispatch_async(NTESDispatchIOQueue(), ^() {
    dispatch_async(gravityCellTouch(), ^() {
        //: block();
        block();
    //: });
    });
}


//: @end
@end

Byte * SuccessDataToCache(Byte *data) {
    int countrinsicFactor = data[0];
    int computerFilename = data[1];
    Byte recentShould = data[2];
    int textRed = data[3];
    if (!countrinsicFactor) return data + textRed;
    for (int i = textRed; i < textRed + computerFilename; i++) {
        int value = data[i] - recentShould;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[textRed + computerFilename] = 0;
    return data + textRed;
}

NSString *StringFromSuccessData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SuccessDataToCache(data)];
}
