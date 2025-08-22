
#import <Foundation/Foundation.h>

typedef struct {
    Byte isolable;
    Byte *explainMember;
    unsigned int conceive;
	int spectrumPop;
	int sunna;
} StructPinData;

@interface PinData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PinData

+ (instancetype)sharedInstance {
    static PinData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)PinDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)PinDataToByte:(StructPinData *)data {
    for (int i = 0; i < data->conceive; i++) {
        data->explainMember[i] ^= data->isolable;
    }
    data->explainMember[data->conceive] = 0;
	if (data->conceive >= 2) {
		data->spectrumPop = data->explainMember[0];
		data->sunna = data->explainMember[1];
	}
    return data->explainMember;
}

- (NSString *)StringFromPinData:(StructPinData *)data {
    return [NSString stringWithUTF8String:(char *)[self PinDataToByte:data]];
}

//: MM-dd hh:mm:ss
- (NSString *)m_gateKey {
    /* static */ NSString *m_gateKey = nil;
    if (!m_gateKey) {
		NSArray<NSNumber *> *origin = @[@43, @43, @75, @2, @2, @70, @14, @14, @92, @11, @11, @92, @21, @21, @54];
		NSData *data = [PinData PinDataToData:origin];
        StructPinData value = (StructPinData){102, (Byte *)data.bytes, 14, 98, 23};
        m_gateKey = [self StringFromPinData:&value];
    }
    return m_gateKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MasterKeyViewCell.m
//  NIM
//
//  Created by He on 2019/12/18.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESKeyWordMessageCell.h"
#import "MasterKeyViewCell.h"
//: #import "BusyAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "BusyCommonTableData.h"
#import "BusyCommonTableData.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"

//: @interface NTESKeyWordMessageCell ()
@interface MasterKeyViewCell ()

//: @property (nonatomic,strong) BusyAvatarImageView * avatar;
@property (nonatomic,strong) CustomFormatView * avatar;

//: @property (nonatomic,strong) UILabel * nickL;
@property (nonatomic,strong) UILabel * nickL;

//: @property (nonatomic,strong) UILabel * timeL;
@property (nonatomic,strong) UILabel * timeL;

//: @end
@end

//: @implementation NTESKeyWordMessageCell
@implementation MasterKeyViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    //: if (self)
    if (self)
    {
        //: [self.contentView addSubview:self.avatar];
        [self.contentView addSubview:self.avatar];
        //: [self.contentView addSubview:self.nickL];
        [self.contentView addSubview:self.nickL];
        //: [self.contentView addSubview:self.timeL];
        [self.contentView addSubview:self.timeL];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.size = CGSizeMake(40, 40);
    self.avatar.size = CGSizeMake(40, 40);
    //: self.avatar.centerY = self.contentView.height * .5f;
    self.avatar.centerY = self.contentView.height * .5f;
    //: self.avatar.left = 15.f;
    self.avatar.left = 15.f;

    //: [self.textLabel sizeToFit];
    [self.textLabel sizeToFit];
    //: self.textLabel.left = self.avatar.right + 15;
    self.textLabel.left = self.avatar.right + 15;
    //: self.detailTextLabel.left = self.textLabel.left;
    self.detailTextLabel.left = self.textLabel.left;

    //: [self.nickL sizeToFit];
    [self.nickL sizeToFit];
    //: self.nickL.left = self.textLabel.right + 2;
    self.nickL.left = self.textLabel.right + 2;
    //: self.nickL.centerY = self.textLabel.centerY;
    self.nickL.centerY = self.textLabel.centerY;

    //: [self.timeL sizeToFit];
    [self.timeL sizeToFit];
    //: self.timeL.width = ((self.timeL.width) < (self.width - self.textLabel.right - 4 - 15) ? (self.timeL.width) : (self.width - self.textLabel.right - 4 - 15));
    self.timeL.width = ((self.timeL.width) < (self.width - self.textLabel.right - 4 - 15) ? (self.timeL.width) : (self.width - self.textLabel.right - 4 - 15));
    //: self.timeL.top = self.textLabel.top;
    self.timeL.top = self.textLabel.top;
    //: self.timeL.right = self.contentView.width - 15;
    self.timeL.right = self.contentView.width - 15;

    //: self.nickL.width = ((0) > (self.timeL.left - self.nickL.left - 5) ? (0) : (self.timeL.left - self.nickL.left - 5));
    self.nickL.width = ((0) > (self.timeL.left - self.nickL.left - 5) ? (0) : (self.timeL.left - self.nickL.left - 5));
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView
- (void)should:(PublicAppearRow *)rowData position_strong:(UITableView *)tableView
{
    //: NSString * keyWord = rowData.title;
    NSString * keyWord = rowData.title;
    //: NIMMessage * message = rowData.extraInfo;
    NIMMessage * message = rowData.extraInfo;
    //: if ([message isKindOfClass:[NIMMessage class]])
    if ([message isKindOfClass:[NIMMessage class]])
    {
        //: BusyKitInfo * info = nil;
        Info * info = nil;
        //: NIMSession * session = message.session;
        NIMSession * session = message.session;
        //: if (session.sessionType == NIMSessionTypeP2P)
        if (session.sessionType == NIMSessionTypeP2P)
        {
           //: info = [[MyUserKit sharedKit] infoByUser:session.sessionId option:nil];
           info = [[Case pastTop] consumer:session.sessionId message:nil];
        }
        //: else
        else
        {
            //: info = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil];
            info = [[Case pastTop] controlOption:session.sessionId my:nil];
        }

        //: if (info.avatarUrlString.length)
        if (info.avatarUrlString.length)
        {
            //: [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString]
            [self.avatar anyOn:[NSURL URLWithString:info.avatarUrlString]
                            //: placeholderImage:info.avatarImage];
                            model:info.avatarImage];
        }
        //: else
        else
        {
            //: [self.avatar setImage:info.avatarImage];
            [self.avatar setImage:info.avatarImage];
        }

        //: self.textLabel.attributedText = [self coloredTextWithSource:info.showName keyword:keyWord];
        self.textLabel.attributedText = [self data:info.showName than:keyWord];
        //: [self.textLabel sizeToFit];
        [self.textLabel sizeToFit];

        //: self.nickL.attributedText = [self coloredTextWithSource:[NSString stringWithFormat:@"(%@)", session.sessionId] keyword:keyWord];
        self.nickL.attributedText = [self data:[NSString stringWithFormat:@"(%@)", session.sessionId] than:keyWord];
//        [self.nickL sizeToFit];

        //: self.detailTextLabel.attributedText = [self coloredTextWithSource:message.text keyword:keyWord];
        self.detailTextLabel.attributedText = [self data:message.text than:keyWord];
        //: [self.detailTextLabel sizeToFit];
        [self.detailTextLabel sizeToFit];

        //: self.timeL.text = [self timeWithTimestamp:message.timestamp];
        self.timeL.text = [self teamTimestamp:message.timestamp];
        //: [self.timeL sizeToFit];
        [self.timeL sizeToFit];
    }
}

//: - (NSAttributedString *)coloredTextWithSource:(NSString *)source
- (NSAttributedString *)data:(NSString *)source
                                      //: keyword:(NSString *)keyword
                                      than:(NSString *)keyword
{
    //: if (!source)
    if (!source)
    {
        //: return nil;
        return nil;
    }

    //: NSMutableAttributedString * accidString = [[NSMutableAttributedString alloc] initWithString:source];
    NSMutableAttributedString * accidString = [[NSMutableAttributedString alloc] initWithString:source];
    //: NSString * lowercaseSource = [source lowercaseString];
    NSString * lowercaseSource = [source lowercaseString];
    //: NSString * lowercaseKeyword = [keyword lowercaseString];
    NSString * lowercaseKeyword = [keyword lowercaseString];
    //: if ([lowercaseSource containsString:lowercaseKeyword])
    if ([lowercaseSource containsString:lowercaseKeyword])
    {
        //: NSRange range = [source rangeOfString:keyword];
        NSRange range = [source rangeOfString:keyword];
        //: [accidString addAttributes:@{
        [accidString addAttributes:@{
            //: NSForegroundColorAttributeName : [UIColor redColor],
            NSForegroundColorAttributeName : [UIColor redColor],
        }
                             //: range:range];
                             range:range];
    }
    //: return accidString;
    return accidString;
}



//: - (BusyAvatarImageView *)avatar
- (CustomFormatView *)avatar
{
    //: if (!_avatar)
    if (!_avatar)
    {
        //: _avatar = [[BusyAvatarImageView alloc] init];
        _avatar = [[CustomFormatView alloc] init];
    }
    //: return _avatar;
    return _avatar;
}

//: - (UILabel *)nickL
- (UILabel *)nickL
{
    //: if (!_nickL)
    if (!_nickL)
    {
        //: _nickL = [[UILabel alloc] init];
        _nickL = [[UILabel alloc] init];
        //: _nickL.lineBreakMode = NSLineBreakByTruncatingTail;
        _nickL.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _nickL;
    return _nickL;
}

//: - (UILabel *)timeL
- (UILabel *)timeL
{
    //: if (!_timeL)
    if (!_timeL)
    {
        //: _timeL = [[UILabel alloc] init];
        _timeL = [[UILabel alloc] init];
    }
    //: return _timeL;
    return _timeL;
}

//: - (NSString *)timeWithTimestamp:(NSTimeInterval)ts
- (NSString *)teamTimestamp:(NSTimeInterval)ts
{
    //: NSDate * date = [NSDate dateWithTimeIntervalSince1970:ts];
    NSDate * date = [NSDate dateWithTimeIntervalSince1970:ts];
    //: NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    //: NSTimeZone* timeZone = [NSTimeZone timeZoneForSecondsFromGMT:8 * 60 * 60];
    NSTimeZone* timeZone = [NSTimeZone timeZoneForSecondsFromGMT:8 * 60 * 60];
    //: [formatter setTimeZone:timeZone];
    [formatter setTimeZone:timeZone];
    //: formatter.dateFormat = @"MM-dd hh:mm:ss";
    formatter.dateFormat = [[PinData sharedInstance] m_gateKey];
    //: NSString * time = [formatter stringFromDate:date];
    NSString * time = [formatter stringFromDate:date];
    //: return time;
    return time;
}

//: @end
@end
