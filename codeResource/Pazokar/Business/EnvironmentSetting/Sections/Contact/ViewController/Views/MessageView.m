
#import <Foundation/Foundation.h>
typedef struct {
    Byte pointOfDeparture;
    Byte *lineChild;
    unsigned int cellCorner;
    Byte showTitle;
	int vertical;
} WithData;

NSString *StringFromWithData(WithData *data);


//: qrcode_activity_title
WithData dream_voiceIdent = (WithData){28, (Byte []){109, 110, 127, 115, 120, 121, 67, 125, 127, 104, 117, 106, 117, 104, 101, 67, 104, 117, 104, 112, 121, 211}, 21, 161, 254};

//: activity_qrcode_scan_me
WithData kNameText = (WithData){165, (Byte []){196, 198, 209, 204, 211, 204, 209, 220, 250, 212, 215, 198, 202, 193, 192, 250, 214, 198, 196, 203, 250, 200, 192, 167}, 23, 249, 119};

//: wc_scan_mine_qrcode
WithData user_controlMsg = (WithData){201, (Byte []){190, 170, 150, 186, 170, 168, 167, 150, 164, 160, 167, 172, 150, 184, 187, 170, 166, 173, 172, 244}, 19, 151, 137};

//: wc_scan_torch
WithData k_showId = (WithData){146, (Byte []){229, 241, 205, 225, 241, 243, 252, 205, 230, 253, 224, 241, 250, 115}, 13, 161, 118};

//: wc_scan_album
WithData dream_nextMessage = (WithData){157, (Byte []){234, 254, 194, 238, 254, 252, 243, 194, 252, 241, 255, 232, 240, 212}, 13, 211, 49};

//: wc_scan_torch_hl
WithData appCellData = (WithData){229, (Byte []){146, 134, 186, 150, 134, 132, 139, 186, 145, 138, 151, 134, 141, 186, 141, 137, 165}, 16, 221, 121};

//: message_send_album
WithData user_nameData = (WithData){75, (Byte []){38, 46, 56, 56, 42, 44, 46, 20, 56, 46, 37, 47, 20, 42, 39, 41, 62, 38, 142}, 18, 202, 95};

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageView.m
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ZMONScanToolBar.h"
#import "MessageView.h"
//: #import "SGQRCode.h"
#import "SGQRCode.h"

//: @interface ZMONScanToolBar ()
@interface MessageView ()
//: @property (nonatomic, strong) UIButton *torchBtn;
@property (nonatomic, strong) UIButton *torchBtn;
//: @property (nonatomic, strong) UILabel *tipsLab;
@property (nonatomic, strong) UILabel *tipsLab;
//: @property (nonatomic, strong) UIImageView *qrcodeImgView;
@property (nonatomic, strong) UIImageView *qrcodeImgView;
//: @property (nonatomic, strong) UILabel *qrcodeLab;
@property (nonatomic, strong) UILabel *qrcodeLab;
//: @property (nonatomic, strong) UIImageView *albumImgView;
@property (nonatomic, strong) UIImageView *albumImgView;
//: @property (nonatomic, strong) UILabel *albumLab;
@property (nonatomic, strong) UILabel *albumLab;
//: @end
@end

//: @implementation ZMONScanToolBar
@implementation MessageView

//: - (instancetype)initWithFrame:(CGRect)frame {
- (instancetype)initWithFrame:(CGRect)frame {
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {

        //: [self addSubview:self.torchBtn];
        [self addSubview:self.torchBtn];

        //: [self addSubview:self.tipsLab];
        [self addSubview:self.tipsLab];

        //: [self addSubview:self.qrcodeImgView];
        [self addSubview:self.qrcodeImgView];

        //: [self addSubview:self.qrcodeLab];
        [self addSubview:self.qrcodeLab];

        //: [self addSubview:self.albumImgView];
        [self addSubview:self.albumImgView];

        //: [self addSubview:self.albumLab];
        [self addSubview:self.albumLab];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];

    //: CGFloat tBtn_w = 50;
    CGFloat tBtn_w = 50;
    //: CGFloat tBtn_h = 70;
    CGFloat tBtn_h = 70;
    //: CGFloat tBtn_x = 0.5 * (self.frame.size.width - tBtn_w);
    CGFloat tBtn_x = 0.5 * (self.frame.size.width - tBtn_w);
    //: CGFloat tBtn_y = 0;
    CGFloat tBtn_y = 0;
    //: self.torchBtn.frame = CGRectMake(tBtn_x, tBtn_y, tBtn_w, tBtn_h);
    self.torchBtn.frame = CGRectMake(tBtn_x, tBtn_y, tBtn_w, tBtn_h);

    //: CGFloat tipsLab_w = self.frame.size.width;
    CGFloat tipsLab_w = self.frame.size.width;
    //: CGFloat tipsLab_h = 15;
    CGFloat tipsLab_h = 15;
    //: CGFloat tipsLab_x = 0;
    CGFloat tipsLab_x = 0;
    //: CGFloat tipsLab_y = CGRectGetMaxY(self.torchBtn.frame) + 10;
    CGFloat tipsLab_y = CGRectGetMaxY(self.torchBtn.frame) + 10;
    //: self.tipsLab.frame = CGRectMake(tipsLab_x, tipsLab_y, tipsLab_w, tipsLab_h);
    self.tipsLab.frame = CGRectMake(tipsLab_x, tipsLab_y, tipsLab_w, tipsLab_h);

    //: CGFloat qrLab_w = 150;
    CGFloat qrLab_w = 150;
    //: CGFloat qrLab_h = 12;
    CGFloat qrLab_h = 12;
    //: CGFloat qrLab_x = 0;
    CGFloat qrLab_x = 0;
    //: CGFloat qrLab_y = self.frame.size.height - qrLab_h - 20;
    CGFloat qrLab_y = self.frame.size.height - qrLab_h - 20;
    //: self.qrcodeLab.frame = CGRectMake(qrLab_x, qrLab_y, qrLab_w, qrLab_h);
    self.qrcodeLab.frame = CGRectMake(qrLab_x, qrLab_y, qrLab_w, qrLab_h);

    //: CGFloat qrImgView_w = 50;
    CGFloat qrImgView_w = 50;
    //: CGFloat qrImgView_h = 50;
    CGFloat qrImgView_h = 50;
    //: CGFloat qrImgView_x = 0.5 * (qrLab_w - qrImgView_w);
    CGFloat qrImgView_x = 0.5 * (qrLab_w - qrImgView_w);
    //: CGFloat qrImgView_y = CGRectGetMinY(self.qrcodeLab.frame) - qrImgView_h - 9;
    CGFloat qrImgView_y = CGRectGetMinY(self.qrcodeLab.frame) - qrImgView_h - 9;
    //: self.qrcodeImgView.frame = CGRectMake(qrImgView_x, qrImgView_y, qrImgView_w, qrImgView_h);
    self.qrcodeImgView.frame = CGRectMake(qrImgView_x, qrImgView_y, qrImgView_w, qrImgView_h);

    //: CGFloat alLab_w = qrLab_w;
    CGFloat alLab_w = qrLab_w;
    //: CGFloat alLab_h = qrLab_h;
    CGFloat alLab_h = qrLab_h;
    //: CGFloat alLab_x = self.frame.size.width - alLab_w;
    CGFloat alLab_x = self.frame.size.width - alLab_w;
    //: CGFloat alLab_y = qrLab_y;
    CGFloat alLab_y = qrLab_y;
    //: self.albumLab.frame = CGRectMake(alLab_x, alLab_y, alLab_w, alLab_h);
    self.albumLab.frame = CGRectMake(alLab_x, alLab_y, alLab_w, alLab_h);

    //: CGFloat alImgView_w = qrImgView_w;
    CGFloat alImgView_w = qrImgView_w;
    //: CGFloat alImgView_h = qrImgView_h;
    CGFloat alImgView_h = qrImgView_h;
    //: CGFloat alImgView_x = self.frame.size.width - alImgView_w - 0.5 * (qrLab_w - alImgView_w);
    CGFloat alImgView_x = self.frame.size.width - alImgView_w - 0.5 * (qrLab_w - alImgView_w);
    //: CGFloat alImgView_y = qrImgView_y;
    CGFloat alImgView_y = qrImgView_y;
    //: self.albumImgView.frame = CGRectMake(alImgView_x, alImgView_y, alImgView_w, alImgView_h);
    self.albumImgView.frame = CGRectMake(alImgView_x, alImgView_y, alImgView_w, alImgView_h);

    //: self.qrcodeImgView.layer.cornerRadius = 0.5 * qrImgView_w;
    self.qrcodeImgView.layer.cornerRadius = 0.5 * qrImgView_w;
    //: self.albumImgView.layer.cornerRadius = 0.5 * qrImgView_w;
    self.albumImgView.layer.cornerRadius = 0.5 * qrImgView_w;
}

//: - (UIButton *)torchBtn {
- (UIButton *)torchBtn {
    //: if (!_torchBtn) {
    if (!_torchBtn) {
        //: _torchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _torchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_torchBtn setBackgroundImage:[UIImage imageNamed:@"wc_scan_torch"] forState:(UIControlStateNormal)];
        [_torchBtn setBackgroundImage:[UIImage imageNamed:StringFromWithData(&k_showId)] forState:(UIControlStateNormal)];
        //: [_torchBtn addTarget:self action:@selector(torchBtn_action:) forControlEvents:(UIControlEventTouchUpInside)];
        [_torchBtn addTarget:self action:@selector(origining:) forControlEvents:(UIControlEventTouchUpInside)];
        //: _torchBtn.hidden = YES;
        _torchBtn.hidden = YES;
    }
    //: return _torchBtn;
    return _torchBtn;
}

//: - (void)torchBtn_action:(UIButton *)btn {
- (void)origining:(UIButton *)btn {
    //: if (btn.selected) {
    if (btn.selected) {
        //: btn.selected = NO;
        btn.selected = NO;
        //: [btn setBackgroundImage:[UIImage imageNamed:@"wc_scan_torch"] forState:(UIControlStateNormal)];
        [btn setBackgroundImage:[UIImage imageNamed:StringFromWithData(&k_showId)] forState:(UIControlStateNormal)];
        //: [SGTorch turnOffTorch];
        [DataTorch show];
    //: } else {
    } else {
        //: btn.selected = YES;
        btn.selected = YES;
        //: [btn setBackgroundImage:[UIImage imageNamed:@"wc_scan_torch_hl"] forState:(UIControlStateNormal)];
        [btn setBackgroundImage:[UIImage imageNamed:StringFromWithData(&appCellData)] forState:(UIControlStateNormal)];
        //: [SGTorch turnOnTorch];
        [DataTorch swingAroundInput];
    }
}

//: - (UILabel *)tipsLab {
- (UILabel *)tipsLab {
    //: if (!_tipsLab) {
    if (!_tipsLab) {
        //: _tipsLab = [[UILabel alloc] init];
        _tipsLab = [[UILabel alloc] init];
        //: _tipsLab.text = [BusyLanguageManager getTextWithKey:@"activity_qrcode_scan_me"];
        _tipsLab.text = [SendName streetSmart:StringFromWithData(&kNameText)];
//        _tipsLab.text = @"将二维码放入扫面框内";
        //: _tipsLab.textAlignment = NSTextAlignmentCenter;
        _tipsLab.textAlignment = NSTextAlignmentCenter;
        //: _tipsLab.textColor = [UIColor whiteColor];
        _tipsLab.textColor = [UIColor whiteColor];
        //: _tipsLab.font = [UIFont systemFontOfSize:17];
        _tipsLab.font = [UIFont systemFontOfSize:17];
    }
    //: return _tipsLab;
    return _tipsLab;
}

//: - (UIImageView *)qrcodeImgView {
- (UIImageView *)qrcodeImgView {
    //: if (!_qrcodeImgView) {
    if (!_qrcodeImgView) {
        //: _qrcodeImgView = [[UIImageView alloc] init];
        _qrcodeImgView = [[UIImageView alloc] init];
        //: _qrcodeImgView.userInteractionEnabled = YES;
        _qrcodeImgView.userInteractionEnabled = YES;
        //: _qrcodeImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        _qrcodeImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: _qrcodeImgView.image = [UIImage imageNamed:@"wc_scan_mine_qrcode"];
        _qrcodeImgView.image = [UIImage imageNamed:StringFromWithData(&user_controlMsg)];
    }
    //: return _qrcodeImgView;
    return _qrcodeImgView;
}

//: - (UILabel *)qrcodeLab {
- (UILabel *)qrcodeLab {
    //: if (!_qrcodeLab) {
    if (!_qrcodeLab) {
        //: _qrcodeLab = [[UILabel alloc] init];
        _qrcodeLab = [[UILabel alloc] init];
        //: _qrcodeLab.text = [BusyLanguageManager getTextWithKey:@"qrcode_activity_title"];
        _qrcodeLab.text = [SendName streetSmart:StringFromWithData(&dream_voiceIdent)];
        //: _qrcodeLab.textAlignment = NSTextAlignmentCenter;
        _qrcodeLab.textAlignment = NSTextAlignmentCenter;
        //: _qrcodeLab.textColor = [UIColor whiteColor];
        _qrcodeLab.textColor = [UIColor whiteColor];
        //: _qrcodeLab.font = [UIFont systemFontOfSize:13];
        _qrcodeLab.font = [UIFont systemFontOfSize:13];
    }
    //: return _qrcodeLab;
    return _qrcodeLab;
}

//: - (UIImageView *)albumImgView {
- (UIImageView *)albumImgView {
    //: if (!_albumImgView) {
    if (!_albumImgView) {
        //: _albumImgView = [[UIImageView alloc] init];
        _albumImgView = [[UIImageView alloc] init];
        //: _albumImgView.userInteractionEnabled = YES;
        _albumImgView.userInteractionEnabled = YES;
        //: _albumImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        _albumImgView.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: _albumImgView.image = [UIImage imageNamed:@"wc_scan_album"];
        _albumImgView.image = [UIImage imageNamed:StringFromWithData(&dream_nextMessage)];
    }
    //: return _albumImgView;
    return _albumImgView;
}

//: - (UILabel *)albumLab {
- (UILabel *)albumLab {
    //: if (!_albumLab) {
    if (!_albumLab) {
        //: _albumLab = [[UILabel alloc] init];
        _albumLab = [[UILabel alloc] init];
        //: _albumLab.text = [BusyLanguageManager getTextWithKey:@"message_send_album"];
        _albumLab.text = [SendName streetSmart:StringFromWithData(&user_nameData)];
        //: _albumLab.textAlignment = NSTextAlignmentCenter;
        _albumLab.textAlignment = NSTextAlignmentCenter;
        //: _albumLab.textColor = [UIColor whiteColor];
        _albumLab.textColor = [UIColor whiteColor];
        //: _albumLab.font = [UIFont systemFontOfSize:13];
        _albumLab.font = [UIFont systemFontOfSize:13];
    }
    //: return _albumLab;
    return _albumLab;
}

//: - (void)showTorch {
- (void)show {
    //: self.torchBtn.hidden = NO;
    self.torchBtn.hidden = NO;
    //: self.tipsLab.hidden = YES;
    self.tipsLab.hidden = YES;
}
//: - (void)dismissTorch {
- (void)dateName {
    //: if (!self.torchBtn.isSelected) {
    if (!self.torchBtn.isSelected) {
        //: self.torchBtn.hidden = YES;
        self.torchBtn.hidden = YES;
        //: self.tipsLab.hidden = NO;
        self.tipsLab.hidden = NO;
    }
}

//: - (void)addQRCodeTarget:(id)aTarget action:(SEL)aAction {
- (void)success:(id)aTarget arrayValue:(SEL)aAction {
    //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    //: [self.qrcodeImgView addGestureRecognizer:tap];
    [self.qrcodeImgView addGestureRecognizer:tap];
}
//: - (void)addAlbumTarget:(id)aTarget action:(SEL)aAction {
- (void)pointOfReferenceAction:(id)aTarget elect:(SEL)aAction {
    //: UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:aTarget action:aAction];
    //: [self.albumImgView addGestureRecognizer:tap];
    [self.albumImgView addGestureRecognizer:tap];
}

//: @end
@end

Byte *WithDataToByte(WithData *data) {
    if (data->showTitle < 107) return data->lineChild;
    for (int i = 0; i < data->cellCorner; i++) {
        data->lineChild[i] ^= data->pointOfDeparture;
    }
    data->lineChild[data->cellCorner] = 0;
    data->showTitle = 4;
	if (data->cellCorner >= 1) {
		data->vertical = data->lineChild[0];
	}
    return data->lineChild;
}

NSString *StringFromWithData(WithData *data) {
    return [NSString stringWithUTF8String:(char *)WithDataToByte(data)];
}
