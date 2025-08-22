// __DEBUG__
// __CLOSE_PRINT__
//
//  PointButton.m
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyInputEmoticonButton.h"
#import "PointButton.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "BusyInputEmoticonManager.h"
#import "DeviceManager.h"
//: #import "BusyInputEmoticonDefine.h"
#import "BusyInputEmoticonDefine.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "BusyKitDevice.h"
#import "MarginDevice.h"
//: #import "NSBundle+MyUserKit.h"
#import "NSBundle+Case.h"
//: #import "SSZipArchiveManager.h"
#import "ValuePraise.h"

//: @implementation BusyInputEmoticonButton
@implementation PointButton

//: + (BusyInputEmoticonButton*)iconButtonWithData:(NIMInputEmoticon*)data catalogID:(NSString*)catalogID delegate:( id<NIMEmoticonButtonTouchDelegate>)delegate{
+ (PointButton*)input:(CityCenterWith*)data holdfast:(NSString*)catalogID icon:( id<IndexChild>)delegate{
    //: BusyInputEmoticonButton* icon = [[BusyInputEmoticonButton alloc] init];
    PointButton* icon = [[PointButton alloc] init];
    //: [icon addTarget:icon action:@selector(onIconSelected:) forControlEvents:UIControlEventTouchUpInside];
    [icon addTarget:icon action:@selector(addStorage:) forControlEvents:UIControlEventTouchUpInside];


    //: icon.emoticonData = data;
    icon.emoticonData = data;
    //: icon.catalogID = catalogID;
    icon.catalogID = catalogID;
    //: icon.userInteractionEnabled = YES;
    icon.userInteractionEnabled = YES;
    //: icon.exclusiveTouch = YES;
    icon.exclusiveTouch = YES;
    //: icon.contentMode = UIViewContentModeScaleToFill;
    icon.contentMode = UIViewContentModeScaleToFill;
    //: icon.delegate = delegate;
    icon.delegate = delegate;

    //: switch (data.type) {
    switch (data.type) {
        //: case NIMEmoticonTypeUnicode:
        case NIMEmoticonTypeUnicode:
        {
            //: [icon setTitle:data.unicode forState:UIControlStateNormal];
            [icon setTitle:data.unicode forState:UIControlStateNormal];
            //: [icon setTitle:data.unicode forState:UIControlStateHighlighted];
            [icon setTitle:data.unicode forState:UIControlStateHighlighted];
            //: icon.titleLabel.font = [UIFont systemFontOfSize:32];
            icon.titleLabel.font = [UIFont systemFontOfSize:32];
            //: break;
            break;
        }
        //: case NIMEmoticonTypeGif:
        case NIMEmoticonTypeGif:
        {
//            NSBundle *bundle = [Case sharedKit].emoticonBundle;
//            NSData *imageData = [NSData dataWithContentsOfFile:[bundle pathForResource:data.filename ofType:nil inDirectory:NEEKIT_EmojiPath]];
            //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
            NSString *emojiPath = [[ValuePraise show] message];
            //: NSString *imagePath = [emojiPath stringByAppendingPathComponent:data.filename];
            NSString *imagePath = [emojiPath stringByAppendingPathComponent:data.filename];
            //: NSData *imageData = [NSData dataWithContentsOfFile:imagePath];
            NSData *imageData = [NSData dataWithContentsOfFile:imagePath];
            //: UIImage *gif = [UIImage sd_imageWithGIFData:imageData];
            UIImage *gif = [UIImage sd_imageWithGIFData:imageData];
            //: [icon setImage:gif forState:UIControlStateNormal];
            [icon setImage:gif forState:UIControlStateNormal];
            //: [icon setImage:gif forState:UIControlStateHighlighted];
            [icon setImage:gif forState:UIControlStateHighlighted];

            //: break;
            break;
        }
        //: case NIMEmoticonTypeFile:
        case NIMEmoticonTypeFile:
        //: default:
        default:
        {
            //: UIImage *image = [UIImage nim_emoticonInKit:data.filename];
            UIImage *image = [UIImage quickKit:data.filename];
            //: [icon setImage:image forState:UIControlStateNormal];
            [icon setImage:image forState:UIControlStateNormal];
            //: [icon setImage:image forState:UIControlStateHighlighted];
            [icon setImage:image forState:UIControlStateHighlighted];
            //: break;
            break;
        }
    }
    //: return icon;
    return icon;
}



//: - (void)onIconSelected:(id)sender
- (void)addStorage:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(selectedEmoticon:catalogID:)])
    if ([self.delegate respondsToSelector:@selector(should:independent_strong:)])
    {
        //: [self.delegate selectedEmoticon:self.emoticonData catalogID:self.catalogID];
        [self.delegate should:self.emoticonData independent_strong:self.catalogID];
    }
}

//: @end
@end
