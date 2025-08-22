
#import <Foundation/Foundation.h>

NSString *StringFromMidfieldData(Byte *data);


//: Complete_operation
Byte notiCellPath[] = {30, 18, 15, 11, 155, 160, 174, 130, 125, 133, 119, 82, 126, 124, 127, 123, 116, 131, 116, 110, 126, 127, 116, 129, 112, 131, 120, 126, 125, 91};

//: safe_arrow_next
Byte show_successId[] = {92, 15, 91, 10, 225, 123, 228, 224, 78, 198, 206, 188, 193, 192, 186, 188, 205, 205, 202, 210, 186, 201, 192, 211, 207, 116};

//: safe_success_step
Byte showLeadershipInmateVsId[] = {14, 17, 85, 6, 81, 90, 200, 182, 187, 186, 180, 200, 202, 184, 184, 186, 200, 200, 180, 200, 201, 186, 197, 54};

//: Vertify_login_password
Byte dreamOptionKey[] = {93, 22, 37, 8, 32, 100, 218, 97, 123, 138, 151, 153, 142, 139, 158, 132, 145, 148, 140, 142, 147, 132, 149, 134, 152, 152, 156, 148, 151, 137, 166};

//: #fffBusy
Byte userSemenMsg[] = {14, 7, 43, 5, 20, 78, 145, 145, 145, 145, 145, 145, 129};

//: Read_agree_agreement
Byte showDoingName[] = {14, 20, 96, 7, 14, 15, 255, 178, 197, 193, 196, 191, 193, 199, 210, 197, 197, 191, 193, 199, 210, 197, 197, 205, 197, 206, 212, 57};

//: NotificationLogout
Byte appNeighborhoodIdent[] = {18, 18, 47, 6, 89, 149, 125, 158, 163, 152, 149, 152, 146, 144, 163, 152, 158, 157, 123, 158, 150, 158, 164, 163, 208};

//: safe_success_tip
Byte notiViewRangeContent[] = {97, 16, 13, 11, 144, 128, 197, 80, 121, 245, 141, 128, 110, 115, 114, 108, 128, 130, 112, 112, 114, 128, 128, 108, 129, 118, 125, 198};

//: #02D8C9
Byte noti_explainMessage[] = {70, 7, 26, 4, 61, 74, 76, 94, 82, 93, 83, 80};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CleanView.m
//  Riverla
//
//  Created by Yan Wang on 2025/2/6.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONDeactivateAccountSuccessView.h"
#import "CleanView.h"

//: @interface ZMONDeactivateAccountSuccessView ()
@interface CleanView ()

//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;

//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIImageView *img;
@property (nonatomic,strong) UIImageView *img;

//: @property (nonatomic,strong) UIView *nextBox;
@property (nonatomic,strong) UIView *nextBox;

//: @end
@end

//: @implementation ZMONDeactivateAccountSuccessView
@implementation CleanView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initCanShould];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initCanShould{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-238)/2, [[UIScreen mainScreen] bounds].size.width-30, 238)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-238)/2, [[UIScreen mainScreen] bounds].size.width-30, 238)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];


    //: [_box addSubview:self.img];
    [_box addSubview:self.img];
    //: self.img.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-32)/2, 20, 32, 32);
    self.img.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-30-32)/2, 20, 32, 32);

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, self.img.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.titleLabel.frame = CGRectMake(0, self.img.bottom+15, [[UIScreen mainScreen] bounds].size.width-30, 20);

    //: [_box addSubview:self.nextBox];
    [_box addSubview:self.nextBox];
    //: self.nextBox.frame = CGRectMake(20, self.titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-70, 54);
    self.nextBox.frame = CGRectMake(20, self.titleLabel.bottom+20, [[UIScreen mainScreen] bounds].size.width-70, 54);



    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-70);
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-70);
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(20, 238-20-height, width, height);
    self.sureBtn.frame = CGRectMake(20, 238-20-height, width, height);

}

//: - (void)reloadWithNickname:(NSString *)nickname
- (void)crunch:(NSString *)nickname
{
    //: self.titleLabel.text = nickname;
    self.titleLabel.text = nickname;
}

//: - (void)updateTheNickname
- (void)exceptRecord
{

    //: [ZCHttpManager deleteUser:^(NSDictionary * _Nonnull configDict) {
    [TitleManageressManager show:^(NSDictionary * _Nonnull configDict) {
        //: [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
        [[[NIMSDK sharedSDK] loginManager] logout:^(NSError *error)
         {
            //: [[NSNotificationCenter defaultCenter] postNotificationName:@"NotificationLogout" object:nil];
            [[NSNotificationCenter defaultCenter] postNotificationName:StringFromMidfieldData(appNeighborhoodIdent) object:nil];
        //: }];
        }];
    //: }];
    }];


}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.textColor = [UIColor blackColor];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        _titleLabel.numberOfLines = 1;
//        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
//        _titleLabel.text = LangKey(@"deactivated_success");
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (UIImageView *)img
- (UIImageView *)img
{
    //: if(!_img){
    if(!_img){
        //: _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"safe_success_tip"]];
        _img = [[UIImageView alloc]initWithImage:[UIImage imageNamed:StringFromMidfieldData(notiViewRangeContent)]];
    }
    //: return _img;
    return _img;
}

//: - (UIView *)nextBox
- (UIView *)nextBox
{
    //: if(!_nextBox){
    if(!_nextBox){
        //: _nextBox = [[UIView alloc]init];
        _nextBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40)/3;
        //: UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, 54)];
        //: [_nextBox addSubview:view1];
        [_nextBox addSubview:view1];
        //: UIImageView *img1 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIImageView *img1 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: img1.image = [UIImage imageNamed:@"safe_success_step"];
        img1.image = [UIImage imageNamed:StringFromMidfieldData(showLeadershipInmateVsId)];
        //: [view1 addSubview:img1];
        [view1 addSubview:img1];


        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.bottom+4, width, 30)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, img1.bottom+4, width, 30)];
        //: labtitle1.font = [UIFont systemFontOfSize:11.f];
        labtitle1.font = [UIFont systemFontOfSize:11.f];
        //: labtitle1.textColor = [UIColor blackColor];
        labtitle1.textColor = [UIColor blackColor];
        //: labtitle1.text = [BusyLanguageManager getTextWithKey:@"Read_agree_agreement"];
        labtitle1.text = [SendName streetSmart:StringFromMidfieldData(showDoingName)];
        //: labtitle1.numberOfLines = 2;
        labtitle1.numberOfLines = 2;
        //: labtitle1.textAlignment = NSTextAlignmentCenter;
        labtitle1.textAlignment = NSTextAlignmentCenter;
        //: [view1 addSubview:labtitle1];
        [view1 addSubview:labtitle1];

        //: UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(width, 0, width, 54)];
        //: [_nextBox addSubview:view2];
        [_nextBox addSubview:view2];
        //: UIImageView *img2 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIImageView *img2 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: img2.image = [UIImage imageNamed:@"safe_success_step"];
        img2.image = [UIImage imageNamed:StringFromMidfieldData(showLeadershipInmateVsId)];
        //: [view2 addSubview:img2];
        [view2 addSubview:img2];
        //: UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, img2.bottom+4, width, 30)];
        UILabel *labtitle2 = [[UILabel alloc] initWithFrame:CGRectMake(0, img2.bottom+4, width, 30)];
        //: labtitle2.font = [UIFont systemFontOfSize:11.f];
        labtitle2.font = [UIFont systemFontOfSize:11.f];
        //: labtitle2.textColor = [UIColor blackColor];
        labtitle2.textColor = [UIColor blackColor];
        //: labtitle2.text = [BusyLanguageManager getTextWithKey:@"Vertify_login_password"];
        labtitle2.text = [SendName streetSmart:StringFromMidfieldData(dreamOptionKey)];
        //: labtitle2.numberOfLines = 2;
        labtitle2.numberOfLines = 2;
        //: labtitle2.textAlignment = NSTextAlignmentCenter;
        labtitle2.textAlignment = NSTextAlignmentCenter;
        //: [view2 addSubview:labtitle2];
        [view2 addSubview:labtitle2];

        //: UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        UIView *view3 = [[UIView alloc]initWithFrame:CGRectMake(width*2, 0, width, 54)];
        //: [_nextBox addSubview:view3];
        [_nextBox addSubview:view3];
        //: UIImageView *img3 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        UIImageView *img3 = [[UIImageView alloc]initWithFrame:CGRectMake((width-20)/2, 0, 20, 20)];
        //: img3.image = [UIImage imageNamed:@"safe_success_step"];
        img3.image = [UIImage imageNamed:StringFromMidfieldData(showLeadershipInmateVsId)];
        //: [view3 addSubview:img3];
        [view3 addSubview:img3];
        //: UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, img3.bottom+4, width, 30)];
        UILabel *labtitle3 = [[UILabel alloc] initWithFrame:CGRectMake(0, img3.bottom+4, width, 30)];
        //: labtitle3.font = [UIFont systemFontOfSize:11.f];
        labtitle3.font = [UIFont systemFontOfSize:11.f];
        //: labtitle3.textColor = [UIColor blackColor];
        labtitle3.textColor = [UIColor blackColor];
        //: labtitle3.text = [BusyLanguageManager getTextWithKey:@"Complete_operation"];
        labtitle3.text = [SendName streetSmart:StringFromMidfieldData(notiCellPath)];
        //: labtitle3.numberOfLines = 2;
        labtitle3.numberOfLines = 2;
        //: labtitle3.textAlignment = NSTextAlignmentCenter;
        labtitle3.textAlignment = NSTextAlignmentCenter;
        //: [view3 addSubview:labtitle3];
        [view3 addSubview:labtitle3];

        //: UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        UIImageView *arrow1 = [[UIImageView alloc]initWithFrame:CGRectMake(width-10, 4, 20, 12)];
        //: arrow1.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow1.image = [UIImage imageNamed:StringFromMidfieldData(show_successId)];
        //: [_nextBox addSubview:arrow1];
        [_nextBox addSubview:arrow1];

        //: UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        UIImageView *arrow2 = [[UIImageView alloc]initWithFrame:CGRectMake(width*2-10, 4, 20, 12)];
        //: arrow2.image = [UIImage imageNamed:@"safe_arrow_next"];
        arrow2.image = [UIImage imageNamed:StringFromMidfieldData(show_successId)];
        //: [_nextBox addSubview:arrow2];
        [_nextBox addSubview:arrow2];
    }
    //: return _nextBox;
    return _nextBox;
}


//- (UIButton *)closeBtn {
//    if (!_closeBtn) {
//        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
//        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_closeBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
//        [_closeBtn setTitle:LangKey(@"contact_tag_fragment_cancel") forState:UIControlStateNormal];
//        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//        _closeBtn.layer.borderWidth = 0.5;
//        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
//        _closeBtn.layer.cornerRadius = 10;
//        _closeBtn.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _closeBtn.layer.shadowOffset = CGSizeMake(0,3);
//        _closeBtn.layer.shadowOpacity = 1;
//        _closeBtn.layer.shadowRadius = 0;
//    }
//    return _closeBtn;
//}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(updateTheNickname) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(exceptRecord) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor colorWithHexString:@"#fffBusy"] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor status:StringFromMidfieldData(userSemenMsg)] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:@"OK" forState:UIControlStateNormal];
        [_sureBtn setTitle:@"OK" forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#02D8C9"];
        _sureBtn.backgroundColor = [UIColor status:StringFromMidfieldData(noti_explainMessage)];
//        _sureBtn.layer.borderWidth = 0.5;
//        _sureBtn.layer.borderColor = [UIColor colorWithRed:255/255.0 green:72/255.0 blue:61/255.0 alpha:1].CGColor;
        //: _sureBtn.layer.cornerRadius = 10;
        _sureBtn.layer.cornerRadius = 10;
        //: _sureBtn.layer.shadowColor = [UIColor colorWithHexString:@"#02D8C9"].CGColor;
        _sureBtn.layer.shadowColor = [UIColor status:StringFromMidfieldData(noti_explainMessage)].CGColor;
        //: _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        _sureBtn.layer.shadowOffset = CGSizeMake(0,3);
        //: _sureBtn.layer.shadowOpacity = 1;
        _sureBtn.layer.shadowOpacity = 1;
        //: _sureBtn.layer.shadowRadius = 0;
        _sureBtn.layer.shadowRadius = 0;

    }
    //: return _sureBtn;
    return _sureBtn;
}



//: - (void)animationClose
- (void)tingShould
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)withShow
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: @end
@end

Byte * MidfieldDataToCache(Byte *data) {
    int selectName = data[0];
    int regarding = data[1];
    Byte television = data[2];
    int fullText = data[3];
    if (!selectName) return data + fullText;
    for (int i = fullText; i < fullText + regarding; i++) {
        int value = data[i] - television;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[fullText + regarding] = 0;
    return data + fullText;
}

NSString *StringFromMidfieldData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)MidfieldDataToCache(data)];
}
