
#import <Foundation/Foundation.h>

@interface FinCelebData : NSObject

@end

@implementation FinCelebData

+ (NSData *)FinCelebDataToData:(NSString *)value {
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

+ (Byte *)FinCelebDataToCache:(Byte *)data {
    int viewHao = data[0];
    Byte wiseManDrawing = data[1];
    int inmateHormone = data[2];
    for (int i = inmateHormone; i < inmateHormone + viewHao; i++) {
        int value = data[i] - wiseManDrawing;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[inmateHormone + viewHao] = 0;
    return data + inmateHormone;
}

+ (NSString *)StringFromFinCelebData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FinCelebDataToCache:data]];
}

//: icon_session_time_bg
+ (NSString *)mainDueMsg {
    /* static */ NSString *mainDueMsg = nil;
    if (!mainDueMsg) {
		NSString *origin = @"145F0A8ED5E3C9DDD0D5C8C2CECDBED2C4D2D2C8CECDBED3C8CCC4BEC1C6CB";
		NSData *data = [FinCelebData FinCelebDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        mainDueMsg = [self StringFromFinCelebData:value];
    }
    return mainDueMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionTipCell.m
//  NIMDemo
//
//  Created by ght on 15-1-28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionTimestampCell.h"
#import "MaxRedViewCell.h"
//: #import "FFFCellConfig.h"
#import "FFFCellConfig.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFTimestampModel.h"
#import "AppRow.h"
//: #import "FFFKitUtil.h"
#import "OffMore.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "MyUserKit.h"
#import "Case.h"

//: @interface FFFSessionTimestampCell()
@interface MaxRedViewCell()

//: @property (nonatomic,strong) FFFTimestampModel *model;
@property (nonatomic,strong) AppRow *model;

//: @end
@end

//: @implementation FFFSessionTimestampCell
@implementation MaxRedViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
//        self.backgroundColor = [Case sharedKit].config.cellBackgroundColor;
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        //: _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _timeBGView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self.contentView addSubview:_timeBGView];
        [self.contentView addSubview:_timeBGView];
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        _timeLabel.font = [UIFont boldSystemFontOfSize:10.f];
        //: _timeLabel.textColor = [UIColor whiteColor];
        _timeLabel.textColor = [UIColor whiteColor];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];
        //: [_timeBGView setImage:[[UIImage imageNamed:@"icon_session_time_bg"] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];
        [_timeBGView setImage:[[UIImage imageNamed:[FinCelebData mainDueMsg]] resizableImageWithCapInsets:UIEdgeInsetsMake(8,20,8,20) resizingMode:UIImageResizingModeStretch]];

    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [_timeLabel sizeToFit];
    [_timeLabel sizeToFit];
    //: _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    _timeLabel.center = CGPointMake(self.nim_centerX, 20);
    //: _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
    _timeBGView.frame = CGRectMake(_timeLabel.nim_left - 7, _timeLabel.nim_top - 2, _timeLabel.nim_width + 14, _timeLabel.nim_height + 4);
}


//: - (void)refreshData:(FFFTimestampModel *)data{
- (void)stopMetadata:(AppRow *)data{
    //: if (self.model == data) {
    if (self.model == data) {
        //: return;
        return;
    }
    //: self.model = data;
    self.model = data;
    //: if([self checkData]){
    if([self status]){
        //: FFFTimestampModel *model = (FFFTimestampModel *)data;
        AppRow *model = (AppRow *)data;
        //: [_timeLabel setText:[FFFKitUtil showTime:model.messageTime showDetail:YES]];
        [_timeLabel setText:[OffMore readShow:model.messageTime voiceOver:YES]];
    }
}

//: - (BOOL)checkData{
- (BOOL)status{
    //: return [self.model isKindOfClass:[FFFTimestampModel class]];
    return [self.model isKindOfClass:[AppRow class]];
}

//: @end
@end