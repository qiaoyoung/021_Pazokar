
#import <Foundation/Foundation.h>

typedef struct {
    Byte prisonHouse;
    Byte *centerAggressive;
    unsigned int numberInmate;
	int gateCenterSituation;
	int cornerSemenFin;
	int nextName;
} StructDisappointedData;

@interface DisappointedData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DisappointedData

+ (instancetype)sharedInstance {
    static DisappointedData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)DisappointedDataToData:(NSString *)value {
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

- (Byte *)DisappointedDataToByte:(StructDisappointedData *)data {
    for (int i = 0; i < data->numberInmate; i++) {
        data->centerAggressive[i] ^= data->prisonHouse;
    }
    data->centerAggressive[data->numberInmate] = 0;
	if (data->numberInmate >= 3) {
		data->gateCenterSituation = data->centerAggressive[0];
		data->cornerSemenFin = data->centerAggressive[1];
		data->nextName = data->centerAggressive[2];
	}
    return data->centerAggressive;
}

- (NSString *)StringFromDisappointedData:(StructDisappointedData *)data {
    return [NSString stringWithUTF8String:(char *)[self DisappointedDataToByte:data]];
}

//: 查看红包
- (NSString *)kKillerFormat {
    /* static */ NSString *kKillerFormat = nil;
    if (!kKillerFormat) {
		NSString *origin = @"8cf5cf8df6e18dd0c88fe6eff7";
		NSData *data = [DisappointedData DisappointedDataToData:origin];
        StructDisappointedData value = (StructDisappointedData){106, (Byte *)data.bytes, 12, 21, 126, 168};
        kKillerFormat = [self StringFromDisappointedData:&value];
    }
    return kKillerFormat;
}

//: icon_redpacket_custom
- (NSString *)kControlCellMsg {
    /* static */ NSString *kControlCellMsg = nil;
    if (!kControlCellMsg) {
		NSString *origin = @"d9d3dfdeefc2d5d4c0d1d3dbd5c4efd3c5c3c4dfdd8b";
		NSData *data = [DisappointedData DisappointedDataToData:origin];
        StructDisappointedData value = (StructDisappointedData){176, (Byte *)data.bytes, 21, 151, 80, 252};
        kControlCellMsg = [self StringFromDisappointedData:&value];
    }
    return kControlCellMsg;
}

//: isaccept
- (NSString *)dream_viewUrl {
    /* static */ NSString *dream_viewUrl = nil;
    if (!dream_viewUrl) {
		NSString *origin = @"5e44565454524743be";
		NSData *data = [DisappointedData DisappointedDataToData:origin];
        StructDisappointedData value = (StructDisappointedData){55, (Byte *)data.bytes, 8, 188, 229, 254};
        dream_viewUrl = [self StringFromDisappointedData:&value];
    }
    return dream_viewUrl;
}

//: pressed
- (NSString *)notiTouristFormat {
    /* static */ NSString *notiTouristFormat = nil;
    if (!notiTouristFormat) {
		NSString *origin = @"969483959583821b";
		NSData *data = [DisappointedData DisappointedDataToData:origin];
        StructDisappointedData value = (StructDisappointedData){230, (Byte *)data.bytes, 7, 171, 48, 226};
        notiTouristFormat = [self StringFromDisappointedData:&value];
    }
    return notiTouristFormat;
}

//: from_
- (NSString *)k_backgroundMessage {
    /* static */ NSString *k_backgroundMessage = nil;
    if (!k_backgroundMessage) {
		NSString *origin = @"b2a6bbb98b1c";
		NSData *data = [DisappointedData DisappointedDataToData:origin];
        StructDisappointedData value = (StructDisappointedData){212, (Byte *)data.bytes, 5, 212, 42, 98};
        k_backgroundMessage = [self StringFromDisappointedData:&value];
    }
    return k_backgroundMessage;
}

//: data
- (NSString *)showHandleId {
    /* static */ NSString *showHandleId = nil;
    if (!showHandleId) {
		NSString *origin = @"77726772a1";
		NSData *data = [DisappointedData DisappointedDataToData:origin];
        StructDisappointedData value = (StructDisappointedData){19, (Byte *)data.bytes, 4, 8, 81, 82};
        showHandleId = [self StringFromDisappointedData:&value];
    }
    return showHandleId;
}

//: normal
- (NSString *)user_pathFormat {
    /* static */ NSString *user_pathFormat = nil;
    if (!user_pathFormat) {
		NSString *origin = @"f8f9e4fbf7fa6c";
		NSData *data = [DisappointedData DisappointedDataToData:origin];
        StructDisappointedData value = (StructDisappointedData){150, (Byte *)data.bytes, 6, 124, 255, 130};
        user_pathFormat = [self StringFromDisappointedData:&value];
    }
    return user_pathFormat;
}

//: 领取红包
- (NSString *)show_sizeSeedCornerValue {
    /* static */ NSString *show_sizeSeedCornerValue = nil;
    if (!show_sizeSeedCornerValue) {
		NSString *origin = @"4e0521422831401d05422b2245";
		NSData *data = [DisappointedData DisappointedDataToData:origin];
        StructDisappointedData value = (StructDisappointedData){167, (Byte *)data.bytes, 12, 120, 138, 238};
        show_sizeSeedCornerValue = [self StringFromDisappointedData:&value];
    }
    return show_sizeSeedCornerValue;
}

//: redid
- (NSString *)notiLetterTitle {
    /* static */ NSString *notiLetterTitle = nil;
    if (!notiLetterTitle) {
		NSString *origin = @"f7e0e1ece1e0";
		NSData *data = [DisappointedData DisappointedDataToData:origin];
        StructDisappointedData value = (StructDisappointedData){133, (Byte *)data.bytes, 5, 225, 242, 111};
        notiLetterTitle = [self StringFromDisappointedData:&value];
    }
    return notiLetterTitle;
}

//: icon_redpacket_
- (NSString *)showChapterText {
    /* static */ NSString *showChapterText = nil;
    if (!showChapterText) {
		NSString *origin = @"faf0fcfdcce1f6f7e3f2f0f8f6e7cc1a";
		NSData *data = [DisappointedData DisappointedDataToData:origin];
        StructDisappointedData value = (StructDisappointedData){147, (Byte *)data.bytes, 15, 124, 116, 177};
        showChapterText = [self StringFromDisappointedData:&value];
    }
    return showChapterText;
}

//: /wallet/isAcceptRed
- (NSString *)notiRedMessage {
    /* static */ NSString *notiRedMessage = nil;
    if (!notiRedMessage) {
		NSString *origin = @"00584e43434a5b00465c6e4c4c4a5f5b7d4a4b6e";
		NSData *data = [DisappointedData DisappointedDataToData:origin];
        StructDisappointedData value = (StructDisappointedData){47, (Byte *)data.bytes, 19, 86, 185, 164};
        notiRedMessage = [self StringFromDisappointedData:&value];
    }
    return notiRedMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketContentView.h"
#import "TitleControl.h"
//: #import "NTESRedPacketAttachment.h"
#import "BubbleTitleLabel.h"

//: NSString *const NIMDemoEventNameOpenRedPacket = @"NIMDemoEventNameOpenRedPacket";
NSString *const k_statusMessage = @"NIMDemoEventNameOpenRedPacket";

//: @interface NTESSessionRedPacketContentView()
@interface TitleControl()

//: @property (nonatomic ,strong) UIImageView *redPacketImage;
@property (nonatomic ,strong) UIImageView *redPacketImage;

//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;

//: @property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

//: @property (nonatomic, strong) UILabel *descLabel;
@property (nonatomic, strong) UILabel *descLabel;

//: @property (nonatomic, strong) UIView *whiteView;
@property (nonatomic, strong) UIView *whiteView;

//: @property (nonatomic, strong) UITapGestureRecognizer *tap;
@property (nonatomic, strong) UITapGestureRecognizer *tap;

//: @end
@end

//: @implementation NTESSessionRedPacketContentView
@implementation TitleControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initColorSession{
    //: self = [super initSessionMessageContentView];
    self = [super initColorSession];
    //: if (self) {
    if (self) {
        // 内容布局
//        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _titleLabel.font = [UIFont systemFontOfSize:12.f];
//        _subTitleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _subTitleLabel.font = [UIFont systemFontOfSize:12.f];
//        _descLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _descLabel.font = [UIFont systemFontOfSize:13.f];

        //: _redPacketImage = [[UIImageView alloc] init];
        _redPacketImage = [[UIImageView alloc] init];
        //: _redPacketImage.clipsToBounds = YES;
        _redPacketImage.clipsToBounds = YES;
        //: _redPacketImage.contentMode = UIViewContentModeScaleAspectFill;
        _redPacketImage.contentMode = UIViewContentModeScaleAspectFill;
        //: _redPacketImage.image = [UIImage imageNamed:@"icon_redpacket_custom"];
        _redPacketImage.image = [UIImage imageNamed:[[DisappointedData sharedInstance] kControlCellMsg]];
        //: _redPacketImage.layer.masksToBounds = YES;
        _redPacketImage.layer.masksToBounds = YES;
        //: _redPacketImage.layer.cornerRadius = 10;
        _redPacketImage.layer.cornerRadius = 10;

        //: _whiteView = [[UIView alloc] init];
        _whiteView = [[UIView alloc] init];
        //: _whiteView.userInteractionEnabled = NO;
        _whiteView.userInteractionEnabled = NO;
        //: _whiteView.backgroundColor = [UIColor whiteColor];
        _whiteView.backgroundColor = [UIColor whiteColor];
        //: _whiteView.alpha = 0.5;
        _whiteView.alpha = 0.5;
        //: _whiteView.hidden = YES;
        _whiteView.hidden = YES;

        //: self.bubbleImageView.hidden = YES;
        self.bubbleImageView.hidden = YES;

        //: [self addSubview:_redPacketImage];
        [self addSubview:_redPacketImage];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [self addSubview:_subTitleLabel];
        [self addSubview:_subTitleLabel];
        //: [self addSubview:_descLabel];
        [self addSubview:_descLabel];
        //: [self addSubview:_whiteView];
        [self addSubview:_whiteView];

    }
    //: return self;
    return self;
}


//: - (void)onTouchUpInside:(id)sender
- (void)objects:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(memberEvent:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        DirectionEvent *event = [[DirectionEvent alloc] init];
        //: event.eventName = NIMDemoEventNameOpenRedPacket;
        event.eventName = k_statusMessage;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate memberEvent:event];
    }
}

//: #pragma mark - 系统父类方法
#pragma mark - 系统父类方法
//: - (void)refresh:(FFFMessageModel*)data{
- (void)messagePress:(MoreModel*)data{
    //: [super refresh:data];
    [super messagePress:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESRedPacketAttachment *attachment = (NTESRedPacketAttachment *)object.attachment;
    BubbleTitleLabel *attachment = (BubbleTitleLabel *)object.attachment;

    //: self.titleLabel.text = attachment.title;
    self.titleLabel.text = attachment.title;
    //: self.descLabel.text = attachment.content;
    self.descLabel.text = attachment.content;

    //: self.titleLabel.textColor = [UIColor lightGrayColor];
    self.titleLabel.textColor = [UIColor lightGrayColor];
    //: self.subTitleLabel.textColor = [UIColor whiteColor];
    self.subTitleLabel.textColor = [UIColor whiteColor];
    //: self.descLabel.textColor = [UIColor whiteColor];
    self.descLabel.textColor = [UIColor whiteColor];

    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
    //: CGRect rect = self.titleLabel.frame;
    CGRect rect = self.titleLabel.frame;
    //: if (CGRectGetMaxX(rect) > self.bounds.size.width)
    if (CGRectGetMaxX(rect) > self.bounds.size.width)
    {
        //: rect.size.width = self.bounds.size.width - rect.origin.x - 20;
        rect.size.width = self.bounds.size.width - rect.origin.x - 20;
        //: self.titleLabel.frame = rect;
        self.titleLabel.frame = rect;
    }
    //: self.subTitleLabel.text = self.model.message.isOutgoingMsg? @"查看红包".ntes_localized : @"领取红包".ntes_localized;
    self.subTitleLabel.text = self.model.message.isOutgoingMsg? [[DisappointedData sharedInstance] kKillerFormat].untilNtes : [[DisappointedData sharedInstance] show_sizeSeedCornerValue].untilNtes;

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"redid"] = attachment.redPacketId;
    dict[[[DisappointedData sharedInstance] notiLetterTitle]] = attachment.redPacketId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/isAcceptRed"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[[DisappointedData sharedInstance] notiRedMessage]] read:dict indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *dataDict = [resultDict valueObjectForKey:@"data"];
        NSDictionary *dataDict = [resultDict selected:[[DisappointedData sharedInstance] showHandleId]];
        //: NSString *isaccept = [dataDict newStringValueForKey:@"isaccept"];
        NSString *isaccept = [dataDict tag:[[DisappointedData sharedInstance] dream_viewUrl]];
        //: if (isaccept.integerValue == 0) {
        if (isaccept.integerValue == 0) {
            //: _whiteView.hidden = YES;
            _whiteView.hidden = YES;
        //: }else{
        }else{
            //: _whiteView.hidden = NO;
            _whiteView.hidden = NO;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _redPacketImage.frame = CGRectMake(0, 0, 160, 180);
    _redPacketImage.frame = CGRectMake(0, 0, 160, 180);
    //: _whiteView.frame = CGRectMake(0, 0, 160, 180);
    _whiteView.frame = CGRectMake(0, 0, 160, 180);

    //: BOOL outgoing = self.model.message.isOutgoingMsg;
    BOOL outgoing = self.model.message.isOutgoingMsg;
    //: if (outgoing)
    if (outgoing)
    {
        //: self.descLabel.frame = CGRectMake(12.0f+31.f+12.f, 17.f, 160.f, 24.f);
        self.descLabel.frame = CGRectMake(12.0f+31.f+12.f, 17.f, 160.f, 24.f);
        //: self.subTitleLabel.frame = CGRectMake(12.0f+31.f+12.f, 39.f, 150.f, 20.f);
        self.subTitleLabel.frame = CGRectMake(12.0f+31.f+12.f, 39.f, 150.f, 20.f);
        //: self.titleLabel.frame = CGRectMake(7.0f, 93.f-18.f, 180.f, 21.f);
        self.titleLabel.frame = CGRectMake(7.0f, 93.f-18.f, 180.f, 21.f);
    }
    //: else
    else
    {
        //: self.descLabel.frame = CGRectMake(12.f+31.f+12.f, 17.f, 160.f, 24.f);
        self.descLabel.frame = CGRectMake(12.f+31.f+12.f, 17.f, 160.f, 24.f);
        //: self.subTitleLabel.frame = CGRectMake(12.f+31.f+12.f, 39.f, 150.f, 20.f);
        self.subTitleLabel.frame = CGRectMake(12.f+31.f+12.f, 39.f, 150.f, 20.f);
        //: self.titleLabel.frame = CGRectMake(14.f, 93.f-18.f, 180.f, 21.f);
        self.titleLabel.frame = CGRectMake(14.f, 93.f-18.f, 180.f, 21.f);
    }
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)success:(UIControlState)state point:(BOOL)outgoing
{
    //: NSString *stateString = state == UIControlStateNormal? @"normal" : @"pressed";
    NSString *stateString = state == UIControlStateNormal? [[DisappointedData sharedInstance] user_pathFormat] : [[DisappointedData sharedInstance] notiTouristFormat];
    //: NSString *imageName = @"icon_redpacket_";
    NSString *imageName = [[DisappointedData sharedInstance] showChapterText];
    //: if (outgoing)
    if (outgoing)
    {
        //: imageName = [imageName stringByAppendingString:@"from_"];
        imageName = [imageName stringByAppendingString:[[DisappointedData sharedInstance] k_backgroundMessage]];
    }
    //: else
    else
    {
        //: imageName = [imageName stringByAppendingString:@"to_"];
        imageName = [imageName stringByAppendingString:@"to_"];
    }
    //: imageName = [imageName stringByAppendingString:stateString];
    imageName = [imageName stringByAppendingString:stateString];
    //: return [UIImage imageNamed:imageName];
    return [UIImage imageNamed:imageName];
}

//: @end
@end