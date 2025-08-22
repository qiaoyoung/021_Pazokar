// __DEBUG__
// __CLOSE_PRINT__
//
//  PointButton.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMInputEmoticon;
@class CityCenterWith;

//: @protocol NIMEmoticonButtonTouchDelegate <NSObject>
@protocol IndexChild <NSObject>

//: - (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID;
- (void)should:(CityCenterWith*)emoticon independent_strong:(NSString*)catalogID;

//: @end
@end



//: @interface FFFInputEmoticonButton : UIButton
@interface PointButton : UIButton

//: @property (nonatomic, strong) NIMInputEmoticon *emoticonData;
@property (nonatomic, strong) CityCenterWith *emoticonData;

//: @property (nonatomic, copy) NSString *catalogID;
@property (nonatomic, copy) NSString *catalogID;

//: @property (nonatomic, weak) id<NIMEmoticonButtonTouchDelegate> delegate;
@property (nonatomic, weak) id<IndexChild> delegate;

//: + (FFFInputEmoticonButton*)iconButtonWithData:(NIMInputEmoticon*)data catalogID:(NSString*)catalogID delegate:( id<NIMEmoticonButtonTouchDelegate>)delegate;
+ (PointButton*)input:(CityCenterWith*)data holdfast:(NSString*)catalogID icon:( id<IndexChild>)delegate;

//: - (void)onIconSelected:(id)sender;
- (void)addStorage:(id)sender;

//: @end
@end