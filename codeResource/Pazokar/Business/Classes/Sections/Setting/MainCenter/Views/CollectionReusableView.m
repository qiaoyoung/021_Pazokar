
#import <Foundation/Foundation.h>

NSString *StringFromDismissCellData(Byte *data);        


//: 中东小王子
Byte noti_imageContent[] = {11, 15, 95, 12, 141, 250, 226, 78, 214, 124, 119, 209, 133, 89, 78, 133, 89, 61, 134, 81, 48, 136, 47, 44, 134, 78, 49, 168};

//: #333333
Byte show_teamData[] = {98, 7, 11, 12, 91, 214, 18, 30, 11, 255, 194, 137, 24, 40, 40, 40, 40, 40, 40, 96};

//: login_logo
Byte dream_toolStr[] = {31, 10, 94, 4, 14, 17, 9, 11, 16, 1, 14, 17, 9, 17, 179};

//: 来一个摇滚表演
Byte kShouldValue[] = {48, 21, 32, 11, 86, 223, 194, 231, 100, 52, 67, 198, 125, 133, 196, 152, 96, 196, 152, 138, 198, 113, 103, 198, 155, 122, 200, 129, 136, 198, 156, 116, 31};

//: #5D5F66
Byte kPosseStr[] = {83, 7, 57, 10, 109, 194, 207, 41, 51, 163, 234, 252, 11, 252, 13, 253, 253, 23};

//: login_bg
Byte dreamClickMsg[] = {58, 8, 1, 8, 81, 62, 34, 113, 107, 110, 102, 104, 109, 94, 97, 102, 235};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CollectionReusableView.m
//  NIM
//
//  Created by Yan Wang on 2024/6/26.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESVideolistCollectionViewCell.h"
#import "CollectionReusableView.h"
//: #import "UIView+NTES.h"
#import "UIView+Date.h"

//: @implementation NTESVideolistCollectionViewCell
@implementation CollectionReusableView


//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self streetwise];
    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)streetwise
{
    //: CGFloat spacing = 15;
    CGFloat spacing = 15;//行、列 间距
    //: int totalloc = 2;
    int totalloc = 2;//列数
    //: CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;
    CGFloat appvieww = ([[UIScreen mainScreen] bounds].size.width - spacing*3)/totalloc;

    //: _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    _picImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, appvieww, appvieww*1.3)];
    //: _picImg.image = [UIImage imageNamed:@"login_bg"];
    _picImg.image = [UIImage imageNamed:StringFromDismissCellData(dreamClickMsg)];
    //: [self.contentView addSubview:_picImg];
    [self.contentView addSubview:_picImg];

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, _picImg.bottom+12, appvieww, 15)];
    //: _labtitle.font = [UIFont systemFontOfSize:12.f];
    _labtitle.font = [UIFont systemFontOfSize:12.f];
    //: _labtitle.textColor = [UIColor colorWithHexString:@"#333333"];
    _labtitle.textColor = [UIColor status:StringFromDismissCellData(show_teamData)];
    //: _labtitle.text = @"来一个摇滚表演";
    _labtitle.text = StringFromDismissCellData(kShouldValue);
    //: [self.contentView addSubview:_labtitle];
    [self.contentView addSubview:_labtitle];

    //: _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    _headImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, _labtitle.bottom+5, 16, 16)];
    //: _headImg.image = [UIImage imageNamed:@"login_logo"];
    _headImg.image = [UIImage imageNamed:StringFromDismissCellData(dream_toolStr)];
    //: [self.contentView addSubview:_headImg];
    [self.contentView addSubview:_headImg];

    //: _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    _labname = [[UILabel alloc]initWithFrame:CGRectMake(_headImg.right+5, _labtitle.bottom+5, appvieww, 16)];
    //: _labname.font = [UIFont systemFontOfSize:11.f];
    _labname.font = [UIFont systemFontOfSize:11.f];
    //: _labname.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    _labname.textColor = [UIColor status:StringFromDismissCellData(kPosseStr)];
    //: _labname.text = @"中东小王子";
    _labname.text = StringFromDismissCellData(noti_imageContent);
    //: [self.contentView addSubview:_labname];
    [self.contentView addSubview:_labname];

}

//: @end
@end

Byte * DismissCellDataToCache(Byte *data) {
    int overseePosse = data[0];
    int hock = data[1];
    Byte thwarted = data[2];
    int disappointed = data[3];
    if (!overseePosse) return data + disappointed;
    for (int i = disappointed; i < disappointed + hock; i++) {
        int value = data[i] + thwarted;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[disappointed + hock] = 0;
    return data + disappointed;
}

NSString *StringFromDismissCellData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)DismissCellDataToCache(data)];
}
