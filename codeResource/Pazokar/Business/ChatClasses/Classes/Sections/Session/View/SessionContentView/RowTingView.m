
#import <Foundation/Foundation.h>

@interface FabData : NSObject

+ (instancetype)sharedInstance;

//: icon_receiver_voice_playing_007
@property (nonatomic, copy) NSString *user_viewMessage;

//: icon_voice_plus_b
@property (nonatomic, copy) NSString *main_cooperationTitle;

//: icon_receiver_voice_playing_004
@property (nonatomic, copy) NSString *m_showPath;

//: icon_receiver_voice_playing_001
@property (nonatomic, copy) NSString *appCanUrl;

//: icon_receiver_voice_playing
@property (nonatomic, copy) NSString *m_showKey;

//: icon_voice_play_b
@property (nonatomic, copy) NSString *app_commendationMsg;

//: icon_receiver_voice_playing_w
@property (nonatomic, copy) NSString *appStrikeTitle;

//: icon_receiver_voice_playing_010
@property (nonatomic, copy) NSString *dreamSizeContent;

//: icon_receiver_voice_playing_009
@property (nonatomic, copy) NSString *k_risingName;

//: icon_receiver_voice_playing_003
@property (nonatomic, copy) NSString *show_programmingId;

//: icon_receiver_voice_playing_005
@property (nonatomic, copy) NSString *appEnemyUrl;

//: icon_receiver_voice_playing_002
@property (nonatomic, copy) NSString *noti_seniorMessage;

//: icon_receiver_voice_playing_006
@property (nonatomic, copy) NSString *user_withName;

//: icon_receiver_voice_playing_008
@property (nonatomic, copy) NSString *dream_conversationMessage;

@end

@implementation FabData

+ (instancetype)sharedInstance {
    static FabData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FabDataToCache:(Byte *)data {
    int guaranteeVoice = data[0];
    Byte towerEmphasizeText = data[1];
    int toOof = data[2];
    for (int i = toOof; i < toOof + guaranteeVoice; i++) {
        int value = data[i] - towerEmphasizeText;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[toOof + guaranteeVoice] = 0;
    return data + toOof;
}

- (NSString *)StringFromFabData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FabDataToCache:data]];
}

//: icon_voice_play_b
- (NSString *)app_commendationMsg {
    if (!_app_commendationMsg) {
        Byte value[] = {17, 50, 11, 223, 220, 151, 238, 149, 205, 169, 146, 155, 149, 161, 160, 145, 168, 161, 155, 149, 151, 145, 162, 158, 147, 171, 145, 148, 130};
        _app_commendationMsg = [self StringFromFabData:value];
    }
    return _app_commendationMsg;
}

//: icon_receiver_voice_playing_006
- (NSString *)user_withName {
    if (!_user_withName) {
        Byte value[] = {31, 91, 10, 120, 175, 33, 119, 154, 240, 137, 196, 190, 202, 201, 186, 205, 192, 190, 192, 196, 209, 192, 205, 186, 209, 202, 196, 190, 192, 186, 203, 199, 188, 212, 196, 201, 194, 186, 139, 139, 145, 87};
        _user_withName = [self StringFromFabData:value];
    }
    return _user_withName;
}

//: icon_receiver_voice_playing_009
- (NSString *)k_risingName {
    if (!_k_risingName) {
        Byte value[] = {31, 14, 3, 119, 113, 125, 124, 109, 128, 115, 113, 115, 119, 132, 115, 128, 109, 132, 125, 119, 113, 115, 109, 126, 122, 111, 135, 119, 124, 117, 109, 62, 62, 71, 51};
        _k_risingName = [self StringFromFabData:value];
    }
    return _k_risingName;
}

//: icon_voice_plus_b
- (NSString *)main_cooperationTitle {
    if (!_main_cooperationTitle) {
        Byte value[] = {17, 15, 3, 120, 114, 126, 125, 110, 133, 126, 120, 114, 116, 110, 127, 123, 132, 130, 110, 113, 236};
        _main_cooperationTitle = [self StringFromFabData:value];
    }
    return _main_cooperationTitle;
}

//: icon_receiver_voice_playing_002
- (NSString *)noti_seniorMessage {
    if (!_noti_seniorMessage) {
        Byte value[] = {31, 93, 5, 248, 208, 198, 192, 204, 203, 188, 207, 194, 192, 194, 198, 211, 194, 207, 188, 211, 204, 198, 192, 194, 188, 205, 201, 190, 214, 198, 203, 196, 188, 141, 141, 143, 165};
        _noti_seniorMessage = [self StringFromFabData:value];
    }
    return _noti_seniorMessage;
}

//: icon_receiver_voice_playing
- (NSString *)m_showKey {
    if (!_m_showKey) {
        Byte value[] = {27, 22, 8, 136, 172, 73, 129, 201, 127, 121, 133, 132, 117, 136, 123, 121, 123, 127, 140, 123, 136, 117, 140, 133, 127, 121, 123, 117, 134, 130, 119, 143, 127, 132, 125, 162};
        _m_showKey = [self StringFromFabData:value];
    }
    return _m_showKey;
}

//: icon_receiver_voice_playing_008
- (NSString *)dream_conversationMessage {
    if (!_dream_conversationMessage) {
        Byte value[] = {31, 7, 8, 95, 46, 178, 122, 28, 112, 106, 118, 117, 102, 121, 108, 106, 108, 112, 125, 108, 121, 102, 125, 118, 112, 106, 108, 102, 119, 115, 104, 128, 112, 117, 110, 102, 55, 55, 63, 79};
        _dream_conversationMessage = [self StringFromFabData:value];
    }
    return _dream_conversationMessage;
}

//: icon_receiver_voice_playing_005
- (NSString *)appEnemyUrl {
    if (!_appEnemyUrl) {
        Byte value[] = {31, 24, 6, 12, 160, 190, 129, 123, 135, 134, 119, 138, 125, 123, 125, 129, 142, 125, 138, 119, 142, 135, 129, 123, 125, 119, 136, 132, 121, 145, 129, 134, 127, 119, 72, 72, 77, 15};
        _appEnemyUrl = [self StringFromFabData:value];
    }
    return _appEnemyUrl;
}

//: icon_receiver_voice_playing_007
- (NSString *)user_viewMessage {
    if (!_user_viewMessage) {
        Byte value[] = {31, 54, 7, 53, 237, 211, 182, 159, 153, 165, 164, 149, 168, 155, 153, 155, 159, 172, 155, 168, 149, 172, 165, 159, 153, 155, 149, 166, 162, 151, 175, 159, 164, 157, 149, 102, 102, 109, 142};
        _user_viewMessage = [self StringFromFabData:value];
    }
    return _user_viewMessage;
}

//: icon_receiver_voice_playing_w
- (NSString *)appStrikeTitle {
    if (!_appStrikeTitle) {
        Byte value[] = {29, 38, 3, 143, 137, 149, 148, 133, 152, 139, 137, 139, 143, 156, 139, 152, 133, 156, 149, 143, 137, 139, 133, 150, 146, 135, 159, 143, 148, 141, 133, 157, 233};
        _appStrikeTitle = [self StringFromFabData:value];
    }
    return _appStrikeTitle;
}

//: icon_receiver_voice_playing_003
- (NSString *)show_programmingId {
    if (!_show_programmingId) {
        Byte value[] = {31, 61, 5, 207, 100, 166, 160, 172, 171, 156, 175, 162, 160, 162, 166, 179, 162, 175, 156, 179, 172, 166, 160, 162, 156, 173, 169, 158, 182, 166, 171, 164, 156, 109, 109, 112, 14};
        _show_programmingId = [self StringFromFabData:value];
    }
    return _show_programmingId;
}

//: icon_receiver_voice_playing_004
- (NSString *)m_showPath {
    if (!_m_showPath) {
        Byte value[] = {31, 81, 11, 75, 5, 186, 69, 69, 43, 130, 76, 186, 180, 192, 191, 176, 195, 182, 180, 182, 186, 199, 182, 195, 176, 199, 192, 186, 180, 182, 176, 193, 189, 178, 202, 186, 191, 184, 176, 129, 129, 133, 193};
        _m_showPath = [self StringFromFabData:value];
    }
    return _m_showPath;
}

//: icon_receiver_voice_playing_001
- (NSString *)appCanUrl {
    if (!_appCanUrl) {
        Byte value[] = {31, 95, 5, 116, 143, 200, 194, 206, 205, 190, 209, 196, 194, 196, 200, 213, 196, 209, 190, 213, 206, 200, 194, 196, 190, 207, 203, 192, 216, 200, 205, 198, 190, 143, 143, 144, 151};
        _appCanUrl = [self StringFromFabData:value];
    }
    return _appCanUrl;
}

//: icon_receiver_voice_playing_010
- (NSString *)dreamSizeContent {
    if (!_dreamSizeContent) {
        Byte value[] = {31, 76, 11, 253, 209, 195, 143, 121, 133, 16, 253, 181, 175, 187, 186, 171, 190, 177, 175, 177, 181, 194, 177, 190, 171, 194, 187, 181, 175, 177, 171, 188, 184, 173, 197, 181, 186, 179, 171, 124, 125, 124, 84};
        _dreamSizeContent = [self StringFromFabData:value];
    }
    return _dreamSizeContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionAudioCententView.m
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionAudioContentView.h"
#import "RowTingView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "MoreModel.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "FFFKitAudioCenter.h"
#import "BarCenter.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+Case.h"

//: @interface FFFSessionAudioContentView()<NIMMediaManagerDelegate>
@interface RowTingView()<NIMMediaManagerDelegate>

//: @property (nonatomic,strong) UIImageView *voiceImageView;
@property (nonatomic,strong) UIImageView *voiceImageView;
//: @property (nonatomic,strong) UIImageView *voiceImageViewleft;
@property (nonatomic,strong) UIImageView *voiceImageViewleft;

//: @property (nonatomic,strong) UIImageView *voicePlayView;
@property (nonatomic,strong) UIImageView *voicePlayView;
//: @property (nonatomic,strong) UIImageView *voicePlayViewleft;
@property (nonatomic,strong) UIImageView *voicePlayViewleft;

//: @property (nonatomic,strong) UILabel *durationLabel;
@property (nonatomic,strong) UILabel *durationLabel;

//: @end
@end

//: @implementation FFFSessionAudioContentView
@implementation RowTingView

//: -(instancetype)initSessionMessageContentView{
-(instancetype)initColorSession{
    //: self = [super initSessionMessageContentView];
    self = [super initColorSession];
    //: if (self) {
    if (self) {
        //: [self addVoiceView];
        [self push];
        //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
        [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (void)setPlaying:(BOOL)isPlaying
- (void)setGreen:(BOOL)isPlaying
{
    //: if (isPlaying) {
    if (isPlaying) {
        //: [self.voiceImageView startAnimating];
        [self.voiceImageView startAnimating];
        //: [self.voiceImageViewleft startAnimating];
        [self.voiceImageViewleft startAnimating];
        //: _voicePlayViewleft.image = [UIImage imageNamed:@"icon_voice_plus_b"];
        _voicePlayViewleft.image = [UIImage imageNamed:[FabData sharedInstance].main_cooperationTitle];
//        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_plus_w"];
        //: _voicePlayView.image = [UIImage imageNamed:@"icon_voice_plus_b"];
        _voicePlayView.image = [UIImage imageNamed:[FabData sharedInstance].main_cooperationTitle];
    //: }else{
    }else{
        //: [self.voiceImageView stopAnimating];
        [self.voiceImageView stopAnimating];
        //: [self.voiceImageViewleft stopAnimating];
        [self.voiceImageViewleft stopAnimating];
        //: _voicePlayViewleft.image = [UIImage imageNamed:@"icon_voice_play_b"];
        _voicePlayViewleft.image = [UIImage imageNamed:[FabData sharedInstance].app_commendationMsg];
//        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_play_w"];
        //: _voicePlayView.image = [UIImage imageNamed:@"icon_voice_play_b"];
        _voicePlayView.image = [UIImage imageNamed:[FabData sharedInstance].app_commendationMsg];
    }
}

//: - (void)addVoiceView{
- (void)push{
    //: _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    //: _audioBackgroundView.layer.cornerRadius = 16.f;
    _audioBackgroundView.layer.cornerRadius = 16.f;
    //: _audioBackgroundView.userInteractionEnabled = NO;
    _audioBackgroundView.userInteractionEnabled = NO;
    //: [self addSubview:_audioBackgroundView];
    [self addSubview:_audioBackgroundView];


    //: _voicePlayViewleft = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_voice_play_b"]];
    _voicePlayViewleft = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[FabData sharedInstance].app_commendationMsg]];
    //: [self addSubview:_voicePlayViewleft];
    [self addSubview:_voicePlayViewleft];
    //: _voicePlayViewleft.hidden = YES;
    _voicePlayViewleft.hidden = YES;
    //: _voicePlayView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_voice_play_b"]];
    _voicePlayView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[FabData sharedInstance].app_commendationMsg]];
    //: [self addSubview:_voicePlayView];
    [self addSubview:_voicePlayView];
    //: _voicePlayView.hidden = YES;
    _voicePlayView.hidden = YES;

    //: UIImage *image = [UIImage imageNamed:@"icon_receiver_voice_playing_w"];
    UIImage *image = [UIImage imageNamed:[FabData sharedInstance].appStrikeTitle];
    //: _voiceImageView = [[UIImageView alloc] initWithImage:image];
    _voiceImageView = [[UIImageView alloc] initWithImage:image];
    //: NSArray *animateNames = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005",@"icon_receiver_voice_playing_006",@"icon_receiver_voice_playing_007",@"icon_receiver_voice_playing_008",@"icon_receiver_voice_playing_009",@"icon_receiver_voice_playing_010"];
    NSArray *animateNames = @[[FabData sharedInstance].appCanUrl,[FabData sharedInstance].noti_seniorMessage,[FabData sharedInstance].show_programmingId,[FabData sharedInstance].m_showPath,[FabData sharedInstance].appEnemyUrl,[FabData sharedInstance].user_withName,[FabData sharedInstance].user_viewMessage,[FabData sharedInstance].dream_conversationMessage,[FabData sharedInstance].k_risingName,[FabData sharedInstance].dreamSizeContent];
    //: NSMutableArray * animationImages = [[NSMutableArray alloc] initWithCapacity:animateNames.count];
    NSMutableArray * animationImages = [[NSMutableArray alloc] initWithCapacity:animateNames.count];
    //: for (NSString * animateName in animateNames) {
    for (NSString * animateName in animateNames) {
        //: UIImage * animateImage = [UIImage imageNamed:animateName];
        UIImage * animateImage = [UIImage imageNamed:animateName];
        //: [animationImages addObject:animateImage];
        [animationImages addObject:animateImage];
    }
    //: _voiceImageView.animationImages = animationImages;
    _voiceImageView.animationImages = animationImages;
    //: _voiceImageView.animationDuration = 1.0;
    _voiceImageView.animationDuration = 1.0;
    //: [self addSubview:_voiceImageView];
    [self addSubview:_voiceImageView];
    //: _voiceImageView.hidden = YES;
    _voiceImageView.hidden = YES;

    //: _voiceImageViewleft = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_receiver_voice_playing"]];
    _voiceImageViewleft = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[FabData sharedInstance].m_showKey]];
    //: NSArray *animateNames2 = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005",@"icon_receiver_voice_playing_006",@"icon_receiver_voice_playing_007",@"icon_receiver_voice_playing_008",@"icon_receiver_voice_playing_009",@"icon_receiver_voice_playing_010"];
    NSArray *animateNames2 = @[[FabData sharedInstance].appCanUrl,[FabData sharedInstance].noti_seniorMessage,[FabData sharedInstance].show_programmingId,[FabData sharedInstance].m_showPath,[FabData sharedInstance].appEnemyUrl,[FabData sharedInstance].user_withName,[FabData sharedInstance].user_viewMessage,[FabData sharedInstance].dream_conversationMessage,[FabData sharedInstance].k_risingName,[FabData sharedInstance].dreamSizeContent];
    //: NSMutableArray *animationImages2 = [[NSMutableArray alloc] initWithCapacity:animateNames2.count];
    NSMutableArray *animationImages2 = [[NSMutableArray alloc] initWithCapacity:animateNames2.count];
    //: for (NSString *animateName2 in animateNames2) {
    for (NSString *animateName2 in animateNames2) {
        //: UIImage *animateImage2 = [UIImage imageNamed:animateName2];
        UIImage *animateImage2 = [UIImage imageNamed:animateName2];
        //: [animationImages2 addObject:animateImage2];
        [animationImages2 addObject:animateImage2];
    }
    //: _voiceImageViewleft.animationImages = animationImages2;
    _voiceImageViewleft.animationImages = animationImages2;
    //: _voiceImageViewleft.animationDuration = 1.0;
    _voiceImageViewleft.animationDuration = 1.0;
    //: [self addSubview:_voiceImageViewleft];
    [self addSubview:_voiceImageViewleft];
    //: _voiceImageViewleft.hidden = YES;
    _voiceImageViewleft.hidden = YES;

    //: _durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    //: _durationLabel.backgroundColor = [UIColor clearColor];
    _durationLabel.backgroundColor = [UIColor clearColor];
    //: [self addSubview:_durationLabel];
    [self addSubview:_durationLabel];

}

//: - (void)refresh:(FFFMessageModel *)data {
- (void)messagePress:(MoreModel *)data {
    //: [super refresh:data];
    [super messagePress:data];
    //: NIMAudioObject *object = self.model.message.messageObject;
    NIMAudioObject *object = self.model.message.messageObject;
    //: self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];
    self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];//四舍五入

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    GreenSetting *setting = [[Case pastTop].config tool:data.message];

    //: self.durationLabel.font = setting.font;
    self.durationLabel.font = setting.font;
    //: self.durationLabel.textColor = setting.textColor;
    self.durationLabel.textColor = setting.textColor;
    //: [self.durationLabel sizeToFit];
    [self.durationLabel sizeToFit];

    //: [self setPlaying:self.isPlaying];
    [self setGreen:self.shouldNet];
    //: [self refreshBackground:data];
    [self nameOfWords:data];
}

//: - (void)refreshBackground:(FFFMessageModel *)data
- (void)nameOfWords:(MoreModel *)data
{
    //: if (data.shouldShowLeft)
    if (data.shouldShowLeft)
    {
        //: _voiceImageViewleft.hidden = NO;
        _voiceImageViewleft.hidden = NO;
        //: _voiceImageView.hidden = YES;
        _voiceImageView.hidden = YES;
        //: _voicePlayViewleft.hidden = NO;
        _voicePlayViewleft.hidden = NO;
        //: _voicePlayView.hidden = YES;
        _voicePlayView.hidden = YES;
    }
    //: else
    else
    {
//        _voiceImageView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_w"];
        //: _voiceImageViewleft.hidden = YES;
        _voiceImageViewleft.hidden = YES;
        //: _voiceImageView.hidden = NO;
        _voiceImageView.hidden = NO;
        //: _voicePlayViewleft.hidden = YES;
        _voicePlayViewleft.hidden = YES;
        //: _voicePlayView.hidden = NO;
        _voicePlayView.hidden = NO;
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: switch (self.layoutStyle) {
    switch (self.layoutStyle) {
        //: case FFFSessionMessageContentViewLayoutLeft: {
        case FFFSessionMessageContentViewLayoutLeft: {
//            _voiceImageView.transform = CGAffineTransformIdentity;
//            self.voiceImageView.left = contentInsets.left * 2;
            //: self.voiceImageViewleft.left = contentInsets.left * 2;
            self.voiceImageViewleft.left = contentInsets.left * 2;
             //: _durationLabel.right = self.width - contentInsets.right * 2;
             _durationLabel.right = self.width - contentInsets.right * 2;
            //: break;
            break;
        }
        //: case FFFSessionMessageContentViewLayoutRight: {
        case FFFSessionMessageContentViewLayoutRight: {
//            _voiceImageView.transform = CGAffineTransformMakeRotation(M_PI);
            //: self.voiceImageView.right = self.width - contentInsets.right * 2;
            self.voiceImageView.right = self.width - contentInsets.right * 2;
            //: _durationLabel.left = contentInsets.left;
            _durationLabel.left = contentInsets.left;
            //: break;
            break;
        }
        //: case FFFSessionMessageContentViewLayoutAuto:
        case FFFSessionMessageContentViewLayoutAuto:
        //: default:
        default:
        {
            //: if (self.model.message.isOutgoingMsg) {
            if (self.model.message.isOutgoingMsg) {
//                _voiceImageView.transform = CGAffineTransformMakeRotation(M_PI);


                //: self.voicePlayView.left = contentInsets.left;
                self.voicePlayView.left = contentInsets.left;
                //: self.voiceImageView.left = self.voicePlayView.right+10;
                self.voiceImageView.left = self.voicePlayView.right+10;
                //: _durationLabel.left = self.voiceImageView.right+10;
                _durationLabel.left = self.voiceImageView.right+10;

            //: } else {
            } else {
//                _voiceImageView.transform = CGAffineTransformIdentity;
//               self.voiceImageView.left = contentInsets.left;

                //: self.voicePlayViewleft.left = contentInsets.left;
                self.voicePlayViewleft.left = contentInsets.left;
                //: self.voiceImageViewleft.left = self.voicePlayViewleft.right+10;
                self.voiceImageViewleft.left = self.voicePlayViewleft.right+10;
                //: _durationLabel.left = self.voiceImageViewleft.right+10;
                _durationLabel.left = self.voiceImageViewleft.right+10;
            }
            //: break;
            break;
        }
    }
    //: _voiceImageView.width = 62;
    _voiceImageView.width = 62;
    //: _voiceImageView.height = 18;
    _voiceImageView.height = 18;
    //: _voiceImageView.centerY = self.height * .5f;
    _voiceImageView.centerY = self.height * .5f;

    //: _voiceImageViewleft.width = 62;
    _voiceImageViewleft.width = 62;
    //: _voiceImageViewleft.height = 18;
    _voiceImageViewleft.height = 18;
    //: _voiceImageViewleft.centerY = self.height * .5f;
    _voiceImageViewleft.centerY = self.height * .5f;

    //: _voicePlayView.width = 16;
    _voicePlayView.width = 16;
    //: _voicePlayView.height = 16;
    _voicePlayView.height = 16;
    //: _voicePlayView.centerY = self.height * .5f;
    _voicePlayView.centerY = self.height * .5f;

    //: _voicePlayViewleft.width = 16;
    _voicePlayViewleft.width = 16;
    //: _voicePlayViewleft.height = 16;
    _voicePlayViewleft.height = 16;
    //: _voicePlayViewleft.centerY = self.height * .5f;
    _voicePlayViewleft.centerY = self.height * .5f;

    //: _durationLabel.centerY = _voiceImageView.centerY;
    _durationLabel.centerY = _voiceImageView.centerY;

    //: CGFloat backgroundWidth = 0;
    CGFloat backgroundWidth = 0;
    //: CGFloat backgroundLeft = 0;
    CGFloat backgroundLeft = 0;
    //: switch (self.layoutStyle) {
    switch (self.layoutStyle) {
        //: case FFFSessionMessageContentViewLayoutLeft:
        case FFFSessionMessageContentViewLayoutLeft:
            {
                //: backgroundWidth = self.width - contentInsets.left * .5f - 2;
                backgroundWidth = self.width - contentInsets.left * .5f - 2;
                //: backgroundLeft = contentInsets.left * .5f;
                backgroundLeft = contentInsets.left * .5f;
            }
            //: break;
            break;
        //: case FFFSessionMessageContentViewLayoutRight:
        case FFFSessionMessageContentViewLayoutRight:
            {
                //: backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                //: backgroundLeft = 2;
                backgroundLeft = 2;
            }
            //: break;
            break;
        //: default:
        default:
        {
            //: if (self.model.message.isOutgoingMsg) {
            if (self.model.message.isOutgoingMsg) {
                //: backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                //: backgroundLeft = 2;
                backgroundLeft = 2;
            //: } else {
            } else {
                //: backgroundWidth = self.width - contentInsets.left * .5f - 2;
                backgroundWidth = self.width - contentInsets.left * .5f - 2;
                //: backgroundLeft = contentInsets.left * .5f;
                backgroundLeft = contentInsets.left * .5f;
            }
            //: break;
            break;
        }
    }
    //: _audioBackgroundView.size = CGSizeMake(backgroundWidth,
    _audioBackgroundView.size = CGSizeMake(backgroundWidth,
                                               //: self.height - 4);
                                               self.height - 4);
    //: _audioBackgroundView.left = backgroundLeft;
    _audioBackgroundView.left = backgroundLeft;
    //: _audioBackgroundView.top = 2;
    _audioBackgroundView.top = 2;
}

//: -(void)onTouchUpInside:(id)sender
-(void)objects:(id)sender
{
    //: if ([self.model.message attachmentDownloadState]== NIMMessageAttachmentDownloadStateFailed
    if ([self.model.message attachmentDownloadState]== NIMMessageAttachmentDownloadStateFailed
        //: || [self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateNeedDownload) {
        || [self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateNeedDownload) {
        //: [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:self.model.message
        [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:self.model.message
                                                           //: error:nil];
                                                           error:nil];
        //: return;
        return;
    }
    //: if ([self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateDownloaded) {
    if ([self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateDownloaded) {

        //: if ([[NIMSDK sharedSDK].mediaManager isPlaying]) {
        if ([[NIMSDK sharedSDK].mediaManager isPlaying]) {
            //: [self stopPlayingUI];
            [self lineItem];
        }

        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        DirectionEvent *event = [[DirectionEvent alloc] init];
        //: event.eventName = FFFKitEventNameTapAudio;
        event.eventName = mainEventId;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: [self.delegate onCatchEvent:event];
        [self.delegate memberEvent:event];

    }
}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate

//: - (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
- (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
    //: if(filePath && !error) {
    if(filePath && !error) {
        //: if (self.isPlaying && [self.audioUIDelegate respondsToSelector:@selector(startPlayingAudioUI)]) {
        if (self.shouldNet && [self.audioUIDelegate respondsToSelector:@selector(changeShape)]) {
            //: [self.audioUIDelegate startPlayingAudioUI];
            [self.audioUIDelegate changeShape];
        }
    }
}

//: - (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
- (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
{
    //: [self stopPlayingUI];
    [self lineItem];
}

//: - (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: [self stopPlayingUI];
    [self lineItem];
}

//: #pragma mark - private methods
#pragma mark - private methods
//: - (void)stopPlayingUI
- (void)lineItem
{
    //: [self setPlaying:NO];
    [self setGreen:NO];
}

//: - (BOOL)isPlaying
- (BOOL)shouldNet
{
    //: BOOL play = [FFFKitAudioCenter instance].currentPlayingMessage == self.model.message; 
    BOOL play = [BarCenter disable].currentPlayingMessage == self.model.message; //对比是否是同一条消息，严格同一条，不能是相同ID，防止进了会话又进云端消息界面，导致同一个ID的云消息也在动画
    //: return play;
    return play;
}


//- (NSString *)convertToTimeStringWithTimeInterval:(NSTimeInterval)timeInterval{
//    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"HH:mm"];
//    NSString *dateStsring = [dateFormatter stringFromDate:date];
//    return dateStsring;
//}

//: @end
@end