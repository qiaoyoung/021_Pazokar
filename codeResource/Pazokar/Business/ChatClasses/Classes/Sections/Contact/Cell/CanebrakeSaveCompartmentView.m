
#import <Foundation/Foundation.h>

typedef struct {
    Byte virusRegarding;
    Byte *subdivisionPenal;
    unsigned int scapeEnemy;
	int haoCornerRespectively;
} StructReallyData;

@interface ReallyData : NSObject

+ (instancetype)sharedInstance;

//: icon_accessory_normal
@property (nonatomic, copy) NSString *dream_contemplateControlTextId;

//: icon_accessory_selected
@property (nonatomic, copy) NSString *notiViewData;

//: head_default
@property (nonatomic, copy) NSString *main_posseName;

//: f6f6f6
@property (nonatomic, copy) NSString *userMigrationDjReadData;

@end

@implementation ReallyData

+ (instancetype)sharedInstance {
    static ReallyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ReallyDataToData:(NSString *)value {
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

- (Byte *)ReallyDataToByte:(StructReallyData *)data {
    for (int i = 0; i < data->scapeEnemy; i++) {
        data->subdivisionPenal[i] ^= data->virusRegarding;
    }
    data->subdivisionPenal[data->scapeEnemy] = 0;
	if (data->scapeEnemy >= 1) {
		data->haoCornerRespectively = data->subdivisionPenal[0];
	}
    return data->subdivisionPenal;
}

- (NSString *)StringFromReallyData:(StructReallyData *)data {
    return [NSString stringWithUTF8String:(char *)[self ReallyDataToByte:data]];
}

//: head_default
- (NSString *)main_posseName {
    if (!_main_posseName) {
		NSString *origin = @"6f6266635863626166726b7394";
		NSData *data = [ReallyData ReallyDataToData:origin];
        StructReallyData value = (StructReallyData){7, (Byte *)data.bytes, 12, 127};
        _main_posseName = [self StringFromReallyData:&value];
    }
    return _main_posseName;
}

//: icon_accessory_normal
- (NSString *)dream_contemplateControlTextId {
    if (!_dream_contemplateControlTextId) {
		NSString *origin = @"beb4b8b988b6b4b4b2a4a4b8a5ae88b9b8a5bab6bb98";
		NSData *data = [ReallyData ReallyDataToData:origin];
        StructReallyData value = (StructReallyData){215, (Byte *)data.bytes, 21, 247};
        _dream_contemplateControlTextId = [self StringFromReallyData:&value];
    }
    return _dream_contemplateControlTextId;
}

//: icon_accessory_selected
- (NSString *)notiViewData {
    if (!_notiViewData) {
		NSString *origin = @"eae0eceddce2e0e0e6f0f0ecf1fadcf0e6efe6e0f7e6e740";
		NSData *data = [ReallyData ReallyDataToData:origin];
        StructReallyData value = (StructReallyData){131, (Byte *)data.bytes, 23, 4};
        _notiViewData = [self StringFromReallyData:&value];
    }
    return _notiViewData;
}

//: f6f6f6
- (NSString *)userMigrationDjReadData {
    if (!_userMigrationDjReadData) {
		NSString *origin = @"e5b5e5b5e5b59b";
		NSData *data = [ReallyData ReallyDataToData:origin];
        StructReallyData value = (StructReallyData){131, (Byte *)data.bytes, 6, 165};
        _userMigrationDjReadData = [self StringFromReallyData:&value];
    }
    return _userMigrationDjReadData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactInfoCell.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyContactDataCell.h"
#import "CanebrakeSaveCompartmentView.h"
//: #import "BusyAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"

//: @interface BusyContactDataCell()
@interface CanebrakeSaveCompartmentView()

//: @end
@end

//: @implementation BusyContactDataCell
@implementation CanebrakeSaveCompartmentView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
        bgView.backgroundColor = [UIColor status:[ReallyData sharedInstance].userMigrationDjReadData];
        //: bgView.layer.cornerRadius = 16;
        bgView.layer.cornerRadius = 16;
        //: [self.contentView addSubview:bgView];
        [self.contentView addSubview:bgView];


        //: _avatarImageView = [[BusyAvatarImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        _avatarImageView = [[CustomFormatView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        //: [_avatarImageView addTarget:self action:@selector(onPressAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [_avatarImageView addTarget:self action:@selector(offLoad:) forControlEvents:UIControlEventTouchUpInside];
        //: [bgView addSubview:_avatarImageView];
        [bgView addSubview:_avatarImageView];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:[ReallyData sharedInstance].dream_contemplateControlTextId] forState:UIControlStateNormal];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_accessoryBtn setImage:[UIImage imageNamed:[ReallyData sharedInstance].notiViewData] forState:UIControlStateSelected];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: _accessoryBtn.hidden = YES;
        _accessoryBtn.hidden = YES;
        //: _accessoryBtn.userInteractionEnabled = NO;
        _accessoryBtn.userInteractionEnabled = NO;
        //: [bgView addSubview:_accessoryBtn];
        [bgView addSubview:_accessoryBtn];

        //: self.labName = [[UILabel alloc]initWithFrame:CGRectMake(_avatarImageView.right+15, 12, 250, 48)];
        self.labName = [[UILabel alloc]initWithFrame:CGRectMake(_avatarImageView.right+15, 12, 250, 48)];
        //: self.labName.textColor = [UIColor blackColor];
        self.labName.textColor = [UIColor blackColor];
        //: self.labName.font = [UIFont boldSystemFontOfSize:16];
        self.labName.font = [UIFont boldSystemFontOfSize:16];
        //: [bgView addSubview:self.labName];
        [bgView addSubview:self.labName];

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleGray;
        self.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    //: return self;
    return self;
}

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member {
- (void)selectChangeTab:(id<DatePraise>)member {
    //: [self refreshTitle:member.showName];
    [self replyName:member.begin];
    //: self.memberId = member.memberId;
    self.memberId = member.conference;
    //: NSURL *url = member.avatarUrlString ? [NSURL URLWithString:member.avatarUrlString] : nil;
    NSURL *url = member.title ? [NSURL URLWithString:member.title] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"] options:SDWebImageRetryFailed];
    [_avatarImageView keyShared:url view:[UIImage imageNamed:[ReallyData sharedInstance].main_posseName] extra:SDWebImageRetryFailed];
}

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)periodOfTimeUser:(id<DatePraise>)member{
    //: [self refreshTitle:member.showName];
    [self replyName:member.begin];
    //: self.memberId = [member memberId];
    self.memberId = [member conference];
    //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    Info *info = [[Case pastTop] consumer:self.memberId message:nil];
    //: [self refreshAvatar:info];
    [self byGray:info];
}

//: - (void)refreshTeam:(NIMTeam *)team; {
- (void)scaleImage:(NIMTeam *)team; {
    //: [self refreshTitle:team.teamName];
    [self replyName:team.teamName];
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    Info *info = [[Case pastTop] controlOption:self.memberId my:nil];
    //: [self refreshAvatar:info];
    [self byGray:info];
}

//: - (void)refreshTitle:(NSString *)title{
- (void)replyName:(NSString *)title{
    //: self.labName.text = title;
    self.labName.text = title;
}

//: - (void)refreshAvatar:(BusyKitInfo *)info{
- (void)byGray:(Info *)info{
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatarImageView keyShared:url view:info.avatarImage extra:SDWebImageRetryFailed];
}

//: - (void)onPressAvatar:(id)sender{
- (void)offLoad:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(offLoad:)]) {
        //: [self.delegate onPressAvatar:self.memberId];
        [self.delegate offLoad:self.memberId];
    }
}

//: - (void)addDelegate:(id)delegate{
- (void)imageText:(id)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [self.accessoryBtn setHighlighted:highlighted];
    [self.accessoryBtn setHighlighted:highlighted];
}


//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{

}






//: @end
@end
