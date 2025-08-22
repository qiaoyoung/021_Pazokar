
#import <Foundation/Foundation.h>

typedef struct {
    Byte construction;
    Byte *diskJockey;
    unsigned int yaVirus;
	int beliefFain;
} StructAccumulationData;

@interface AccumulationData : NSObject

@end

@implementation AccumulationData

+ (NSData *)AccumulationDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)AccumulationDataToByte:(StructAccumulationData *)data {
    for (int i = 0; i < data->yaVirus; i++) {
        data->diskJockey[i] ^= data->construction;
    }
    data->diskJockey[data->yaVirus] = 0;
	if (data->yaVirus >= 1) {
		data->beliefFain = data->diskJockey[0];
	}
    return data->diskJockey;
}

+ (NSString *)StringFromAccumulationData:(StructAccumulationData *)data {
    return [NSString stringWithUTF8String:(char *)[self AccumulationDataToByte:data]];
}

//: head_default
+ (NSString *)app_speakFormat {
    /* static */ NSString *app_speakFormat = nil;
    if (!app_speakFormat) {
		NSArray<NSString *> *origin = @[@"101", @"104", @"108", @"105", @"82", @"105", @"104", @"107", @"108", @"120", @"97", @"121", @"88"];
		NSData *data = [AccumulationData AccumulationDataToData:origin];
        StructAccumulationData value = (StructAccumulationData){13, (Byte *)data.bytes, 12, 78};
        app_speakFormat = [self StringFromAccumulationData:&value];
    }
    return app_speakFormat;
}

//: type
+ (NSString *)m_attemptValue {
    /* static */ NSString *m_attemptValue = nil;
    if (!m_attemptValue) {
		NSArray<NSString *> *origin = @[@"23", @"26", @"19", @"6", @"157"];
		NSData *data = [AccumulationData AccumulationDataToData:origin];
        StructAccumulationData value = (StructAccumulationData){99, (Byte *)data.bytes, 4, 146};
        m_attemptValue = [self StringFromAccumulationData:&value];
    }
    return m_attemptValue;
}

//: personCardId
+ (NSString *)showTowerFormat {
    /* static */ NSString *showTowerFormat = nil;
    if (!showTowerFormat) {
		NSArray<NSString *> *origin = @[@"17", @"4", @"19", @"18", @"14", @"15", @"34", @"0", @"19", @"5", @"40", @"5", @"100"];
		NSData *data = [AccumulationData AccumulationDataToData:origin];
        StructAccumulationData value = (StructAccumulationData){97, (Byte *)data.bytes, 12, 202};
        showTowerFormat = [self StringFromAccumulationData:&value];
    }
    return showTowerFormat;
}

//: head_default_group
+ (NSString *)mInputHandleStr {
    /* static */ NSString *mInputHandleStr = nil;
    if (!mInputHandleStr) {
		NSArray<NSString *> *origin = @[@"252", @"241", @"245", @"240", @"203", @"240", @"241", @"242", @"245", @"225", @"248", @"224", @"203", @"243", @"230", @"251", @"225", @"228", @"9"];
		NSData *data = [AccumulationData AccumulationDataToData:origin];
        StructAccumulationData value = (StructAccumulationData){148, (Byte *)data.bytes, 18, 75};
        mInputHandleStr = [self StringFromAccumulationData:&value];
    }
    return mInputHandleStr;
}

//: data
+ (NSString *)noti_formationId {
    /* static */ NSString *noti_formationId = nil;
    if (!noti_formationId) {
		NSArray<NSString *> *origin = @[@"50", @"55", @"34", @"55", @"3"];
		NSData *data = [AccumulationData AccumulationDataToData:origin];
        StructAccumulationData value = (StructAccumulationData){86, (Byte *)data.bytes, 4, 73};
        noti_formationId = [self StringFromAccumulationData:&value];
    }
    return noti_formationId;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  NameContentView.m
// Case
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionShareCardContentView.h"
#import "NameContentView.h"
//: #import "FFFMessageModel.h"
#import "MoreModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFLoadProgressView.h"
#import "BuildView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import <YYImage/YYImage.h>
#import <YYImage/YYImage.h>
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "FFFKitDataProviderImpl.h"
#import "SaveNameOff.h"
//: #import "FFFKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import <objc/message.h>
#import <objc/message.h>

//: @interface FFFSessionShareCardContentView()
@interface NameContentView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;
//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;
//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;

//: @end
@end

//: @implementation FFFSessionShareCardContentView
@implementation NameContentView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initColorSession{
    //: self = [super initSessionMessageContentView];
    self = [super initColorSession];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: _imageView.backgroundColor = [UIColor whiteColor];
        _imageView.backgroundColor = [UIColor whiteColor];
        //: _imageView.contentMode = UIViewContentModeScaleAspectFill;
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        //: _imageView.layer.cornerRadius = 18;
        _imageView.layer.cornerRadius = 18;
        //: _imageView.layer.masksToBounds = YES;
        _imageView.layer.masksToBounds = YES;
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.textColor = [UIColor blackColor];
        _nameLabel.textColor = [UIColor blackColor];
        //: [self addSubview:_nameLabel];
        [self addSubview:_nameLabel];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data
- (void)messagePress:(MoreModel *)data
{
    //: [super refresh:data];
    [super messagePress:data];
    //: _imageView.image = nil;
    _imageView.image = nil;
    //: self.nameLabel.text = @"";
    self.nameLabel.text = @"";
    //: NIMCustomObject * cardObject = (NIMCustomObject*)self.model.message.messageObject;
    NIMCustomObject * cardObject = (NIMCustomObject*)self.model.message.messageObject;

    //: NSString *content = [cardObject.attachment encodeAttachment];
    NSString *content = [cardObject.attachment encodeAttachment];
    //: NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (dataaaaa) {
    if (dataaaaa) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [[dict objectForKey:@"type"] intValue];
            NSInteger type = [[dict objectForKey:[AccumulationData m_attemptValue]] intValue];
            //: NSDictionary *datatyl = [dict objectForKey:@"data"];
            NSDictionary *datatyl = [dict objectForKey:[AccumulationData noti_formationId]];
            //: if (type == 105) {
            if (type == 105) {

                //: NSString *cardid = [datatyl stringValueForKey:@"personCardId" defaultValue:@""];
                NSString *cardid = [datatyl noneWith:[AccumulationData showTowerFormat] message:@""];

                //: if ([[datatyl stringValueForKey:@"type" defaultValue:@"0"] boolValue]) {
                if ([[datatyl noneWith:[AccumulationData m_attemptValue] message:@"0"] boolValue]) {
                    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    //: if (team.teamName.length>0) {
                    if (team.teamName.length>0) {
                        //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
                        [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:[AccumulationData mInputHandleStr]]];
                        //: self.nameLabel.text = team.teamName;
                        self.nameLabel.text = team.teamName;
                    //: }else{
                    }else{
                        //: [[NIMSDK sharedSDK].teamManager fetchTeamInfo:cardid completion:^(NSError * _Nullable error, NIMTeam * _Nullable team) {
                        [[NIMSDK sharedSDK].teamManager fetchTeamInfo:cardid completion:^(NSError * _Nullable error, NIMTeam * _Nullable team) {
                            //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
                            [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:[AccumulationData mInputHandleStr]]];
                            //: self.nameLabel.text = team.teamName;
                            self.nameLabel.text = team.teamName;
                        //: }];
                        }];
                    }
                //: } else {
                } else {
                    @
                     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                                  ;
                    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:cardid];
                    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:cardid];
                    //: if (user.userInfo.nickName) {
                    if (user.userInfo.nickName) {
                        //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                        [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[AccumulationData app_speakFormat]]];
                        //: self.nameLabel.text = user.userInfo.nickName;
                        self.nameLabel.text = user.userInfo.nickName;
                    //: }else{
                    }else{
                        //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[cardid] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                        [[NIMSDK sharedSDK].userManager fetchUserInfos:@[cardid] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                            //: if (users.count) {
                            if (users.count) {
                                @
                                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                                ;
                                //: NIMUser *user = users.firstObject;
                                NIMUser *user = users.firstObject;
                                //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                                [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[AccumulationData app_speakFormat]]];
                                //: self.nameLabel.text = user.userInfo.nickName;
                                self.nameLabel.text = user.userInfo.nickName;
                            }
                        //: }];
                        }];
                    }


                }
            }
        }
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, 36, 36);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, 36, 36);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
    //: self.nameLabel.frame = CGRectMake(contentInsets.left + 44, contentInsets.top, 140, 36);
    self.nameLabel.frame = CGRectMake(contentInsets.left + 44, contentInsets.top, 140, 36);
}


//: - (void)onTouchUpInside:(id)sender
- (void)objects:(id)sender
{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    DirectionEvent *event = [[DirectionEvent alloc] init];
    //: event.eventName = FFFKitEventNameTapContent;
    event.eventName = notiMessageId;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate memberEvent:event];
}

//: @end
@end