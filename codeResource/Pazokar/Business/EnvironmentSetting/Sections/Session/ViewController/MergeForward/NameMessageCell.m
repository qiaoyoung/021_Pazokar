
#import <Foundation/Foundation.h>

NSString *StringFromFrameData(Byte *data);


//: HH:mm
Byte noti_negativeStr[] = {14, 5, 12, 140, 190, 58, 137, 246, 194, 104, 121, 178, 109, 109, 58, 72, 72, 117};

//: 00:00
Byte kViewMessage[] = {86, 5, 8, 50, 74, 1, 23, 8, 48, 48, 58, 48, 48, 180};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameMessageCell.m
//  NIM
//
//  Created by zhanggenning on 2019/10/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESMergeMessageCell.h"
#import "NameMessageCell.h"
//: #import "BusyBadgeView.h"
#import "SharedView.h"
//: #import "BusySessionTextContentView.h"
#import "ButtonView.h"
//: #import "BusyAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "M80AttributedLabel.h"
#import "CypherScrollView.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NTESMessageModel.h"
#import "TheoreticalAccountMessageModel.h"

//: @interface NTESMergeMessageCell ()
@interface NameMessageCell ()

//: @property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UIView *line;

//: @property (nonatomic, strong) UILabel *timeLab;
@property (nonatomic, strong) UILabel *timeLab;

//: @end
@end

//: @implementation NTESMergeMessageCell
@implementation NameMessageCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        //: [self.traningActivityIndicator removeFromSuperview];
        [self.traningActivityIndicator removeFromSuperview];
        //: [self.retryButton removeFromSuperview];
        [self.retryButton removeFromSuperview];
        //: [self.audioPlayedIcon removeFromSuperview];
        [self.audioPlayedIcon removeFromSuperview];
        //: [self.readButton removeFromSuperview];
        [self.readButton removeFromSuperview];
        //: [self.selectButton removeFromSuperview];
        [self.selectButton removeFromSuperview];
        //: [self.selectButtonMask removeFromSuperview];
        [self.selectButtonMask removeFromSuperview];
        //: [self.contentView addSubview:self.timeLab];
        [self.contentView addSubview:self.timeLab];
        //: [self.contentView addSubview:self.line];
        [self.contentView addSubview:self.line];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInset = self.model.contentViewInsets;
    UIEdgeInsets contentInset = self.model.contentViewInsets;
    //: self.headImageView.origin = CGPointMake(16.0, 16.0);
    self.headImageView.origin = CGPointMake(16.0, 16.0);
    //: self.nameLabel.origin = CGPointMake(self.headImageView.right + contentInset.left, self.headImageView.top);
    self.nameLabel.origin = CGPointMake(self.headImageView.right + contentInset.left, self.headImageView.top);
    //: self.bubbleView.origin = CGPointMake(self.headImageView.right, self.nameLabel.bottom - contentInset.top + 4.0);
    self.bubbleView.origin = CGPointMake(self.headImageView.right, self.nameLabel.bottom - contentInset.top + 4.0);
    //: _line.frame = CGRectMake(self.headImageView.left, self.height - 1, self.width-2*self.headImageView.left, 1.0);
    _line.frame = CGRectMake(self.headImageView.left, self.height - 1, self.width-2*self.headImageView.left, 1.0);
    //: _timeLab.origin = CGPointMake(self.width - _timeLab.width - 16.0, self.nameLabel.top);
    _timeLab.origin = CGPointMake(self.width - _timeLab.width - 16.0, self.nameLabel.top);
}

//: - (UIView *)line {
- (UIView *)line {
    //: if (!_line) {
    if (!_line) {
        //: _line = [[UIView alloc] init];
        _line = [[UIView alloc] init];
        //: _line.backgroundColor = [UIColor systemGroupedBackgroundColor];
        _line.backgroundColor = [UIColor systemGroupedBackgroundColor];
    }
    //: return _line;
    return _line;
}
//: - (UILabel *)timeLab {
- (UILabel *)timeLab {
    //: if (!_timeLab) {
    if (!_timeLab) {
        //: _timeLab = [[UILabel alloc] init];
        _timeLab = [[UILabel alloc] init];
        //: _timeLab.backgroundColor = [UIColor clearColor];
        _timeLab.backgroundColor = [UIColor clearColor];
        //: _timeLab.opaque = YES;
        _timeLab.opaque = YES;
        //: _timeLab.font = [MyUserKit sharedKit].config.nickFont;
        _timeLab.font = [Case pastTop].config.nickFont;
        //: _timeLab.textColor = [MyUserKit sharedKit].config.nickColor;
        _timeLab.textColor = [Case pastTop].config.nickColor;
        //: _timeLab.text = @"00:00";
        _timeLab.text = StringFromFrameData(kViewMessage);
        //: [_timeLab sizeToFit];
        [_timeLab sizeToFit];
        //: _timeLab.width += 8.0;
        _timeLab.width += 8.0;
    }
    //: return _timeLab;
    return _timeLab;
}

//: - (void)refreshData:(BusyMessageModel *)data {
- (void)pullSession:(MoreModel *)data {
    //: [super refreshData:data];
    [super pullSession:data];

    //: NTESMessageModel *model = nil;
    TheoreticalAccountMessageModel *model = nil;
    //: if ([data isKindOfClass:[NTESMessageModel class]]) {
    if ([data isKindOfClass:[TheoreticalAccountMessageModel class]]) {
        //: model = (NTESMessageModel *)data;
        model = (TheoreticalAccountMessageModel *)data;
        //: _line.hidden = model.hiddenSeparatorLine;
        _line.hidden = model.hiddenSeparatorLine;

        //: NSString *timeInfo = [self timeFormatString:model.message.timestamp];
        NSString *timeInfo = [self filter:model.message.timestamp];
        //: _timeLab.text = timeInfo ?: @"00:00";
        _timeLab.text = timeInfo ?: StringFromFrameData(kViewMessage);

        //: self.bubbleView.layoutStyle = BusySessionMessageContentViewLayoutLeft;
        self.bubbleView.layoutStyle = BusySessionMessageContentViewLayoutLeft;
    }

    //: self.bubbleView.bubbleImageView.hidden = YES;
    self.bubbleView.bubbleImageView.hidden = YES;
    //: self.bubblesBackgroundView.hidden = YES;
    self.bubblesBackgroundView.hidden = YES;
    //: self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];
    self.backgroundColor = [UIColor colorWithRed:((float)((0xfefefe & 0xFF0000) >> 16))/255.0 green:((float)((0xfefefe & 0x00FF00) >> 8))/255.0 blue:((float)(0xfefefe & 0x0000FF))/255.0 alpha:1.0];

    //: id bubbleView = self.bubbleView;
    id bubbleView = self.bubbleView;
    //: if ([bubbleView isKindOfClass:[BusySessionTextContentView class]]) {
    if ([bubbleView isKindOfClass:[ButtonView class]]) {
        //: ((BusySessionTextContentView *)bubbleView).textView.textColor = [UIColor blackColor];
        ((ButtonView *)bubbleView).textView.textColor = [UIColor blackColor];
    }
}

//: - (NSString *)timeFormatString:(NSTimeInterval)time {
- (NSString *)filter:(NSTimeInterval)time {
    //: NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:time];
    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:@"HH:mm"];
    [formatter setDateFormat:StringFromFrameData(noti_negativeStr)];
    //: return [formatter stringFromDate: date];
    return [formatter stringFromDate: date];
}

//: @end
@end

Byte * FrameDataToCache(Byte *data) {
    int absolute = data[0];
    int constraint = data[1];
    int represent = data[2];
    if (!absolute) return data + represent;
    for (int i = 0; i < constraint / 2; i++) {
        int begin = represent + i;
        int end = represent + constraint - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[represent + constraint] = 0;
    return data + represent;
}

NSString *StringFromFrameData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)FrameDataToCache(data)];
}  
