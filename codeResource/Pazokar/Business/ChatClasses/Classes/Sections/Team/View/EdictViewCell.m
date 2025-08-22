
#import <Foundation/Foundation.h>

@interface DueData : NSObject

@end

@implementation DueData

+ (Byte *)DueDataToCache:(Byte *)data {
    int nameBlink = data[0];
    Byte stab = data[1];
    int fabTruly = data[2];
    for (int i = fabTruly; i < fabTruly + nameBlink; i++) {
        int value = data[i] - stab;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[fabTruly + nameBlink] = 0;
    return data + fabTruly;
}

+ (NSString *)StringFromDueData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DueDataToCache:data]];
}

//: #999999
+ (NSString *)notiWoodenShuttleName {
    /* static */ NSString *notiWoodenShuttleName = nil;
    if (!notiWoodenShuttleName) {
        Byte value[] = {7, 6, 5, 21, 186, 41, 63, 63, 63, 63, 63, 63, 158};
        notiWoodenShuttleName = [self StringFromDueData:value];
    }
    return notiWoodenShuttleName;
}

//: time
+ (NSString *)k_fromMsg {
    /* static */ NSString *k_fromMsg = nil;
    if (!k_fromMsg) {
        Byte value[] = {4, 43, 8, 120, 133, 63, 66, 223, 159, 148, 152, 144, 59};
        k_fromMsg = [self StringFromDueData:value];
    }
    return k_fromMsg;
}

//: #333333
+ (NSString *)show_petIdent {
    /* static */ NSString *show_petIdent = nil;
    if (!show_petIdent) {
        Byte value[] = {7, 31, 7, 185, 46, 59, 78, 66, 82, 82, 82, 82, 82, 82, 132};
        show_petIdent = [self StringFromDueData:value];
    }
    return show_petIdent;
}

//: #E9ECF0
+ (NSString *)mainAcquireData {
    /* static */ NSString *mainAcquireData = nil;
    if (!mainAcquireData) {
        Byte value[] = {7, 48, 3, 83, 117, 105, 117, 115, 118, 96, 125};
        mainAcquireData = [self StringFromDueData:value];
    }
    return mainAcquireData;
}

//: title
+ (NSString *)user_redUrl {
    /* static */ NSString *user_redUrl = nil;
    if (!user_redUrl) {
        Byte value[] = {5, 9, 8, 83, 97, 106, 193, 220, 125, 114, 125, 117, 110, 125};
        user_redUrl = [self StringFromDueData:value];
    }
    return user_redUrl;
}

//: MM-dd HH:mm
+ (NSString *)m_tightenFormat {
    /* static */ NSString *m_tightenFormat = nil;
    if (!m_tightenFormat) {
        Byte value[] = {11, 17, 12, 141, 223, 163, 6, 195, 159, 244, 192, 87, 94, 94, 62, 117, 117, 49, 89, 89, 75, 126, 126, 167};
        m_tightenFormat = [self StringFromDueData:value];
    }
    return m_tightenFormat;
}

//: content
+ (NSString *)show_warmData {
    /* static */ NSString *show_warmData = nil;
    if (!show_warmData) {
        Byte value[] = {7, 73, 4, 94, 172, 184, 183, 189, 174, 183, 189, 130};
        show_warmData = [self StringFromDueData:value];
    }
    return show_warmData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamAnnouncementListCell.m
//  NIM
//
//  Created by Xuhui on 15/3/31.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyTeamAnnouncementListCell.h"
#import "EdictViewCell.h"
//: #import "BusyUsrInfoData.h"
#import "BusyUsrInfoData.h"
//: #import "BusyKitUtil.h"
#import "OffMore.h"
//: #import "M80AttributedLabel.h"
#import "CypherScrollView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "CypherScrollView+Case.h"

//: @interface BusyTeamAnnouncementListCell ()
@interface EdictViewCell ()
//: @property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UILabel *titleLabel;
//: @property (strong, nonatomic) UILabel *infoLabel;
@property (strong, nonatomic) UILabel *infoLabel;
//: @property (strong, nonatomic) UIView *line;
@property (strong, nonatomic) UIView *line;
//: @property (strong, nonatomic) M80AttributedLabel *contentLabel;
@property (strong, nonatomic) CypherScrollView *contentLabel;

//: @end
@end

//: @implementation BusyTeamAnnouncementListCell
@implementation EdictViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
//        self.accessoryType = UITableViewCellAccessoryNone;
//        self.layer.cornerRadius = 10;

        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30 - 30, 20)];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width-30 - 30, 20)];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:18.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:18.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.numberOfLines = 0;
        _titleLabel.numberOfLines = 0;
        //: [self.contentView addSubview:_titleLabel];
        [self.contentView addSubview:_titleLabel];

        //: _infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 39, [[UIScreen mainScreen] bounds].size.width-30 - 30, 13)];
        _infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 39, [[UIScreen mainScreen] bounds].size.width-30 - 30, 13)];
        //: _infoLabel.font = [UIFont systemFontOfSize:12.f];
        _infoLabel.font = [UIFont systemFontOfSize:12.f];
        //: _infoLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _infoLabel.textColor = [UIColor status:[DueData notiWoodenShuttleName]];
        //: [self.contentView addSubview:_infoLabel];
        [self.contentView addSubview:_infoLabel];

        //: _line = [[UIView alloc] initWithFrame:CGRectMake(15, 64, [[UIScreen mainScreen] bounds].size.width-60, .5)];
        _line = [[UIView alloc] initWithFrame:CGRectMake(15, 64, [[UIScreen mainScreen] bounds].size.width-60, .5)];
        //: _line.backgroundColor = [UIColor colorWithHexString:@"#E9ECF0"];
        _line.backgroundColor = [UIColor status:[DueData mainAcquireData]];
        //: _line.hidden = YES;
        _line.hidden = YES;
        //: [self.contentView addSubview:_line];
        [self.contentView addSubview:_line];

        //: _contentLabel = [[M80AttributedLabel alloc] initWithFrame:CGRectMake(15, 73, [[UIScreen mainScreen] bounds].size.width-30-30, 178)];
        _contentLabel = [[CypherScrollView alloc] initWithFrame:CGRectMake(15, 73, [[UIScreen mainScreen] bounds].size.width-30-30, 178)];
        //: _contentLabel.textColor = [UIColor colorWithHexString:@"#333333"];
        _contentLabel.textColor = [UIColor status:[DueData show_petIdent]];
        //: _contentLabel.numberOfLines = 0;
        _contentLabel.numberOfLines = 0;
        //: _contentLabel.font = [UIFont systemFontOfSize:14.f];
        _contentLabel.font = [UIFont systemFontOfSize:14.f];
        //: _contentLabel.autoDetectLinks = YES;
        _contentLabel.autoDetectLinks = YES;
        //: _contentLabel.underLineForLink = YES;
        _contentLabel.underLineForLink = YES;
        //: _contentLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _contentLabel.lineBreakMode = NSLineBreakByWordWrapping;
        //: _contentLabel.backgroundColor = [UIColor clearColor];
        _contentLabel.backgroundColor = [UIColor clearColor];
        //: _contentLabel.isShowTextSelection = YES;
        _contentLabel.isShowTextSelection = YES;
        //: _contentLabel.selectable = YES;
        _contentLabel.selectable = YES;

        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: _contentLabel.selectBlock = ^(BusyMediaItem *item) {
        _contentLabel.selectBlock = ^(ModelMessage *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: NSString *text = [self.contentLabel.text substringWithRange:self.contentLabel.selectedRange];
            NSString *text = [self.contentLabel.text substringWithRange:self.contentLabel.selectedRange];
            //: if (text.length) {
            if (text.length) {
                //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
                UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
                //: [pasteboard setString:text];
                [pasteboard setString:text];
            }
        //: };
        };

        //: [self.contentView addSubview:_contentLabel];
        [self.contentView addSubview:_contentLabel];

        //: [_contentLabel new_genMediaButton];
        [_contentLabel team];

    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NSDictionary *)data nick:(NSString *)nick{
- (void)refreshMemberCell:(NSDictionary *)data selectedViewNick:(NSString *)nick{
    //: NSString *title = [data objectForKey:@"title"];
    NSString *title = [data objectForKey:[DueData user_redUrl]];
    //: _titleLabel.text = title;
    _titleLabel.text = title;
    //: [_titleLabel sizeToFit];
    [_titleLabel sizeToFit];
    //: _titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width - 60, _titleLabel.frame.size.height+2);
    _titleLabel.frame = CGRectMake(15, 15, [[UIScreen mainScreen] bounds].size.width - 60, _titleLabel.frame.size.height+2);

    //: _infoLabel.frame = CGRectMake(15, 8+_titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width - 60, 13);
    _infoLabel.frame = CGRectMake(15, 8+_titleLabel.bottom, [[UIScreen mainScreen] bounds].size.width - 60, 13);

    //: _line.frame = CGRectMake(15, _infoLabel.bottom + 15, [[UIScreen mainScreen] bounds].size.width-60, .5);
    _line.frame = CGRectMake(15, _infoLabel.bottom + 15, [[UIScreen mainScreen] bounds].size.width-60, .5);

    //: NSString *content = [data objectForKey:@"content"];
    NSString *content = [data objectForKey:[DueData show_warmData]];
    //: [_contentLabel nim_setText:content];
    [_contentLabel nameCover:content];
    //: [_contentLabel sizeToFit];
    [_contentLabel sizeToFit];

    //: _contentLabel.frame = CGRectMake(15, 10 + _line.bottom, [[UIScreen mainScreen] bounds].size.width - 60, _contentLabel.frame.size.height+2);
    _contentLabel.frame = CGRectMake(15, 10 + _line.bottom, [[UIScreen mainScreen] bounds].size.width - 60, _contentLabel.frame.size.height+2);
    //: NSNumber *time = [data objectForKey:@"time"];
    NSNumber *time = [data objectForKey:[DueData k_fromMsg]];
    //: NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //: [dateFormatter setDateFormat:@"MM-dd HH:mm"];
    [dateFormatter setDateFormat:[DueData m_tightenFormat]];
    //: NSDate * date = [NSDate dateWithTimeIntervalSince1970:time.integerValue];
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:time.integerValue];
    //: NSString *dataString = [dateFormatter stringFromDate:date];
    NSString *dataString = [dateFormatter stringFromDate:date];
    //: _infoLabel.text = [NSString stringWithFormat:@"%@ %@", nick ?: @"", dataString];
    _infoLabel.text = [NSString stringWithFormat:@"%@ %@", nick ?: @"", dataString];
}

//: + (CGFloat)cellHeight:(NSString *)title
+ (CGFloat)along:(NSString *)title
{
    //: CGSize size = [title boundingRectWithSize:CGSizeMake([[UIScreen mainScreen] bounds].size.width-60, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;
    CGSize size = [title boundingRectWithSize:CGSizeMake([[UIScreen mainScreen] bounds].size.width-60, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14]} context:nil].size;

    //: return 85 + size.height + 20;
    return 85 + size.height + 20;
}

//: @end
@end
