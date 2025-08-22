
#import <Foundation/Foundation.h>

NSString *StringFromTextData(Byte *data);        


//: contact_user_default_header
Byte userPinIdent[] = {54, 27, 98, 12, 134, 139, 65, 85, 234, 176, 142, 127, 1, 13, 12, 18, 255, 1, 18, 253, 19, 17, 3, 16, 253, 2, 3, 4, 255, 19, 10, 18, 253, 6, 3, 255, 2, 3, 16, 212};

//: ic_add_friend
Byte dream_cellValue[] = {85, 13, 24, 5, 210, 81, 75, 71, 73, 76, 76, 71, 78, 90, 81, 77, 86, 76, 151};

//: #FAF8FD
Byte kBarMinId[] = {30, 7, 31, 14, 62, 255, 134, 112, 42, 40, 228, 81, 16, 57, 4, 39, 34, 39, 25, 39, 37, 239};

//: nickname
Byte k_bottomName[] = {70, 8, 11, 12, 236, 42, 212, 223, 117, 174, 119, 246, 99, 94, 88, 96, 99, 86, 98, 90, 250};

//: avatar
Byte app_successStr[] = {49, 6, 78, 9, 134, 128, 72, 16, 57, 19, 40, 19, 38, 19, 36, 82};

//: Tamma Kirtner
Byte show_contentName[] = {21, 13, 24, 13, 192, 108, 142, 89, 139, 213, 98, 165, 61, 60, 73, 85, 85, 73, 8, 51, 81, 90, 92, 86, 77, 90, 54};

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameView.m
//  Riverla
//
//  Created by mac on 2025/4/7.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "RecommendfriendTableViewCell.h"
#import "NameView.h"

//: @implementation RecommendfriendTableViewCell
@implementation NameView

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
        self.backgroundColor = [UIColor status:StringFromTextData(kBarMinId)];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;

        //: [self initSubviews];
        [self initInfoExtra];
    }
    //: return self;
    return self;
}

//: - (void)initSubviews
- (void)initInfoExtra
{
    //: [self.contentView addSubview:self.avaterImg];
    [self.contentView addSubview:self.avaterImg];
    //: self.avaterImg.frame = CGRectMake(15, 12, 48, 48);
    self.avaterImg.frame = CGRectMake(15, 12, 48, 48);

    //: [self.contentView addSubview:self.labName];
    [self.contentView addSubview:self.labName];
    //: self.labName.frame = CGRectMake(self.avaterImg.right+12, 12, [[UIScreen mainScreen] bounds].size.width-100, 48);
    self.labName.frame = CGRectMake(self.avaterImg.right+12, 12, [[UIScreen mainScreen] bounds].size.width-100, 48);

    //: [self.contentView addSubview:self.btnAdd];
    [self.contentView addSubview:self.btnAdd];
    //: self.btnAdd.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80, 20, 32, 32);
    self.btnAdd.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-80, 20, 32, 32);
}

//: - (void)refreshWithModel:(NSDictionary *)userItem
- (void)tagStyle:(NSDictionary *)userItem
{
    //: self.userId = [userItem newStringValueForKey:@"id"];
    self.userId = [userItem tag:@"id"];
    //: NSString *avatar = [userItem newStringValueForKey:@"avatar"];
    NSString *avatar = [userItem tag:StringFromTextData(app_successStr)];
    //: NSString *nickname = [userItem newStringValueForKey:@"nickname"];
    NSString *nickname = [userItem tag:StringFromTextData(k_bottomName)];

    //: [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    [self.avaterImg sd_setImageWithURL:[NSURL URLWithString:avatar]];
    //: self.labName.text = nickname;
    self.labName.text = nickname;

}

//: - (UILabel *)labName {
- (UILabel *)labName {
    //: if (!_labName) {
    if (!_labName) {
        //: _labName = [[UILabel alloc] init];
        _labName = [[UILabel alloc] init];
        //: _labName.font = [UIFont systemFontOfSize:16.f];
        _labName.font = [UIFont systemFontOfSize:16.f];
        //: _labName.textColor = [UIColor blackColor];
        _labName.textColor = [UIColor blackColor];
        //: _labName.textAlignment = NSTextAlignmentLeft;
        _labName.textAlignment = NSTextAlignmentLeft;
        //: _labName.text = @"Tamma Kirtner";
        _labName.text = StringFromTextData(show_contentName);
    }
    //: return _labName;
    return _labName;
}

//: - (UIImageView *)avaterImg
- (UIImageView *)avaterImg
{
    //: if (!_avaterImg) {
    if (!_avaterImg) {
        //: _avaterImg = [[UIImageView alloc] init];
        _avaterImg = [[UIImageView alloc] init];
        //: _avaterImg.layer.cornerRadius = 24;
        _avaterImg.layer.cornerRadius = 24;
        //: _avaterImg.layer.masksToBounds = YES;
        _avaterImg.layer.masksToBounds = YES;
        //: _avaterImg.image = [UIImage imageNamed:@"contact_user_default_header"];
        _avaterImg.image = [UIImage imageNamed:StringFromTextData(userPinIdent)];
    }
    //: return _avaterImg;
    return _avaterImg;
}

//: - (UIButton *)btnAdd
- (UIButton *)btnAdd
{
    //: if (!_btnAdd) {
    if (!_btnAdd) {
        //: _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnAdd = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_btnAdd addTarget:self action:@selector(handleAdd) forControlEvents:UIControlEventTouchUpInside];
        [_btnAdd addTarget:self action:@selector(coordinateBackground) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnAdd setImage:[UIImage imageNamed:@"ic_add_friend"] forState:UIControlStateNormal];
        [_btnAdd setImage:[UIImage imageNamed:StringFromTextData(dream_cellValue)] forState:UIControlStateNormal];
    }
    //: return _btnAdd;
    return _btnAdd;
}

//: - (void)handleAdd{
- (void)coordinateBackground{
    //: if ([self.delegate respondsToSelector:@selector(didTouchAdddButton:)]) {
    if ([self.delegate respondsToSelector:@selector(fastening:)]) {
        //: [self.delegate didTouchAdddButton:self.userId];
        [self.delegate fastening:self.userId];
    }
}

//: @end
@end

Byte * TextDataToCache(Byte *data) {
    int textSource = data[0];
    int offCell = data[1];
    Byte switchense = data[2];
    int message = data[3];
    if (!textSource) return data + message;
    for (int i = message; i < message + offCell; i++) {
        int value = data[i] + switchense;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[message + offCell] = 0;
    return data + message;
}

NSString *StringFromTextData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)TextDataToCache(data)];
}
