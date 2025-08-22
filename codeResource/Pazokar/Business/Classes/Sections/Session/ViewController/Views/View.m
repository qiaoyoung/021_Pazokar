
#import <Foundation/Foundation.h>

@interface BoarData : NSObject

+ (instancetype)sharedInstance;

//: Congratulations on your fortune
@property (nonatomic, copy) NSString *main_respectivelyFormat;

//: View pick-up details>>
@property (nonatomic, copy) NSString *m_pepRangeData;

//: /wallet/redDetail
@property (nonatomic, copy) NSString *app_numberControlIdent;

//: data
@property (nonatomic, copy) NSString *main_negativeHaoTitle;

//: words
@property (nonatomic, copy) NSString *m_disappointedMsg;

//: icon_redpackage_open_close
@property (nonatomic, copy) NSString *main_managerData;

//: start
@property (nonatomic, copy) NSString *dreamComplyIdent;

//: #FFD7C4
@property (nonatomic, copy) NSString *showManagerIdent;

//: user_id
@property (nonatomic, copy) NSString *mainHormoneKey;

//: list
@property (nonatomic, copy) NSString *appSourceData;

//: redid
@property (nonatomic, copy) NSString *mShowTeamTitle;

//: The balance has been deposited and can be withdrawn directly>>
@property (nonatomic, copy) NSString *userPotatoIdent;

//: amount
@property (nonatomic, copy) NSString *app_adequateUrl;

//: icon_redpackage_open_back
@property (nonatomic, copy) NSString *showPregnantValue;

//: redinfo
@property (nonatomic, copy) NSString *mPateIdent;

//: unclaimed
@property (nonatomic, copy) NSString *user_nearlyKey;

//: team_red_adapter_yuan
@property (nonatomic, copy) NSString *notiShouldStr;

//: #FDA6A4
@property (nonatomic, copy) NSString *m_soundData;

//: #FE9FA8
@property (nonatomic, copy) NSString *appDemonNearlyName;

@end

@implementation BoarData

+ (instancetype)sharedInstance {
    static BoarData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)BoarDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)BoarDataToCache:(Byte *)data {
    int rising = data[0];
    Byte readKiller = data[1];
    int clothe = data[2];
    for (int i = clothe; i < clothe + rising; i++) {
        int value = data[i] - readKiller;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[clothe + rising] = 0;
    return data + clothe;
}

- (NSString *)StringFromBoarData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BoarDataToCache:data]];
}

//: icon_redpackage_open_back
- (NSString *)showPregnantValue {
    if (!_showPregnantValue) {
		NSArray<NSNumber *> *origin = @[@25, @18, @10, @32, @9, @182, @142, @12, @241, @134, @123, @117, @129, @128, @113, @132, @119, @118, @130, @115, @117, @125, @115, @121, @119, @113, @129, @130, @119, @128, @113, @116, @115, @117, @125, @101];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showPregnantValue = [self StringFromBoarData:value];
    }
    return _showPregnantValue;
}

//: data
- (NSString *)main_negativeHaoTitle {
    if (!_main_negativeHaoTitle) {
		NSArray<NSNumber *> *origin = @[@4, @73, @9, @80, @184, @146, @119, @111, @216, @173, @170, @189, @170, @139];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_negativeHaoTitle = [self StringFromBoarData:value];
    }
    return _main_negativeHaoTitle;
}

//: icon_redpackage_open_close
- (NSString *)main_managerData {
    if (!_main_managerData) {
		NSArray<NSNumber *> *origin = @[@26, @9, @7, @120, @121, @98, @8, @114, @108, @120, @119, @104, @123, @110, @109, @121, @106, @108, @116, @106, @112, @110, @104, @120, @121, @110, @119, @104, @108, @117, @120, @124, @110, @231];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_managerData = [self StringFromBoarData:value];
    }
    return _main_managerData;
}

//: team_red_adapter_yuan
- (NSString *)notiShouldStr {
    if (!_notiShouldStr) {
		NSArray<NSNumber *> *origin = @[@21, @97, @10, @17, @227, @63, @88, @79, @70, @240, @213, @198, @194, @206, @192, @211, @198, @197, @192, @194, @197, @194, @209, @213, @198, @211, @192, @218, @214, @194, @207, @2];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiShouldStr = [self StringFromBoarData:value];
    }
    return _notiShouldStr;
}

//: redid
- (NSString *)mShowTeamTitle {
    if (!_mShowTeamTitle) {
		NSArray<NSNumber *> *origin = @[@5, @34, @5, @216, @220, @148, @135, @134, @139, @134, @210];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mShowTeamTitle = [self StringFromBoarData:value];
    }
    return _mShowTeamTitle;
}

//: user_id
- (NSString *)mainHormoneKey {
    if (!_mainHormoneKey) {
		NSArray<NSNumber *> *origin = @[@7, @86, @11, @220, @117, @70, @102, @234, @30, @144, @205, @203, @201, @187, @200, @181, @191, @186, @147];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mainHormoneKey = [self StringFromBoarData:value];
    }
    return _mainHormoneKey;
}

//: #FDA6A4
- (NSString *)m_soundData {
    if (!_m_soundData) {
		NSArray<NSNumber *> *origin = @[@7, @68, @6, @176, @62, @147, @103, @138, @136, @133, @122, @133, @120, @192];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_soundData = [self StringFromBoarData:value];
    }
    return _m_soundData;
}

//: start
- (NSString *)dreamComplyIdent {
    if (!_dreamComplyIdent) {
		NSArray<NSNumber *> *origin = @[@5, @11, @7, @64, @61, @180, @242, @126, @127, @108, @125, @127, @49];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dreamComplyIdent = [self StringFromBoarData:value];
    }
    return _dreamComplyIdent;
}

//: Congratulations on your fortune
- (NSString *)main_respectivelyFormat {
    if (!_main_respectivelyFormat) {
		NSArray<NSNumber *> *origin = @[@31, @24, @13, @34, @54, @65, @161, @37, @194, @95, @181, @99, @208, @91, @135, @134, @127, @138, @121, @140, @141, @132, @121, @140, @129, @135, @134, @139, @56, @135, @134, @56, @145, @135, @141, @138, @56, @126, @135, @138, @140, @141, @134, @125, @41];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _main_respectivelyFormat = [self StringFromBoarData:value];
    }
    return _main_respectivelyFormat;
}

//: #FE9FA8
- (NSString *)appDemonNearlyName {
    if (!_appDemonNearlyName) {
		NSArray<NSNumber *> *origin = @[@7, @75, @13, @23, @181, @251, @42, @35, @111, @81, @92, @9, @16, @110, @145, @144, @132, @145, @140, @131, @220];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appDemonNearlyName = [self StringFromBoarData:value];
    }
    return _appDemonNearlyName;
}

//: list
- (NSString *)appSourceData {
    if (!_appSourceData) {
		NSArray<NSNumber *> *origin = @[@4, @25, @10, @46, @13, @189, @158, @25, @82, @84, @133, @130, @140, @141, @154];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _appSourceData = [self StringFromBoarData:value];
    }
    return _appSourceData;
}

//: /wallet/redDetail
- (NSString *)app_numberControlIdent {
    if (!_app_numberControlIdent) {
		NSArray<NSNumber *> *origin = @[@17, @44, @4, @84, @91, @163, @141, @152, @152, @145, @160, @91, @158, @145, @144, @112, @145, @160, @141, @149, @152, @92];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_numberControlIdent = [self StringFromBoarData:value];
    }
    return _app_numberControlIdent;
}

//: unclaimed
- (NSString *)user_nearlyKey {
    if (!_user_nearlyKey) {
		NSArray<NSNumber *> *origin = @[@9, @97, @7, @83, @204, @184, @220, @214, @207, @196, @205, @194, @202, @206, @198, @197, @104];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_nearlyKey = [self StringFromBoarData:value];
    }
    return _user_nearlyKey;
}

//: The balance has been deposited and can be withdrawn directly>>
- (NSString *)userPotatoIdent {
    if (!_userPotatoIdent) {
		NSArray<NSNumber *> *origin = @[@62, @73, @8, @19, @197, @84, @79, @145, @157, @177, @174, @105, @171, @170, @181, @170, @183, @172, @174, @105, @177, @170, @188, @105, @171, @174, @174, @183, @105, @173, @174, @185, @184, @188, @178, @189, @174, @173, @105, @170, @183, @173, @105, @172, @170, @183, @105, @171, @174, @105, @192, @178, @189, @177, @173, @187, @170, @192, @183, @105, @173, @178, @187, @174, @172, @189, @181, @194, @135, @135, @127];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userPotatoIdent = [self StringFromBoarData:value];
    }
    return _userPotatoIdent;
}

//: View pick-up details>>
- (NSString *)m_pepRangeData {
    if (!_m_pepRangeData) {
		NSArray<NSNumber *> *origin = @[@22, @1, @6, @245, @71, @167, @87, @106, @102, @120, @33, @113, @106, @100, @108, @46, @118, @113, @33, @101, @102, @117, @98, @106, @109, @116, @63, @63, @4];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_pepRangeData = [self StringFromBoarData:value];
    }
    return _m_pepRangeData;
}

//: words
- (NSString *)m_disappointedMsg {
    if (!_m_disappointedMsg) {
		NSArray<NSNumber *> *origin = @[@5, @6, @9, @21, @210, @213, @129, @185, @164, @125, @117, @120, @106, @121, @141];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _m_disappointedMsg = [self StringFromBoarData:value];
    }
    return _m_disappointedMsg;
}

//: redinfo
- (NSString *)mPateIdent {
    if (!_mPateIdent) {
		NSArray<NSNumber *> *origin = @[@7, @17, @9, @32, @116, @48, @124, @98, @204, @131, @118, @117, @122, @127, @119, @128, @240];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mPateIdent = [self StringFromBoarData:value];
    }
    return _mPateIdent;
}

//: amount
- (NSString *)app_adequateUrl {
    if (!_app_adequateUrl) {
		NSArray<NSNumber *> *origin = @[@6, @60, @3, @157, @169, @171, @177, @170, @176, @35];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _app_adequateUrl = [self StringFromBoarData:value];
    }
    return _app_adequateUrl;
}

//: #FFD7C4
- (NSString *)showManagerIdent {
    if (!_showManagerIdent) {
		NSArray<NSNumber *> *origin = @[@7, @82, @8, @204, @175, @56, @76, @147, @117, @152, @152, @150, @137, @149, @134, @50];
		NSData *data = [BoarData BoarDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showManagerIdent = [self StringFromBoarData:value];
    }
    return _showManagerIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  View.m
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESOpenRedPackageSheet.h"
#import "View.h"

//: @interface NTESOpenRedPackageSheet ()
@interface View ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) UIImageView *headerImageView;
@property (nonatomic,strong) UIImageView *headerImageView;
//: @property (nonatomic,strong) UILabel *sendNickname;
@property (nonatomic,strong) UILabel *sendNickname;
//: @property (nonatomic,strong) UILabel *amountLabel;
@property (nonatomic,strong) UILabel *amountLabel;
//: @property (nonatomic,strong) UILabel *unitLabel;
@property (nonatomic,strong) UILabel *unitLabel;
//: @property (nonatomic,strong) UILabel *wordLabel;
@property (nonatomic,strong) UILabel *wordLabel;

//: @end
@end

//: @implementation NTESOpenRedPackageSheet
@implementation View

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithInput:(CGRect)frame totaleract:(NSDictionary *)dictionary{

    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];

        //: UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: [self addSubview:b];
        [self addSubview:b];

        //: UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTapFrom)];
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(underWith)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [b addGestureRecognizer:singleRecognizer];
        [b addGestureRecognizer:singleRecognizer];

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 300/2-50, [[UIScreen mainScreen] bounds].size.width-100, 300)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 300/2-50, [[UIScreen mainScreen] bounds].size.width-100, 300)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];





        //: UIImageView *backImage = [[UIImageView alloc] init];
        UIImageView *backImage = [[UIImageView alloc] init];
        //: backImage.image = [UIImage imageNamed:@"icon_redpackage_open_back"];
        backImage.image = [UIImage imageNamed:[BoarData sharedInstance].showPregnantValue];
        //: backImage.clipsToBounds = YES;
        backImage.clipsToBounds = YES;
        //: backImage.contentMode = UIViewContentModeScaleAspectFill;
        backImage.contentMode = UIViewContentModeScaleAspectFill;
        //: [_backView addSubview:backImage];
        [_backView addSubview:backImage];
        //: [backImage mas_makeConstraints:^(MASConstraintMaker *make) {
        [backImage mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.right.mas_equalTo(0);
            make.right.mas_equalTo(0);
            //: make.bottom.mas_equalTo(0);
            make.bottom.mas_equalTo(0);
        //: }];
        }];


        //: _headerImageView = [[UIImageView alloc] init];
        _headerImageView = [[UIImageView alloc] init];
        //: [_backView addSubview:_headerImageView];
        [_backView addSubview:_headerImageView];
        //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.width.mas_equalTo(30);
            make.width.mas_equalTo(30);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //昵称
        //: UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        //: titleLabel_1.textColor = [UIColor whiteColor];
        titleLabel_1.textColor = [UIColor whiteColor];
        //: titleLabel_1.font = [UIFont systemFontOfSize:16];
        titleLabel_1.font = [UIFont systemFontOfSize:16];
        //: titleLabel_1.textAlignment = NSTextAlignmentLeft;
        titleLabel_1.textAlignment = NSTextAlignmentLeft;
        //: [_backView addSubview:titleLabel_1];
        [_backView addSubview:titleLabel_1];
        //: _sendNickname = titleLabel_1;
        _sendNickname = titleLabel_1;
        //: [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.left.mas_offset(50);
            make.left.mas_offset(50);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
        //: }];
        }];

//        UIView *line = [[UIView alloc] init];
//        line.backgroundColor = RGB_COLOR_String(@"#C7E8CA");
//        [_backView addSubview:line];
//        [line mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(0);
//            make.right.mas_offset(0);
//            make.top.mas_offset(50);
//            make.height.mas_equalTo(1);
//        }];
//


        //: UILabel *amountLabel = [[UILabel alloc] init];
        UILabel *amountLabel = [[UILabel alloc] init];
        //: amountLabel.textAlignment = NSTextAlignmentLeft;
        amountLabel.textAlignment = NSTextAlignmentLeft;
        //: amountLabel.textColor = [UIColor whiteColor];
        amountLabel.textColor = [UIColor whiteColor];
        //: amountLabel.font = [UIFont boldSystemFontOfSize:36];
        amountLabel.font = [UIFont boldSystemFontOfSize:36];
        //: [amountLabel sizeToFit];
        [amountLabel sizeToFit];
        //: [_backView addSubview:amountLabel];
        [_backView addSubview:amountLabel];
        //: _amountLabel = amountLabel;
        _amountLabel = amountLabel;
        //: [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(90);
            make.top.mas_offset(90);
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
            //: make.width.mas_equalTo(50);
            make.width.mas_equalTo(50);
        //: }];
        }];

        //: _unitLabel = [[UILabel alloc] init];
        _unitLabel = [[UILabel alloc] init];
        //: _unitLabel.textAlignment = NSTextAlignmentLeft;
        _unitLabel.textAlignment = NSTextAlignmentLeft;
        //: _unitLabel.textColor = [UIColor whiteColor];
        _unitLabel.textColor = [UIColor whiteColor];
        //: _unitLabel.font = [UIFont systemFontOfSize:15];
        _unitLabel.font = [UIFont systemFontOfSize:15];
        //: _unitLabel.text = [BusyLanguageManager getTextWithKey:@"team_red_adapter_yuan"];
        _unitLabel.text = [SendName streetSmart:[BoarData sharedInstance].notiShouldStr];
        //: [_backView addSubview:_unitLabel];
        [_backView addSubview:_unitLabel];
        //: [_unitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_unitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(110);
            make.top.mas_offset(110);
            //: make.left.mas_equalTo(amountLabel.mas_right).mas_offset(5);
            make.left.mas_equalTo(amountLabel.mas_right).mas_offset(5);
            //: make.width.mas_equalTo(20);
            make.width.mas_equalTo(20);
            //: make.height.mas_equalTo(20);
            make.height.mas_equalTo(20);
        //: }];
        }];



        //: UIButton *content = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *content = [UIButton buttonWithType:UIButtonTypeCustom];
        //: content.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        content.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: content.titleLabel.font = [UIFont systemFontOfSize:13];
        content.titleLabel.font = [UIFont systemFontOfSize:13];
        //: [content setTitle:@"The balance has been deposited and can be withdrawn directly>>" forState:UIControlStateNormal];
        [content setTitle:[BoarData sharedInstance].userPotatoIdent forState:UIControlStateNormal];
        //: [content setTitleColor:[UIColor colorWithHexString:@"#FFD7C4"] forState:UIControlStateNormal];
        [content setTitleColor:[UIColor status:[BoarData sharedInstance].showManagerIdent] forState:UIControlStateNormal];
        //: [content addTarget:self action:@selector(walletButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [content addTarget:self action:@selector(assemblageVoice) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:content];
        [_backView addSubview:content];
        //: [_backView addSubview:content];
        [_backView addSubview:content];
        //: [content mas_makeConstraints:^(MASConstraintMaker *make) {
        [content mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(145);
            make.top.mas_offset(145);
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(20);
            make.height.mas_equalTo(20);
        //: }];
        }];


        //: UILabel *words = [[UILabel alloc] init];
        UILabel *words = [[UILabel alloc] init];
        //: words.textAlignment = NSTextAlignmentCenter;
        words.textAlignment = NSTextAlignmentCenter;
        //: words.textColor = [UIColor colorWithHexString:@"#FE9FA8"];
        words.textColor = [UIColor status:[BoarData sharedInstance].appDemonNearlyName];
        //: words.font = [UIFont systemFontOfSize:24];
        words.font = [UIFont systemFontOfSize:24];
        //: words.text = @"Congratulations on your fortune";
        words.text = [BoarData sharedInstance].main_respectivelyFormat;
        //: [_backView addSubview:words];
        [_backView addSubview:words];
        //: _wordLabel = words;
        _wordLabel = words;
        //: [words mas_makeConstraints:^(MASConstraintMaker *make) {
        [words mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(190);
            make.top.mas_offset(190);
            //: make.left.mas_offset(10);
            make.left.mas_offset(10);
            //: make.right.mas_equalTo(-10);
            make.right.mas_equalTo(-10);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: moreBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        moreBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        //: [moreBtn setTitle:@"View pick-up details>>" forState:UIControlStateNormal];
        [moreBtn setTitle:[BoarData sharedInstance].m_pepRangeData forState:UIControlStateNormal];
        //: [moreBtn setTitleColor:[UIColor colorWithHexString:@"#FDA6A4"] forState:UIControlStateNormal];
        [moreBtn setTitleColor:[UIColor status:[BoarData sharedInstance].m_soundData] forState:UIControlStateNormal];
        //: [moreBtn addTarget:self action:@selector(redpackageDetail) forControlEvents:UIControlEventTouchUpInside];
        [moreBtn addTarget:self action:@selector(statusImage) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:moreBtn];
        [_backView addSubview:moreBtn];
        //: [moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        [moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.bottom.mas_offset(-15);
            make.bottom.mas_offset(-15);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.frame = CGRectMake(0, 0, 50, 50);
        closeButton.frame = CGRectMake(0, 0, 50, 50);
        //: [closeButton setImage:[UIImage imageNamed:@"icon_redpackage_open_close"] forState:UIControlStateNormal];
        [closeButton setImage:[UIImage imageNamed:[BoarData sharedInstance].main_managerData] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(endPicker) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:closeButton];
        [self addSubview:closeButton];
        //: closeButton.layer.masksToBounds = YES;
        closeButton.layer.masksToBounds = YES;
        //: closeButton.layer.cornerRadius = 25;
        closeButton.layer.cornerRadius = 25;
        //: closeButton.layer.borderColor = [UIColor whiteColor].CGColor;
        closeButton.layer.borderColor = [UIColor whiteColor].CGColor;
        //: closeButton.layer.borderWidth = 2;
        closeButton.layer.borderWidth = 2;
        //: [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_backView.frame.origin.y + 300 +20);
            make.top.mas_equalTo(_backView.frame.origin.y + 300 +20);
            //: make.centerX.mas_equalTo(self);
            make.centerX.mas_equalTo(self);
            //: make.width.height.mas_equalTo(50);
            make.width.height.mas_equalTo(50);
        //: }];
        }];



        //: [self requestRedDetail];
        [self electronicText];

    }
    //: return self;
    return self;
}


//: -(void)requestRedDetail{
-(void)electronicText{

    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: dict[@"redid"] = [_originDict newStringValueForKey:@"redid"];
    dict[[BoarData sharedInstance].mShowTeamTitle] = [_originDict tag:[BoarData sharedInstance].mShowTeamTitle];
    //: dict[@"start"] = @"1";
    dict[[BoarData sharedInstance].dreamComplyIdent] = @"1";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/redDetail"] params:dict isShow:NO success:^(id responseObject) {
    [TitleManageressManager size:[NSString stringWithFormat:[BoarData sharedInstance].app_numberControlIdent] read:dict indicator:NO spaceOf:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict selected:[BoarData sharedInstance].main_negativeHaoTitle];
        //: NSDictionary *redinfo = [data valueObjectForKey:@"redinfo"];
        NSDictionary *redinfo = [data selected:[BoarData sharedInstance].mPateIdent];
        //: NSArray *list = [data arrayValueForKey:@"list"];
        NSArray *list = [data unwished:[BoarData sharedInstance].appSourceData];
        //: _wordLabel.text = [redinfo newStringValueForKey:@"words"];
        _wordLabel.text = [redinfo tag:[BoarData sharedInstance].m_disappointedMsg];
        //: [self reloadHeader:[redinfo newStringValueForKey:@"user_id"]];
        [self smart:[redinfo tag:[BoarData sharedInstance].mainHormoneKey]];


        //: NSDictionary *getRedDict = nil;
        NSDictionary *getRedDict = nil;
        //: for (NSDictionary *item in list) {
        for (NSDictionary *item in list) {
            //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: if ([[item newStringValueForKey:@"user_id"] isEqualToString:currentAccount]) {
            if ([[item tag:[BoarData sharedInstance].mainHormoneKey] isEqualToString:currentAccount]) {
                //: getRedDict = item;
                getRedDict = item;
                //: break;
                break;
            }
        }

        //: if (getRedDict == nil) {
        if (getRedDict == nil) {

            //: _amountLabel.text = @"unclaimed";
            _amountLabel.text = [BoarData sharedInstance].user_nearlyKey;
            //: [_amountLabel sizeToFit];
            [_amountLabel sizeToFit];
            //: [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.width.mas_equalTo(120);
                make.width.mas_equalTo(120);
            //: }];
            }];
            //: _unitLabel.hidden = YES;
            _unitLabel.hidden = YES;
        //: }else{
        }else{
            //: _unitLabel.hidden = NO;
            _unitLabel.hidden = NO;
            //: NSString *amount = [NSString stringWithFormat:@"¥%@",[getRedDict newStringValueForKey:@"amount"]];
            NSString *amount = [NSString stringWithFormat:@"¥%@",[getRedDict tag:[BoarData sharedInstance].app_adequateUrl]];
            //: _amountLabel.text = amount;
            _amountLabel.text = amount;
            //: [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.width.mas_equalTo(120);
                make.width.mas_equalTo(120);
            //: }];
            }];
            //: [_unitLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_unitLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.left.mas_equalTo(_amountLabel.mas_right).mas_offset(5);
                make.left.mas_equalTo(_amountLabel.mas_right).mas_offset(5);
            //: }];
            }];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } session:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)walletButtonClick{
-(void)assemblageVoice{

    //: if (self.delegate && [self.delegate respondsToSelector:@selector(myWalletDelegate)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(walletColor)]) {
        //: [self.delegate myWalletDelegate];
        [self.delegate walletColor];
        //: [self dismissPicker];
        [self endPicker];
    }
}

//: -(void)redpackageDetail{
-(void)statusImage{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(redpackageDetailWith:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(inscriptionForStreetSmart:)]) {
        //: [self.delegate redpackageDetailWith:[_originDict newStringValueForKey:@"redid"]];
        [self.delegate inscriptionForStreetSmart:[_originDict tag:[BoarData sharedInstance].mShowTeamTitle]];
        //: [self dismissPicker];
        [self endPicker];

    }
}

//: -(void)reloadHeader:(NSString *)userID{
-(void)smart:(NSString *)userID{
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    Info *info = [[Case pastTop] consumer:userID message:nil];
    //: NSString *headerUrl = me.userInfo.avatarUrl;
    NSString *headerUrl = me.userInfo.avatarUrl;
    //: UIImage *placeholderImage = info.avatarImage;
    UIImage *placeholderImage = info.avatarImage;
    //: [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    //: _sendNickname.text = me.userInfo.nickName;
    _sendNickname.text = me.userInfo.nickName;
}

//: -(void)handleSingleTapFrom{
-(void)underWith{
    //: [self dismissPicker];
    [self endPicker];
}

//: - (void)show{
- (void)value{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
        [self->_backView setHost:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice statusOrLevel]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)endPicker{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setHost:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}

//: @end
@end
