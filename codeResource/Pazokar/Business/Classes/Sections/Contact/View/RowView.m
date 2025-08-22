
#import <Foundation/Foundation.h>

@interface ReplyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ReplyData

+ (instancetype)sharedInstance {
    static ReplyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ReplyDataToData:(NSString *)value {
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

- (Byte *)ReplyDataToCache:(Byte *)data {
    int bottomView = data[0];
    Byte barPop = data[1];
    int child = data[2];
    for (int i = child; i < child + bottomView; i++) {
        int value = data[i] - barPop;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[child + bottomView] = 0;
    return data + child;
}

- (NSString *)StringFromReplyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ReplyDataToCache:data]];
}

//: user_id
- (NSString *)mCornerPath {
    /* static */ NSString *mCornerPath = nil;
    if (!mCornerPath) {
		NSString *origin = @"07270549509c9a8c9986908b48";
		NSData *data = [ReplyData ReplyDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mCornerPath = [self StringFromReplyData:value];
    }
    return mCornerPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RowView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/28.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactGroupCell.h"
#import "RowView.h"

//: @implementation NTESContactGroupCell
@implementation RowView

//: - (void)initSubviews{
- (void)initBe{

    //: _iconImageView = [[UIImageView alloc] init];
    _iconImageView = [[UIImageView alloc] init];
    //: [self addSubview:_iconImageView];
    [self addSubview:_iconImageView];

    //: _avatar = [[BusyAvatarImageView alloc] init];
    _avatar = [[CustomFormatView alloc] init];
    //: [self addSubview:_avatar];
    [self addSubview:_avatar];
    //: [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
    [_avatar mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_equalTo(10);
        make.left.mas_equalTo(10);
        //: make.width.mas_equalTo(40);
        make.width.mas_equalTo(40);
        //: make.height.mas_equalTo(40);
        make.height.mas_equalTo(40);
    //: }];
    }];

    //: _titleLabel = [[UILabel alloc] init];
    _titleLabel = [[UILabel alloc] init];
    //: _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.textColor = [UIColor blackColor];
    //: _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    _titleLabel.font = [UIFont boldSystemFontOfSize:14];
    //: [self addSubview:_titleLabel];
    [self addSubview:_titleLabel];
    //: [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerY.mas_offset(0);
        make.centerY.mas_offset(0);
        //: make.left.mas_offset(60);
        make.left.mas_offset(60);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
        //: make.height.mas_equalTo(30);
        make.height.mas_equalTo(30);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)icon:(NSDictionary *)information{
    //: NSString *user_id = [information newStringValueForKey:@"user_id"];
    NSString *user_id = [information tag:[[ReplyData sharedInstance] mCornerPath]];

    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:user_id];
    //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:user_id option:nil];
    Info *info = [[Case pastTop] consumer:user_id message:nil];

    //: [_avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatar keyShared:[NSURL URLWithString:info.avatarUrlString] view:info.avatarImage extra:SDWebImageRetryFailed];

    //: _titleLabel.text = user.userInfo.nickName;
    _titleLabel.text = user.userInfo.nickName;


}

//: @end
@end
