
#import <Foundation/Foundation.h>

typedef struct {
    Byte tearAway;
    Byte *proximateTeam;
    unsigned int fileMessage;
	int inputName;
	int signaling;
} StructVectorData;

@interface VectorData : NSObject

+ (instancetype)sharedInstance;

//: 聊天记录
@property (nonatomic, copy) NSString *showForbidOffUrl;

//: null
@property (nonatomic, copy) NSString *dreamRangeChapterKey;

//: SendTextViewBkg
@property (nonatomic, copy) NSString *show_sizeFormat;

//: {18,25,17,25}
@property (nonatomic, copy) NSString *appVoiceContent;

@end

@implementation VectorData

+ (instancetype)sharedInstance {
    static VectorData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)VectorDataToData:(NSString *)value {
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

- (Byte *)VectorDataToByte:(StructVectorData *)data {
    for (int i = 0; i < data->fileMessage; i++) {
        data->proximateTeam[i] ^= data->tearAway;
    }
    data->proximateTeam[data->fileMessage] = 0;
	if (data->fileMessage >= 2) {
		data->inputName = data->proximateTeam[0];
		data->signaling = data->proximateTeam[1];
	}
    return data->proximateTeam;
}

- (NSString *)StringFromVectorData:(StructVectorData *)data {
    return [NSString stringWithUTF8String:(char *)[self VectorDataToByte:data]];
}

//: null
- (NSString *)dreamRangeChapterKey {
    if (!_dreamRangeChapterKey) {
		NSString *origin = @"0B1009098B";
		NSData *data = [VectorData VectorDataToData:origin];
        StructVectorData value = (StructVectorData){101, (Byte *)data.bytes, 4, 189, 153};
        _dreamRangeChapterKey = [self StringFromVectorData:&value];
    }
    return _dreamRangeChapterKey;
}

//: {18,25,17,25}
- (NSString *)appVoiceContent {
    if (!_appVoiceContent) {
		NSString *origin = @"1B51584C52554C51574C52551D42";
		NSData *data = [VectorData VectorDataToData:origin];
        StructVectorData value = (StructVectorData){96, (Byte *)data.bytes, 13, 31, 144};
        _appVoiceContent = [self StringFromVectorData:&value];
    }
    return _appVoiceContent;
}

//: 聊天记录
- (NSString *)showForbidOffUrl {
    if (!_showForbidOffUrl) {
		NSString *origin = @"E18883ECADA0E1A7B9ECB49C9C";
		NSData *data = [VectorData VectorDataToData:origin];
        StructVectorData value = (StructVectorData){9, (Byte *)data.bytes, 12, 147, 69};
        _showForbidOffUrl = [self StringFromVectorData:&value];
    }
    return _showForbidOffUrl;
}

//: SendTextViewBkg
- (NSString *)show_sizeFormat {
    if (!_show_sizeFormat) {
		NSString *origin = @"C3F5FEF4C4F5E8E4C6F9F5E7D2FBF70E";
		NSData *data = [VectorData VectorDataToData:origin];
        StructVectorData value = (StructVectorData){144, (Byte *)data.bytes, 15, 241, 45};
        _show_sizeFormat = [self StringFromVectorData:&value];
    }
    return _show_sizeFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SendBubbleContentView.m
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionMultiRetweetContentView.h"
#import "SendBubbleContentView.h"
//: #import "NTESMultiRetweetAttachment.h"
#import "ModelText.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "CypherScrollView+Case.h"

//: NSString *const NIMDemoEventNameOpenMergeMessage = @"NIMDemoEventNameOpenMergeMessage";
NSString *const m_imageValue = @"NIMDemoEventNameOpenMergeMessage";

//: @interface NTESSessionMultiRetweetContentView ()
@interface SendBubbleContentView ()

//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;

//: @property (nonatomic, strong) NSMutableArray <M80AttributedLabel *> *messageLabs;
@property (nonatomic, strong) NSMutableArray <CypherScrollView *> *messageLabs;

//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;

//: @property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

//: @property (nonatomic, strong) UIImage *bkNormalImage;
@property (nonatomic, strong) UIImage *bkNormalImage;

//: @property (nonatomic, strong) UIButton *touchBtn;
@property (nonatomic, strong) UIButton *touchBtn;

//: @end
@end

//: @implementation NTESSessionMultiRetweetContentView
@implementation SendBubbleContentView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initColorSession{
    //: self = [super initSessionMessageContentView];
    self = [super initColorSession];
    //: if (self) {
    if (self) {
        //: static UIImage *bkNormalImage = nil;
        static UIImage *bkNormalImage = nil;
        //: static dispatch_once_t onceToken;
        static dispatch_once_t onceToken;
        //: _dispatch_once(&onceToken, ^{
        _dispatch_once(&onceToken, ^{
            //: bkNormalImage = [[UIImage imageNamed:@"SendTextViewBkg"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            bkNormalImage = [[UIImage imageNamed:[VectorData sharedInstance].show_sizeFormat] resizableImageWithCapInsets:UIEdgeInsetsFromString([VectorData sharedInstance].appVoiceContent) resizingMode:UIImageResizingModeStretch];
        //: });
        });
        //: _bkNormalImage = bkNormalImage;
        _bkNormalImage = bkNormalImage;
        //: _messageLabs = [NSMutableArray array];
        _messageLabs = [NSMutableArray array];
        //: [self addSubview:self.titleLabel];
        [self addSubview:self.titleLabel];
        //: [self addSubview:self.line];
        [self addSubview:self.line];
        //: [self addSubview:self.subTitleLabel];
        [self addSubview:self.subTitleLabel];
        //: [self addSubview:self.touchBtn];
        [self addSubview:self.touchBtn];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(BusyMessageModel *)data{
- (void)messagePress:(MoreModel *)data{
    //: [super refresh:data];
    [super messagePress:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESMultiRetweetAttachment *attachment = (NTESMultiRetweetAttachment *)object.attachment;
    ModelText *attachment = (ModelText *)object.attachment;

    //: [_messageLabs makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [_messageLabs makeObjectsPerformSelector:@selector(removeFromSuperview)];
    //: [_messageLabs removeAllObjects];
    [_messageLabs removeAllObjects];

    //: _titleLabel.text = [attachment formatTitleMessage];
    _titleLabel.text = [attachment titleMessage];

    //: for (NTESMessageAbstract *abstract in attachment.abstracts) {
    for (TextAbstract *abstract in attachment.abstracts) {
        //: M80AttributedLabel *lab = [self setupMessageLabel];
        CypherScrollView *lab = [self tincture];
        //: [lab nim_setText:[attachment formatAbstractMessage:abstract]];
        [lab nameCover:[attachment row:abstract]];
        //: [_messageLabs addObject:lab];
        [_messageLabs addObject:lab];
        //: [self addSubview:lab];
        [self addSubview:lab];
    }
    //: [self layoutIfNeeded];
    [self layoutIfNeeded];
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing {
- (UIImage *)success:(UIControlState)state point:(BOOL)outgoing {
    //: return _bkNormalImage;
    return _bkNormalImage;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat padding = 4.0;
    CGFloat padding = 4.0;
    //: CGFloat inset = 12.0;
    CGFloat inset = 12.0;
    //: _titleLabel.frame = CGRectMake(inset, inset, self.width - 2*inset, _titleLabel.height);
    _titleLabel.frame = CGRectMake(inset, inset, self.width - 2*inset, _titleLabel.height);
    //: if (_messageLabs.count != 0) {
    if (_messageLabs.count != 0) {
        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: __block CGFloat yOffset = 0;
        __block CGFloat yOffset = 0;
        //: [_messageLabs enumerateObjectsUsingBlock:^(M80AttributedLabel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [_messageLabs enumerateObjectsUsingBlock:^(CypherScrollView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            //: CGSize size = [obj sizeThatFits:CGSizeMake(weakSelf.titleLabel.width, 1.7976931348623157e+308)];
            CGSize size = [obj sizeThatFits:CGSizeMake(weakSelf.titleLabel.width, 1.7976931348623157e+308)];
            //: obj.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + 4.0 + yOffset, size.width, size.height);
            obj.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + 4.0 + yOffset, size.width, size.height);
            //: yOffset += (obj.height + padding);
            yOffset += (obj.height + padding);
        //: }];
        }];
        //: M80AttributedLabel *lastLab = [_messageLabs lastObject];
        CypherScrollView *lastLab = [_messageLabs lastObject];
        //: _line.frame = CGRectMake(_titleLabel.left, lastLab.bottom + padding, _titleLabel.width, 1.0);
        _line.frame = CGRectMake(_titleLabel.left, lastLab.bottom + padding, _titleLabel.width, 1.0);
    //: } else {
    } else {
        //: _line.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + padding, _titleLabel.width, 1.0);
        _line.frame = CGRectMake(_titleLabel.left, _titleLabel.bottom + padding, _titleLabel.width, 1.0);
    }
    //: _subTitleLabel.origin = CGPointMake(_titleLabel.left, _line.bottom + padding);
    _subTitleLabel.origin = CGPointMake(_titleLabel.left, _line.bottom + padding);
    //: _touchBtn.frame = self.bounds;
    _touchBtn.frame = self.bounds;
}

//: #pragma mark - Action
#pragma mark - Action
//: - (void)touchAction:(UIButton *)sender {
- (void)toAction:(UIButton *)sender {
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(memberEvent:)]) {
        //: BusyKitEvent *event = [[BusyKitEvent alloc] init];
        DirectionEvent *event = [[DirectionEvent alloc] init];
        //: event.eventName = NIMDemoEventNameOpenMergeMessage;
        event.eventName = m_imageValue;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate memberEvent:event];
    }
}

//: #pragma mark - Getter
#pragma mark - Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.font = [UIFont systemFontOfSize:14];
        //: _titleLabel.text = @"null";
        _titleLabel.text = [VectorData sharedInstance].dreamRangeChapterKey;
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: [_titleLabel sizeToFit];
        [_titleLabel sizeToFit];
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UILabel *)subTitleLabel {
- (UILabel *)subTitleLabel {
    //: if (!_subTitleLabel) {
    if (!_subTitleLabel) {
        //: _subTitleLabel = [self setupContentLabel];
        _subTitleLabel = [self info];
        //: _subTitleLabel.text = @"聊天记录".ntes_localized;
        _subTitleLabel.text = [VectorData sharedInstance].showForbidOffUrl.untilNtes;
        //: [_subTitleLabel sizeToFit];
        [_subTitleLabel sizeToFit];
    }
    //: return _subTitleLabel;
    return _subTitleLabel;
}

//: - (UIButton *)touchBtn {
- (UIButton *)touchBtn {
    //: if (!_touchBtn) {
    if (!_touchBtn) {
        //: _touchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _touchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_touchBtn addTarget:self action:@selector(touchAction:) forControlEvents:UIControlEventTouchUpInside];
        [_touchBtn addTarget:self action:@selector(toAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    //: return _touchBtn;
    return _touchBtn;
}


//: - (UILabel *)setupContentLabel {
- (UILabel *)info {
    //: UILabel *ret = [[UILabel alloc] init];
    UILabel *ret = [[UILabel alloc] init];
    //: ret.textColor = [UIColor lightGrayColor];
    ret.textColor = [UIColor lightGrayColor];
    //: ret.font = [UIFont systemFontOfSize:11];
    ret.font = [UIFont systemFontOfSize:11];
    //: ret.textAlignment = NSTextAlignmentLeft;
    ret.textAlignment = NSTextAlignmentLeft;
    //: ret.text = @"null";
    ret.text = [VectorData sharedInstance].dreamRangeChapterKey;
    //: ret.backgroundColor = [UIColor clearColor];
    ret.backgroundColor = [UIColor clearColor];
    //: [ret sizeToFit];
    [ret sizeToFit];
    //: return ret;
    return ret;
}

//: - (M80AttributedLabel *)setupMessageLabel {
- (CypherScrollView *)tincture {
    //: M80AttributedLabel *ret = [[M80AttributedLabel alloc] initWithFrame:CGRectZero];
    CypherScrollView *ret = [[CypherScrollView alloc] initWithFrame:CGRectZero];
    //: ret.textColor = [UIColor lightGrayColor];
    ret.textColor = [UIColor lightGrayColor];
    //: ret.font = [UIFont systemFontOfSize:11];
    ret.font = [UIFont systemFontOfSize:11];
    //: ret.numberOfLines = 1;
    ret.numberOfLines = 1;
    //: ret.backgroundColor = [UIColor clearColor];
    ret.backgroundColor = [UIColor clearColor];
    //: return ret;
    return ret;
}

//: - (UIView *)line {
- (UIView *)line {
    //: if (!_line) {
    if (!_line) {
        //: _line = [[UIView alloc] init];
        _line = [[UIView alloc] init];
        //: _line.backgroundColor = [UIColor lightGrayColor];
        _line.backgroundColor = [UIColor lightGrayColor];
    }
    //: return _line;
    return _line;
}
//: @end
@end
