
#import <Foundation/Foundation.h>

typedef struct {
    Byte separate;
    Byte *situation;
    unsigned int drop;
} StructNeighborhoodData;

@interface NeighborhoodData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation NeighborhoodData

+ (instancetype)sharedInstance {
    static NeighborhoodData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)NeighborhoodDataToByte:(StructNeighborhoodData *)data {
    for (int i = 0; i < data->drop; i++) {
        data->situation[i] ^= data->separate;
    }
    data->situation[data->drop] = 0;
    return data->situation;
}

- (NSString *)StringFromNeighborhoodData:(StructNeighborhoodData *)data {
    return [NSString stringWithUTF8String:(char *)[self NeighborhoodDataToByte:data]];
}

//: %@个红包，共%@元
- (NSString *)m_childUrl {
    /* static */ NSString *m_childUrl = nil;
    if (!m_childUrl) {
        StructNeighborhoodData value = (StructNeighborhoodData){35, (Byte []){6, 99, 199, 155, 137, 196, 153, 129, 198, 175, 166, 204, 159, 175, 198, 166, 146, 6, 99, 198, 166, 160, 38}, 22};
        m_childUrl = [self StringFromNeighborhoodData:&value];
    }
    return m_childUrl;
}

//: icon_redpackage_top
- (NSString *)showLaughName {
    /* static */ NSString *showLaughName = nil;
    if (!showLaughName) {
        StructNeighborhoodData value = (StructNeighborhoodData){36, (Byte []){77, 71, 75, 74, 123, 86, 65, 64, 84, 69, 71, 79, 69, 67, 65, 123, 80, 75, 84, 50}, 19};
        showLaughName = [self StringFromNeighborhoodData:&value];
    }
    return showLaughName;
}

//: #DF7055
- (NSString *)dreamForbidHonestlyTitle {
    /* static */ NSString *dreamForbidHonestlyTitle = nil;
    if (!dreamForbidHonestlyTitle) {
        StructNeighborhoodData value = (StructNeighborhoodData){122, (Byte []){89, 62, 60, 77, 74, 79, 79, 80}, 7};
        dreamForbidHonestlyTitle = [self StringFromNeighborhoodData:&value];
    }
    return dreamForbidHonestlyTitle;
}

//: user_nickname
- (NSString *)mHonestlyControlMessage {
    /* static */ NSString *mHonestlyControlMessage = nil;
    if (!mHonestlyControlMessage) {
        StructNeighborhoodData value = (StructNeighborhoodData){211, (Byte []){166, 160, 182, 161, 140, 189, 186, 176, 184, 189, 178, 190, 182, 177}, 13};
        mHonestlyControlMessage = [self StringFromNeighborhoodData:&value];
    }
    return mHonestlyControlMessage;
}

//: words
- (NSString *)app_leadershipTitle {
    /* static */ NSString *app_leadershipTitle = nil;
    if (!app_leadershipTitle) {
        StructNeighborhoodData value = (StructNeighborhoodData){193, (Byte []){182, 174, 179, 165, 178, 4}, 5};
        app_leadershipTitle = [self StringFromNeighborhoodData:&value];
    }
    return app_leadershipTitle;
}

//: #F1F1F1
- (NSString *)userVirusId {
    /* static */ NSString *userVirusId = nil;
    if (!userVirusId) {
        StructNeighborhoodData value = (StructNeighborhoodData){91, (Byte []){120, 29, 106, 29, 106, 29, 106, 191}, 7};
        userVirusId = [self StringFromNeighborhoodData:&value];
    }
    return userVirusId;
}

//: nickname
- (NSString *)userTextProximateId {
    /* static */ NSString *userTextProximateId = nil;
    if (!userTextProximateId) {
        StructNeighborhoodData value = (StructNeighborhoodData){10, (Byte []){100, 99, 105, 97, 100, 107, 103, 111, 194}, 8};
        userTextProximateId = [self StringFromNeighborhoodData:&value];
    }
    return userTextProximateId;
}

//: avatar
- (NSString *)app_finKey {
    /* static */ NSString *app_finKey = nil;
    if (!app_finKey) {
        StructNeighborhoodData value = (StructNeighborhoodData){93, (Byte []){60, 43, 60, 41, 60, 47, 27}, 6};
        app_finKey = [self StringFromNeighborhoodData:&value];
    }
    return app_finKey;
}

//: createtime
- (NSString *)kManagerStr {
    /* static */ NSString *kManagerStr = nil;
    if (!kManagerStr) {
        StructNeighborhoodData value = (StructNeighborhoodData){162, (Byte []){193, 208, 199, 195, 214, 199, 214, 203, 207, 199, 15}, 10};
        kManagerStr = [self StringFromNeighborhoodData:&value];
    }
    return kManagerStr;
}

//: user_redpackage_prise
- (NSString *)k_differentlyName {
    /* static */ NSString *k_differentlyName = nil;
    if (!k_differentlyName) {
        StructNeighborhoodData value = (StructNeighborhoodData){3, (Byte []){118, 112, 102, 113, 92, 113, 102, 103, 115, 98, 96, 104, 98, 100, 102, 92, 115, 113, 106, 112, 102, 188}, 21};
        k_differentlyName = [self StringFromNeighborhoodData:&value];
    }
    return k_differentlyName;
}

//: amount
- (NSString *)k_letterInfoMsg {
    /* static */ NSString *k_letterInfoMsg = nil;
    if (!k_letterInfoMsg) {
        StructNeighborhoodData value = (StructNeighborhoodData){29, (Byte []){124, 112, 114, 104, 115, 105, 91}, 6};
        k_letterInfoMsg = [self StringFromNeighborhoodData:&value];
    }
    return k_letterInfoMsg;
}

//: count
- (NSString *)kEmphasizePinFormat {
    /* static */ NSString *kEmphasizePinFormat = nil;
    if (!kEmphasizePinFormat) {
        StructNeighborhoodData value = (StructNeighborhoodData){246, (Byte []){149, 153, 131, 152, 130, 166}, 5};
        kEmphasizePinFormat = [self StringFromNeighborhoodData:&value];
    }
    return kEmphasizePinFormat;
}

//: user_avatar
- (NSString *)m_gateName {
    /* static */ NSString *m_gateName = nil;
    if (!m_gateName) {
        StructNeighborhoodData value = (StructNeighborhoodData){64, (Byte []){53, 51, 37, 50, 31, 33, 54, 33, 52, 33, 50, 89}, 11};
        m_gateName = [self StringFromNeighborhoodData:&value];
    }
    return m_gateName;
}

//: back_white
- (NSString *)dream_managerFormat {
    /* static */ NSString *dream_managerFormat = nil;
    if (!dream_managerFormat) {
        StructNeighborhoodData value = (StructNeighborhoodData){57, (Byte []){91, 88, 90, 82, 102, 78, 81, 80, 77, 92, 190}, 10};
        dream_managerFormat = [self StringFromNeighborhoodData:&value];
    }
    return dream_managerFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ColorViewCell.m
//  NIM
//
//  Created by 彭爽 on 2021/10/21.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedpackageDetailCell.h"
#import "ColorViewCell.h"

//: @implementation NTESRedpackageDetailCell
@implementation ColorViewCell

//: - (void)initSubviews{
- (void)initBe{

    //: UIView *topview = [[UIView alloc] init];
    UIView *topview = [[UIView alloc] init];
    //: topview.backgroundColor = [UIColor colorWithHexString:@"#DF7055"];
    topview.backgroundColor = [UIColor status:[[NeighborhoodData sharedInstance] dreamForbidHonestlyTitle]];
    //: [self addSubview:topview];
    [self addSubview:topview];
    //: [topview mas_makeConstraints:^(MASConstraintMaker *make) {
    [topview mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
        //: make.height.mas_equalTo([UIDevice vg_statusBarHeight] + 10);
        make.height.mas_equalTo([UIDevice statusOrLevel] + 10);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
    //: }];
    }];

    //: UIImageView *imageBack = [[UIImageView alloc] init];
    UIImageView *imageBack = [[UIImageView alloc] init];
    //: imageBack.userInteractionEnabled = YES;
    imageBack.userInteractionEnabled = YES;
    //: imageBack.image = [UIImage imageNamed:@"icon_redpackage_top"];
    imageBack.image = [UIImage imageNamed:[[NeighborhoodData sharedInstance] showLaughName]];
    //: [self addSubview:imageBack];
    [self addSubview:imageBack];
    //: [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
    [imageBack mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice statusOrLevel]);
        //: make.bottom.mas_offset(0);
        make.bottom.mas_offset(0);
        //: make.left.mas_offset(0);
        make.left.mas_offset(0);
        //: make.right.mas_offset(0);
        make.right.mas_offset(0);
        //: make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width);
        make.width.mas_equalTo([[UIScreen mainScreen] bounds].size.width);
        //: make.height.mas_equalTo([[UIScreen mainScreen] bounds].size.width/1162*720);
        make.height.mas_equalTo([[UIScreen mainScreen] bounds].size.width/1162*720);
    //: }];
    }];

    //: _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [_backButton setImage:[UIImage imageNamed:@"back_white"] forState:UIControlStateNormal];
    [_backButton setImage:[UIImage imageNamed:[[NeighborhoodData sharedInstance] dream_managerFormat]] forState:UIControlStateNormal];
    //: [self addSubview:_backButton];
    [self addSubview:_backButton];
    //: [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
    [_backButton mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.top.mas_offset([UIDevice vg_statusBarHeight]);
        make.top.mas_offset([UIDevice statusOrLevel]);
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.width.height.mas_equalTo(35);
        make.width.height.mas_equalTo(35);
    //: }];
    }];


    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    _nickNameLabel.textAlignment = NSTextAlignmentCenter;
    //: _nickNameLabel.font = [UIFont systemFontOfSize:18];
    _nickNameLabel.font = [UIFont systemFontOfSize:18];
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [imageBack addSubview:_nickNameLabel];
    [imageBack addSubview:_nickNameLabel];
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(imageBack).mas_offset(13);
        make.centerX.mas_equalTo(imageBack).mas_offset(13);
        //: make.centerY.mas_offset(10);
        make.centerY.mas_offset(10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [imageBack addSubview:_headerImage];
    [imageBack addSubview:_headerImage];
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: _headerImage.layer.cornerRadius = 4.2;
    _headerImage.layer.cornerRadius = 4.2;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_equalTo(_nickNameLabel.mas_left).mas_offset(-5);
        make.right.mas_equalTo(_nickNameLabel.mas_left).mas_offset(-5);
        //: make.centerY.mas_equalTo(_nickNameLabel);
        make.centerY.mas_equalTo(_nickNameLabel);
        //: make.width.height.mas_equalTo(25);
        make.width.height.mas_equalTo(25);
    //: }];
    }];


    //: _wordLabel = [[UILabel alloc] init];
    _wordLabel = [[UILabel alloc] init];
    //: _wordLabel.textAlignment = NSTextAlignmentCenter;
    _wordLabel.textAlignment = NSTextAlignmentCenter;
    //: _wordLabel.font = [UIFont systemFontOfSize:13];
    _wordLabel.font = [UIFont systemFontOfSize:13];
    //: _wordLabel.textColor = [UIColor lightGrayColor];
    _wordLabel.textColor = [UIColor lightGrayColor];
    //: [_wordLabel sizeToFit];
    [_wordLabel sizeToFit];
    //: [imageBack addSubview:_wordLabel];
    [imageBack addSubview:_wordLabel];
    //: [_wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_wordLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.centerX.mas_equalTo(imageBack);
        make.centerX.mas_equalTo(imageBack);
        //: make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(7);
        make.top.mas_equalTo(_nickNameLabel.mas_bottom).mas_offset(7);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];


    //: _contentLabel = [[UILabel alloc] init];
    _contentLabel = [[UILabel alloc] init];
    //: _contentLabel.textAlignment = NSTextAlignmentLeft;
    _contentLabel.textAlignment = NSTextAlignmentLeft;
    //: _contentLabel.font = [UIFont systemFontOfSize:13];
    _contentLabel.font = [UIFont systemFontOfSize:13];
    //: _contentLabel.textColor = [UIColor lightGrayColor];
    _contentLabel.textColor = [UIColor lightGrayColor];
    //: [imageBack addSubview:_contentLabel];
    [imageBack addSubview:_contentLabel];
    //: [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(5);
        make.left.mas_offset(5);
        //: make.bottom.mas_offset(-5);
        make.bottom.mas_offset(-5);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.right.mas_offset(-5);
        make.right.mas_offset(-5);
    //: }];
    }];

}

//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)icon:(NSDictionary *)information{
    //: _nickNameLabel.text = [information newStringValueForKey:@"user_nickname"];
    _nickNameLabel.text = [information tag:[[NeighborhoodData sharedInstance] mHonestlyControlMessage]];
    //: _wordLabel.text = [information newStringValueForKey:@"words"];
    _wordLabel.text = [information tag:[[NeighborhoodData sharedInstance] app_leadershipTitle]];
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"user_avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information tag:[[NeighborhoodData sharedInstance] m_gateName]]]];

    //: NSString *count = [information newStringValueForKey:@"count"];
    NSString *count = [information tag:[[NeighborhoodData sharedInstance] kEmphasizePinFormat]];
    //: NSString *amount = [information newStringValueForKey:@"amount"];
    NSString *amount = [information tag:[[NeighborhoodData sharedInstance] k_letterInfoMsg]];
    //: _contentLabel.text = [NSString stringWithFormat:@"%@个红包，共%@元",count,amount];
    _contentLabel.text = [NSString stringWithFormat:[[NeighborhoodData sharedInstance] m_childUrl],count,amount];

}

//: -(void)backButtonClick{
-(void)small{

}

//: @end
@end







//: @implementation NTESRedpackageDetailListCell
@implementation KeyViewCell

//: -(void)initSubviews{
-(void)initBe{

    //: UIView *line = [[UIView alloc] init];
    UIView *line = [[UIView alloc] init];
    //: line.backgroundColor = [UIColor colorWithHexString:@"#F1F1F1"];
    line.backgroundColor = [UIColor status:[[NeighborhoodData sharedInstance] userVirusId]];
    //: [self addSubview:line];
    [self addSubview:line];
    //: [line mas_makeConstraints:^(MASConstraintMaker *make) {
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(15);
        make.left.mas_offset(15);
        //: make.right.mas_offset(-15);
        make.right.mas_offset(-15);
        //: make.height.mas_equalTo(0.8);
        make.height.mas_equalTo(0.8);
        //: make.top.mas_offset(0);
        make.top.mas_offset(0);
    //: }];
    }];

    //: _headerImage = [[UIImageView alloc] init];
    _headerImage = [[UIImageView alloc] init];
    //: [self addSubview:_headerImage];
    [self addSubview:_headerImage];
    //: _headerImage.layer.masksToBounds = YES;
    _headerImage.layer.masksToBounds = YES;
    //: _headerImage.layer.cornerRadius = 5.3;
    _headerImage.layer.cornerRadius = 5.3;
    //: [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_headerImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_offset(10);
        make.left.mas_offset(10);
        //: make.top.mas_offset(10);
        make.top.mas_offset(10);
        //: make.bottom.mas_offset(-10);
        make.bottom.mas_offset(-10);
        //: make.width.height.mas_equalTo(45);
        make.width.height.mas_equalTo(45);
    //: }];
    }];

    //: _nickNameLabel = [[UILabel alloc] init];
    _nickNameLabel = [[UILabel alloc] init];
    //: _nickNameLabel.textAlignment = NSTextAlignmentLeft;
    _nickNameLabel.textAlignment = NSTextAlignmentLeft;
    //: _nickNameLabel.font = [UIFont systemFontOfSize:15];
    _nickNameLabel.font = [UIFont systemFontOfSize:15];
    //: _nickNameLabel.textColor = [UIColor blackColor];
    _nickNameLabel.textColor = [UIColor blackColor];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [self addSubview:_nickNameLabel];
    [self addSubview:_nickNameLabel];
    //: [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(-10);
        make.centerY.mas_equalTo(_headerImage).mas_offset(-10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
    //: }];
    }];

    //: _praiseImage = [[UIImageView alloc] init];
    _praiseImage = [[UIImageView alloc] init];
    //: _praiseImage.image = [UIImage imageNamed:@"user_redpackage_prise"];
    _praiseImage.image = [UIImage imageNamed:[[NeighborhoodData sharedInstance] k_differentlyName]];
    //: [self addSubview:_praiseImage];
    [self addSubview:_praiseImage];
    //: [_praiseImage mas_makeConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        //: make.centerY.mas_equalTo(_nickNameLabel).mas_offset(0);
        make.centerY.mas_equalTo(_nickNameLabel).mas_offset(0);
        //: make.width.height.mas_equalTo(20);
        make.width.height.mas_equalTo(20);
    //: }];
    }];


    //: _timeLabel = [[UILabel alloc] init];
    _timeLabel = [[UILabel alloc] init];
    //: _timeLabel.textAlignment = NSTextAlignmentLeft;
    _timeLabel.textAlignment = NSTextAlignmentLeft;
    //: _timeLabel.font = [UIFont systemFontOfSize:13];
    _timeLabel.font = [UIFont systemFontOfSize:13];
    //: _timeLabel.textColor = [UIColor lightGrayColor];
    _timeLabel.textColor = [UIColor lightGrayColor];
    //: [_timeLabel sizeToFit];
    [_timeLabel sizeToFit];
    //: [self addSubview:_timeLabel];
    [self addSubview:_timeLabel];
    //: [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        make.left.mas_equalTo(_headerImage.mas_right).mas_equalTo(5);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(10);
        make.centerY.mas_equalTo(_headerImage).mas_offset(10);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
    //: }];
    }];


    //: _redAmountLabel = [[UILabel alloc] init];
    _redAmountLabel = [[UILabel alloc] init];
    //: _redAmountLabel.textAlignment = NSTextAlignmentRight;
    _redAmountLabel.textAlignment = NSTextAlignmentRight;
    //: _redAmountLabel.font = [UIFont systemFontOfSize:18];
    _redAmountLabel.font = [UIFont systemFontOfSize:18];
    //: _redAmountLabel.textColor = [UIColor blackColor];
    _redAmountLabel.textColor = [UIColor blackColor];
    //: [_redAmountLabel sizeToFit];
    [_redAmountLabel sizeToFit];
    //: [self addSubview:_redAmountLabel];
    [self addSubview:_redAmountLabel];
    //: [_redAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    [_redAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        //: make.right.mas_equalTo(-8);
        make.right.mas_equalTo(-8);
        //: make.centerY.mas_equalTo(_headerImage).mas_offset(0);
        make.centerY.mas_equalTo(_headerImage).mas_offset(0);
        //: make.height.mas_equalTo(20);
        make.height.mas_equalTo(20);
        //: make.width.mas_equalTo(200);
        make.width.mas_equalTo(200);
    //: }];
    }];



}
//: -(void)reloadWithInformation:(NSDictionary *)information{
-(void)icon:(NSDictionary *)information{
    //: [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information newStringValueForKey:@"avatar"]]];
    [_headerImage sd_setImageWithURL:[NSURL URLWithString:[information tag:[[NeighborhoodData sharedInstance] app_finKey]]]];
    //: _nickNameLabel.text = [information newStringValueForKey:@"nickname"];
    _nickNameLabel.text = [information tag:[[NeighborhoodData sharedInstance] userTextProximateId]];
    //: _timeLabel.text = [information newStringValueForKey:@"createtime"];
    _timeLabel.text = [information tag:[[NeighborhoodData sharedInstance] kManagerStr]];
    //: _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information newStringValueForKey:@"amount"]];
    _redAmountLabel.text = [NSString stringWithFormat:@"%@元",[information tag:[[NeighborhoodData sharedInstance] k_letterInfoMsg]]];
    //: [_nickNameLabel sizeToFit];
    [_nickNameLabel sizeToFit];
    //: [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
    [_praiseImage mas_updateConstraints:^(MASConstraintMaker *make) {
        //: make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
        make.left.mas_equalTo(_nickNameLabel.mas_right).mas_offset(3);
    //: }];
    }];

}

//: @end
@end