
#import <Foundation/Foundation.h>

typedef struct {
    Byte uhPsychologist;
    Byte *fosterChild;
    unsigned int crisp;
	int weepCabin;
	int saveer;
} StructBlinkData;

@interface BlinkData : NSObject

@end

@implementation BlinkData

+ (NSData *)BlinkDataToData:(NSString *)value {
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

+ (Byte *)BlinkDataToByte:(StructBlinkData *)data {
    for (int i = 0; i < data->crisp; i++) {
        data->fosterChild[i] ^= data->uhPsychologist;
    }
    data->fosterChild[data->crisp] = 0;
	if (data->crisp >= 2) {
		data->weepCabin = data->fosterChild[0];
		data->saveer = data->fosterChild[1];
	}
    return data->fosterChild;
}

+ (NSString *)StringFromBlinkData:(StructBlinkData *)data {
    return [NSString stringWithUTF8String:(char *)[self BlinkDataToByte:data]];
}

//: user
+ (NSString *)dreamChannelUrl {
    /* static */ NSString *dreamChannelUrl = nil;
    if (!dreamChannelUrl) {
		NSString *origin = @"0C0A1C0B5F";
		NSData *data = [BlinkData BlinkDataToData:origin];
        StructBlinkData value = (StructBlinkData){121, (Byte *)data.bytes, 4, 106, 178};
        dreamChannelUrl = [self StringFromBlinkData:&value];
    }
    return dreamChannelUrl;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  PaperView.m
// Case
//
//  Created by chris on 16/5/10.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyTeamMemberCardHeaderCell.h"
#import "PaperView.h"
//: #import "BusyAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "BusyUsrInfoData.h"
#import "BusyUsrInfoData.h"
//: #import "BusyCommonTableData.h"
#import "BusyCommonTableData.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "BusyKitUtil.h"
#import "OffMore.h"

//: @interface BusyTeamMemberCardHeaderCell()
@interface PaperView()

//: @property (nonatomic,strong) BusyAvatarImageView *avatarView;
@property (nonatomic,strong) CustomFormatView *avatarView;

//: @property (nonatomic,strong) UILabel *nickLabel;
@property (nonatomic,strong) UILabel *nickLabel;

//: @end
@end

//: @implementation BusyTeamMemberCardHeaderCell
@implementation PaperView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.avatarView];
        [self.contentView addSubview:self.avatarView];
        //: [self.contentView addSubview:self.nickLabel];
        [self.contentView addSubview:self.nickLabel];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView;{
- (void)should:(PublicAppearRow *)rowData position_strong:(UITableView *)tableView;{
    //: BusyKitInfo *userInfo = rowData.extraInfo[@"user"];
    Info *userInfo = rowData.extraInfo[[BlinkData dreamChannelUrl]];
    //: NSLog(@"userInfo===%@",userInfo);
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (userInfo.avatarUrlString.length) {
    if (userInfo.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
        avatarURL = [NSURL URLWithString:userInfo.avatarUrlString];
    }
    //: [self.avatarView nim_setImageWithURL:avatarURL placeholderImage:userInfo.avatarImage];
    [self.avatarView anyOn:avatarURL model:userInfo.avatarImage];
    //: self.nickLabel.text = userInfo.showName;
    self.nickLabel.text = userInfo.showName;
    //: [self.nickLabel sizeToFit];
    [self.nickLabel sizeToFit];
    //: self.userInteractionEnabled = NO;
    self.userInteractionEnabled = NO;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatarView.nim_top = 52.f;
    self.avatarView.nim_top = 52.f;
    //: self.avatarView.nim_centerX = self.nim_width * .5f;
    self.avatarView.nim_centerX = self.nim_width * .5f;
    //: self.nickLabel.nim_centerX = self.avatarView.nim_centerX;
    self.nickLabel.nim_centerX = self.avatarView.nim_centerX;
    //: self.nickLabel.nim_top = self.avatarView.nim_bottom + 10;
    self.nickLabel.nim_top = self.avatarView.nim_bottom + 10;
}


//: - (BusyAvatarImageView *)avatarView
- (CustomFormatView *)avatarView
{
    //: if (!_avatarView) {
    if (!_avatarView) {
        //: _avatarView = [[BusyAvatarImageView alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        _avatarView = [[CustomFormatView alloc] initWithFrame:CGRectMake(125, 52, 70, 70)];
        //: _avatarView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        _avatarView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
    }
    //: return _avatarView;
    return _avatarView;
}

//: - (UILabel *)nickLabel
- (UILabel *)nickLabel
{
    //: if (!_nickLabel) {
    if (!_nickLabel) {
        //: _nickLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nickLabel.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        _nickLabel.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
        //: _nickLabel.font = [UIFont systemFontOfSize:17];
        _nickLabel.font = [UIFont systemFontOfSize:17];
        //: _nickLabel.textColor = [UIColor colorWithRed:51.0 / 255 green:51.0 / 255 blue:51.0 / 255 alpha:1.0];
        _nickLabel.textColor = [UIColor colorWithRed:51.0 / 255 green:51.0 / 255 blue:51.0 / 255 alpha:1.0];
    }
    //: return _nickLabel;
    return _nickLabel;
}


//: @end
@end
