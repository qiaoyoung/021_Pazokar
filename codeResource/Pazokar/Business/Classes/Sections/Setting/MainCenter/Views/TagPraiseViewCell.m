
#import <Foundation/Foundation.h>

typedef struct {
    Byte ecru;
    Byte *tollbar;
    unsigned int coverLetter;
	int withSuccess;
	int forefront;
	int victory;
} StructPepData;

@interface PepData : NSObject

+ (instancetype)sharedInstance;

//: #5D5F66
@property (nonatomic, copy) NSString *k_makeKey;

//: _UITableViewCellSeparatorView
@property (nonatomic, copy) NSString *app_enableFormat;

//: #EEEEEE
@property (nonatomic, copy) NSString *m_overseeStr;

//: #F6F6F6
@property (nonatomic, copy) NSString *app_seedDropName;

//: #333333
@property (nonatomic, copy) NSString *userBottomKey;

//: head_default
@property (nonatomic, copy) NSString *show_killerIdent;

//: black_list_item_remove
@property (nonatomic, copy) NSString *k_messageUrl;

@end

@implementation PepData

+ (instancetype)sharedInstance {
    static PepData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)PepDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)PepDataToByte:(StructPepData *)data {
    for (int i = 0; i < data->coverLetter; i++) {
        data->tollbar[i] ^= data->ecru;
    }
    data->tollbar[data->coverLetter] = 0;
	if (data->coverLetter >= 3) {
		data->withSuccess = data->tollbar[0];
		data->forefront = data->tollbar[1];
		data->victory = data->tollbar[2];
	}
    return data->tollbar;
}

- (NSString *)StringFromPepData:(StructPepData *)data {
    return [NSString stringWithUTF8String:(char *)[self PepDataToByte:data]];
}

//: #F6F6F6
- (NSString *)app_seedDropName {
    if (!_app_seedDropName) {
		NSArray<NSNumber *> *origin = @[@250, @159, @239, @159, @239, @159, @239, @190];
		NSData *data = [PepData PepDataToData:origin];
        StructPepData value = (StructPepData){217, (Byte *)data.bytes, 7, 236, 218, 100};
        _app_seedDropName = [self StringFromPepData:&value];
    }
    return _app_seedDropName;
}

//: #333333
- (NSString *)userBottomKey {
    if (!_userBottomKey) {
		NSArray<NSNumber *> *origin = @[@40, @56, @56, @56, @56, @56, @56, @150];
		NSData *data = [PepData PepDataToData:origin];
        StructPepData value = (StructPepData){11, (Byte *)data.bytes, 7, 241, 103, 170};
        _userBottomKey = [self StringFromPepData:&value];
    }
    return _userBottomKey;
}

//: head_default
- (NSString *)show_killerIdent {
    if (!_show_killerIdent) {
		NSArray<NSNumber *> *origin = @[@47, @34, @38, @35, @24, @35, @34, @33, @38, @50, @43, @51, @120];
		NSData *data = [PepData PepDataToData:origin];
        StructPepData value = (StructPepData){71, (Byte *)data.bytes, 12, 38, 159, 78};
        _show_killerIdent = [self StringFromPepData:&value];
    }
    return _show_killerIdent;
}

//: _UITableViewCellSeparatorView
- (NSString *)app_enableFormat {
    if (!_app_enableFormat) {
		NSArray<NSNumber *> *origin = @[@89, @83, @79, @82, @103, @100, @106, @99, @80, @111, @99, @113, @69, @99, @106, @106, @85, @99, @118, @103, @116, @103, @114, @105, @116, @80, @111, @99, @113, @52];
		NSData *data = [PepData PepDataToData:origin];
        StructPepData value = (StructPepData){6, (Byte *)data.bytes, 29, 109, 150, 161};
        _app_enableFormat = [self StringFromPepData:&value];
    }
    return _app_enableFormat;
}

//: black_list_item_remove
- (NSString *)k_messageUrl {
    if (!_k_messageUrl) {
		NSArray<NSNumber *> *origin = @[@105, @103, @106, @104, @96, @84, @103, @98, @120, @127, @84, @98, @127, @110, @102, @84, @121, @110, @102, @100, @125, @110, @249];
		NSData *data = [PepData PepDataToData:origin];
        StructPepData value = (StructPepData){11, (Byte *)data.bytes, 22, 122, 154, 90};
        _k_messageUrl = [self StringFromPepData:&value];
    }
    return _k_messageUrl;
}

//: #5D5F66
- (NSString *)k_makeKey {
    if (!_k_makeKey) {
		NSArray<NSNumber *> *origin = @[@162, @180, @197, @180, @199, @183, @183, @194];
		NSData *data = [PepData PepDataToData:origin];
        StructPepData value = (StructPepData){129, (Byte *)data.bytes, 7, 45, 218, 38};
        _k_makeKey = [self StringFromPepData:&value];
    }
    return _k_makeKey;
}

//: #EEEEEE
- (NSString *)m_overseeStr {
    if (!_m_overseeStr) {
		NSArray<NSNumber *> *origin = @[@228, @130, @130, @130, @130, @130, @130, @192];
		NSData *data = [PepData PepDataToData:origin];
        StructPepData value = (StructPepData){199, (Byte *)data.bytes, 7, 151, 1, 44};
        _m_overseeStr = [self StringFromPepData:&value];
    }
    return _m_overseeStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TagPraiseViewCell.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESBlackListTableViewCell.h"
#import "TagPraiseViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"
//: #import "NTESContactDataMember.h"
#import "TextMember.h"
//: #import "NTESSessionUtil.h"
#import "DeviceDate.h"

//: @implementation NTESBlackListTableViewCell
@implementation TagPraiseViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.accessoryType = UITableViewCellAccessoryNone;
        self.accessoryType = UITableViewCellAccessoryNone;

//        self.backgroundColor = RGB_COLOR_String(@"#F6F6F6");
//        self.layer.cornerRadius = 16;
//        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        self.layer.shadowOffset = CGSizeMake(0,3);
//        self.layer.shadowOpacity = 1;
//        self.layer.shadowRadius = 0;

        //: [self initSubviews];
        [self initManagerAdd];
    }
    //: return self;
    return self;
}

//: + (instancetype)cellWithTableView:(UITableView *)tableView
+ (instancetype)send:(UITableView *)tableView
{
    //: static NSString *identifier = @"NTESBlackListTableViewCell";
    static NSString *identifier = @"TagPraiseViewCell";
    //: NTESBlackListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    TagPraiseViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //: if (!cell)
    if (!cell)
    {
        //: cell = [[NTESBlackListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell = [[TagPraiseViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        cell.backgroundColor = [UIColor colorWithRed:247/255.0 green:249/255.0 blue:250/255.0 alpha:1.0];
//        cell.layer.cornerRadius = 12;
//        cell.backgroundColor = [UIColor whiteColor];

    }
    //: return cell;
    return cell;
}

//: - (void)initSubviews {
- (void)initManagerAdd {

    //: UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    UIView *bodyView = [[UIView alloc]initWithFrame:CGRectMake(15, 0, [[UIScreen mainScreen] bounds].size.width-30, 72)];
    //: bodyView.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
    bodyView.backgroundColor = [UIColor status:[PepData sharedInstance].app_seedDropName];
    //: bodyView.layer.cornerRadius = 16;
    bodyView.layer.cornerRadius = 16;
    //: [self.contentView addSubview:bodyView];
    [self.contentView addSubview:bodyView];

    //: _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
    //: _avatarImageView.layer.cornerRadius = 24;
    _avatarImageView.layer.cornerRadius = 24;
    //: _avatarImageView.layer.masksToBounds = YES;
    _avatarImageView.layer.masksToBounds = YES;
    //: [bodyView addSubview:_avatarImageView];
    [bodyView addSubview:_avatarImageView];
//    UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTouchAvatar:)];
//    [_avatarImageView addGestureRecognizer:panGesture];


    //: _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    _cancleBtn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    //: _cancleBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-84-15, 20, 84, 32);
    _cancleBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-84-15, 20, 84, 32);
//         _cancleBtn.titleLabel.textAlignment = NSTextAlignmentRight;
    //: _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _cancleBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_cancleBtn setTitle:[FFFLanguageManager getTextWithKey:@"black_list_item_remove"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitle:[SendName streetSmart:[PepData sharedInstance].k_messageUrl] forState:(UIControlStateNormal)];//移除
    //: [_cancleBtn addTarget:self action:@selector(onTouchButton) forControlEvents:(UIControlEventTouchUpInside)];
    [_cancleBtn addTarget:self action:@selector(catScan) forControlEvents:(UIControlEventTouchUpInside)];
    //: [_cancleBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:(UIControlStateNormal)];
    [_cancleBtn setTitleColor:[UIColor status:[PepData sharedInstance].k_makeKey] forState:(UIControlStateNormal)];
    //: _cancleBtn.layer.cornerRadius = 16;
    _cancleBtn.layer.cornerRadius = 16;
    //: _cancleBtn.layer.borderWidth = 1;
    _cancleBtn.layer.borderWidth = 1;
    //: _cancleBtn.layer.borderColor = [UIColor colorWithHexString:@"#EEEEEE"].CGColor;
    _cancleBtn.layer.borderColor = [UIColor status:[PepData sharedInstance].m_overseeStr].CGColor;
    //: _cancleBtn.layer.masksToBounds = YES;
    _cancleBtn.layer.masksToBounds = YES;
    //: [bodyView addSubview:_cancleBtn];
    [bodyView addSubview:_cancleBtn];


    //: [bodyView addSubview:self.labName];
    [bodyView addSubview:self.labName];
    //: self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
    self.labName.frame = CGRectMake(15+40+15, 16, self.width-140, 40);
}

//: - (void)refreshWithMember:(NTESContactDataMember *)member{
- (void)image:(TextMember *)member{
    //: self.member = member;
    self.member = member;
    //: self.labName.text = [NTESSessionUtil showNick:member.info.infoId inSession:nil];
    self.labName.text = [DeviceDate inColor:member.info.infoId ting:nil];
//    [self.textLabel sizeToFit];
    //: NSURL *url;
    NSURL *url;
    //: if (member.info.avatarUrlString.length) {
    if (member.info.avatarUrlString.length) {
        //: url = [NSURL URLWithString:member.info.avatarUrlString];
        url = [NSURL URLWithString:member.info.avatarUrlString];
    }
    //: [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
    [_avatarImageView sd_setImageWithURL:url placeholderImage:member.info.avatarImage];
}

//: - (void)refreshData:(NIMTeamMember *)data
- (void)montage:(NIMTeamMember *)data
{
    //: self.data = data;
    self.data = data;
    //: self.isteam = YES;
    self.isteam = YES;
//    userId
//    [_avatarImageView sd_setImageWithURL:[NSURL URLWithString:data.imageUrl] placeholderImage:nil];
//    self.labName.text = data.nickname;

    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:data.userId option:nil];
    Info *info = [[Case pastTop] consumer:data.userId message:nil];
    //: self.labName.text = info.showName;
    self.labName.text = info.showName;
    //: [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[PepData sharedInstance].show_killerIdent]];
}


//: - (void)onTouchButton {
- (void)catScan {
    //: if ([self.delegate respondsToSelector:@selector(didTouchCancleButton:)] || [self.delegate respondsToSelector:@selector(didTouchTeamCancleButton:)]) {
    if ([self.delegate respondsToSelector:@selector(sizes:)] || [self.delegate respondsToSelector:@selector(emptying:)]) {

        //: if (self.isteam) {
        if (self.isteam) {
            //: [self.delegate didTouchTeamCancleButton:self.data];
            [self.delegate emptying:self.data];
        //: }else{
        }else{
            //: [self.delegate didTouchCancleButton:self.member];
            [self.delegate sizes:self.member];
        }

    }
}


//: - (void)addSubview:(UIView *)view
- (void)addSubview:(UIView *)view
{
    //: if (![view isKindOfClass:[NSClassFromString(@"_UITableViewCellSeparatorView") class]] && view)
    if (![view isKindOfClass:[NSClassFromString([PepData sharedInstance].app_enableFormat) class]] && view)
        //: [super addSubview:view];
        [super addSubview:view];
}


//: - (UILabel *)labName {
- (UILabel *)labName {
    //: if (!_labName) {
    if (!_labName) {
        //: _labName = [[UILabel alloc] init];
        _labName = [[UILabel alloc] init];
        //: _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.font = [UIFont systemFontOfSize:16.f];
        //: _labName.textColor = [UIColor colorWithHexString:@"#333333"];
        _labName.textColor = [UIColor status:[PepData sharedInstance].userBottomKey];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labName;
    return _labName;
}





//: @end
@end