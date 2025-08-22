
#import <Foundation/Foundation.h>

NSString *StringFromAdequateData(Byte *data);        


//: chat_ic_voice_g
Byte mainPinKey[] = {81, 15, 13, 12, 46, 107, 68, 85, 229, 171, 44, 71, 86, 91, 84, 103, 82, 92, 86, 82, 105, 98, 92, 86, 88, 82, 90, 229};

//: chat_ic_video_g
Byte mGloveUrl[] = {12, 15, 15, 8, 85, 56, 251, 176, 84, 89, 82, 101, 80, 90, 84, 80, 103, 90, 85, 86, 96, 80, 88, 36};

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterCanView.m
// Case
//
//  Created by Wenchao Ding on 2020/11/7.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionRtcCallRecordContentView.h"
#import "CenterCanView.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"
//: #import "FFFKitUtil.h"
#import "OffMore.h"

//: @implementation FFFSessionRtcCallRecordContentView
@implementation CenterCanView

//: - (instancetype)initSessionMessageContentView
- (instancetype)initColorSession
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initColorSession]) {
        //: _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _textLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _textLabel.numberOfLines = 1;
        _textLabel.numberOfLines = 1;
        //: _textLabel.backgroundColor = UIColor.clearColor;
        _textLabel.backgroundColor = UIColor.clearColor;
        //: [self addSubview:_textLabel];
        [self addSubview:_textLabel];

        //: _icImage = [[UIImageView alloc]init];
        _icImage = [[UIImageView alloc]init];
        //: [self addSubview:_icImage];
        [self addSubview:_icImage];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data {
- (void)messagePress:(MoreModel *)data {
    //: [super refresh:data];
    [super messagePress:data];
    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    GreenSetting *setting = [[Case pastTop].config tool:data.message];
    //: self.textLabel.textColor = setting.textColor;
    self.textLabel.textColor = setting.textColor;
    //: self.textLabel.font = setting.font;
    self.textLabel.font = setting.font;
    //: self.textLabel.text = [FFFKitUtil messageTipContent:data.message];
    self.textLabel.text = [OffMore impanel:data.message];

    //: NIMRtcCallRecordObject *record = data.message.messageObject;
    NIMRtcCallRecordObject *record = data.message.messageObject;
    //: if(record.callType == NIMNetCallTypeAudio){
    if(record.callType == NIMNetCallTypeAudio){
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_voice_g"];
        self.icImage.image = [UIImage imageNamed:StringFromAdequateData(mainPinKey)];
    //: }else{
    }else{
        //: self.icImage.image = [UIImage imageNamed:@"chat_ic_video_g"];
        self.icImage.image = [UIImage imageNamed:StringFromAdequateData(mGloveUrl)];
    }

//    */
//   typedef NS_ENUM(NSInteger, NIMNetCallType){
//       /**
//        *  音频通话
//        */
//       NIMNetCallTypeAudio = 1,
//       /**
//        *  视频通话
//        */
//       NIMNetCallTypeVideo = 2,
//   };

}

//: - (void)layoutSubviews {
- (void)layoutSubviews {
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.frame.size.width;
    CGFloat tableViewWidth = self.superview.frame.size.width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model searched:tableViewWidth];
//    CGRect labelFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
//    self.textLabel.frame = labelFrame;

    //: self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    self.icImage.frame = CGRectMake(contentInsets.left, contentInsets.top+2, 16, 16);
    //: self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);
    self.textLabel.frame = CGRectMake(self.icImage.right+5, contentInsets.top, contentsize.width-20, contentsize.height);

}

//: @end
@end

Byte * AdequateDataToCache(Byte *data) {
    int motorAfter = data[0];
    int fairnessHostage = data[1];
    Byte predecessor = data[2];
    int mallGreen = data[3];
    if (!motorAfter) return data + mallGreen;
    for (int i = mallGreen; i < mallGreen + fairnessHostage; i++) {
        int value = data[i] + predecessor;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[mallGreen + fairnessHostage] = 0;
    return data + mallGreen;
}

NSString *StringFromAdequateData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AdequateDataToCache(data)];
}
