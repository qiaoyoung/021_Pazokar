
#import <Foundation/Foundation.h>

@interface CipherData : NSObject

+ (instancetype)sharedInstance;

//: #000000
@property (nonatomic, copy) NSString *userFileData;

//: head_default
@property (nonatomic, copy) NSString *notiAwarenessMsg;

@end

@implementation CipherData

+ (instancetype)sharedInstance {
    static CipherData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CipherDataToCache:(Byte *)data {
    int unremarkably = data[0];
    int forbidFain = data[1];
    for (int i = 0; i < unremarkably / 2; i++) {
        int begin = forbidFain + i;
        int end = forbidFain + unremarkably - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[forbidFain + unremarkably] = 0;
    return data + forbidFain;
}

- (NSString *)StringFromCipherData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CipherDataToCache:data]];
}  

//: #000000
- (NSString *)userFileData {
    if (!_userFileData) {
        Byte value[] = {7, 8, 234, 157, 17, 78, 239, 153, 48, 48, 48, 48, 48, 48, 35, 105};
        _userFileData = [self StringFromCipherData:value];
    }
    return _userFileData;
}

//: head_default
- (NSString *)notiAwarenessMsg {
    if (!_notiAwarenessMsg) {
        Byte value[] = {12, 2, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 123};
        _notiAwarenessMsg = [self StringFromCipherData:value];
    }
    return _notiAwarenessMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  JointView.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "JointView.h"

//: @implementation TeamMemberNormalCollectionViewCell
@implementation JointView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self stuff];

    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)stuff
{
    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    //: self.ImageView = [[UIImageView alloc] initWithFrame:CGRectMake((width-48)/2, 0, 48, 48)];
    self.ImageView = [[UIImageView alloc] initWithFrame:CGRectMake((width-48)/2, 0, 48, 48)];
    //: self.ImageView.layer.cornerRadius = 24;
    self.ImageView.layer.cornerRadius = 24;
    //: self.ImageView.layer.masksToBounds = YES;
    self.ImageView.layer.masksToBounds = YES;
    //: [self.contentView addSubview:self.ImageView];
    [self.contentView addSubview:self.ImageView];

    //: self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.ImageView.bottom+2, width, 20)];
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.ImageView.bottom+2, width, 20)];
    //: self.titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    self.titleLabel.textColor = [UIColor status:[CipherData sharedInstance].userFileData];
    //: self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    //: self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];

}

//: - (void)refreshWithModel:(NIMTeamMember *)member
- (void)common:(NIMTeamMember *)member
{
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
    Info *info = [[Case pastTop] consumer:member.userId message:nil];
    //: self.titleLabel.text = info.showName;
    self.titleLabel.text = info.showName;
    //: [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[CipherData sharedInstance].notiAwarenessMsg]];
}


//: -(void)prepareForReuse
-(void)prepareForReuse
{
    //: [super prepareForReuse];
    [super prepareForReuse];
//    [self.logoImageView sd_cancelCurrentAnimationImagesLoad];
    //: self.ImageView.image = nil;
    self.ImageView.image = nil;
}


//: @end
@end