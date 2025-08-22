
#import <Foundation/Foundation.h>

typedef struct {
    Byte solution;
    Byte *enjoin;
    unsigned int lineVirus;
} StructDismissData;

@interface DismissData : NSObject

+ (instancetype)sharedInstance;

//: lang
@property (nonatomic, copy) NSString *user_nextMsg;

//: #27303F
@property (nonatomic, copy) NSString *showDefensiveModeUrl;

//: #ffffff
@property (nonatomic, copy) NSString *k_hockIdent;

//: #F6F7FA
@property (nonatomic, copy) NSString *appForbidRedData;

@end

@implementation DismissData

+ (instancetype)sharedInstance {
    static DismissData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DismissDataToByte:(StructDismissData *)data {
    for (int i = 0; i < data->lineVirus; i++) {
        data->enjoin[i] ^= data->solution;
    }
    data->enjoin[data->lineVirus] = 0;
    return data->enjoin;
}

- (NSString *)StringFromDismissData:(StructDismissData *)data {
    return [NSString stringWithUTF8String:(char *)[self DismissDataToByte:data]];
}

//: #27303F
- (NSString *)showDefensiveModeUrl {
    if (!_showDefensiveModeUrl) {
        StructDismissData value = (StructDismissData){151, (Byte []){180, 165, 160, 164, 167, 164, 209, 113}, 7};
        _showDefensiveModeUrl = [self StringFromDismissData:&value];
    }
    return _showDefensiveModeUrl;
}

//: lang
- (NSString *)user_nextMsg {
    if (!_user_nextMsg) {
        StructDismissData value = (StructDismissData){151, (Byte []){251, 246, 249, 240, 184}, 4};
        _user_nextMsg = [self StringFromDismissData:&value];
    }
    return _user_nextMsg;
}

//: #F6F7FA
- (NSString *)appForbidRedData {
    if (!_appForbidRedData) {
        StructDismissData value = (StructDismissData){232, (Byte []){203, 174, 222, 174, 223, 174, 169, 211}, 7};
        _appForbidRedData = [self StringFromDismissData:&value];
    }
    return _appForbidRedData;
}

//: #ffffff
- (NSString *)k_hockIdent {
    if (!_k_hockIdent) {
        StructDismissData value = (StructDismissData){71, (Byte []){100, 33, 33, 33, 33, 33, 33, 223}, 7};
        _k_hockIdent = [self StringFromDismissData:&value];
    }
    return _k_hockIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  VersionView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/29.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESLanguageTableViewCell.h"
#import "VersionView.h"

//: @implementation NTESLanguageTableViewCell
@implementation VersionView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {

    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if ([self.reuseIdentifier isEqualToString:@"lang"]) {
    if ([self.reuseIdentifier isEqualToString:[DismissData sharedInstance].user_nextMsg]) {

        //: [self.contentView addSubview:self.countyImg];
        [self.contentView addSubview:self.countyImg];
        //: self.countyImg.frame = CGRectMake(20, 12, 32, 32);
        self.countyImg.frame = CGRectMake(20, 12, 32, 32);

        //: [self.contentView addSubview:self.labTitle];
        [self.contentView addSubview:self.labTitle];
        //: self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);
        self.labTitle.frame = CGRectMake(40+32, 0, [[UIScreen mainScreen] bounds].size.width-80, 56);

        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor status:[DismissData sharedInstance].k_hockIdent];
        //: self.layer.cornerRadius = 12;
        self.layer.cornerRadius = 12;
    }
    //: return self;
    return self;
}


//: - (UILabel *)labTitle {
- (UILabel *)labTitle {
    //: if (!_labTitle) {
    if (!_labTitle) {
        //: _labTitle = [[UILabel alloc] init];
        _labTitle = [[UILabel alloc] init];
        //: _labTitle.font = [UIFont systemFontOfSize:14.f];
        _labTitle.font = [UIFont systemFontOfSize:14.f];
        //: _labTitle.textColor = [UIColor colorWithHexString:@"#27303F"];
        _labTitle.textColor = [UIColor status:[DismissData sharedInstance].showDefensiveModeUrl];
        //: _labTitle.textAlignment = NSTextAlignmentLeft;
        _labTitle.textAlignment = NSTextAlignmentLeft;
    }
    //: return _labTitle;
    return _labTitle;
}

//: - (UIView *)lineView {
- (UIView *)lineView {
    //: if (!_lineView) {
    if (!_lineView) {
        //: _lineView = [[UIView alloc] init];
        _lineView = [[UIView alloc] init];
        //: _lineView.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
        _lineView.backgroundColor = [UIColor status:[DismissData sharedInstance].appForbidRedData];
    }
    //: return _lineView;
    return _lineView;
}

//: - (UIImageView *)countyImg
- (UIImageView *)countyImg
{
    //: if (!_countyImg) {
    if (!_countyImg) {
        //: _countyImg = [[UIImageView alloc] init];
        _countyImg = [[UIImageView alloc] init];
    }
    //: return _countyImg;
    return _countyImg;
}

//: @end
@end