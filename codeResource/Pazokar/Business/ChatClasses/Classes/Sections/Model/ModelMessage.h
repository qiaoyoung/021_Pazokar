// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelMessage.h
// Case
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FFFMediaItem : NSObject
@interface ModelMessage : NSObject

//: @property (nonatomic,assign) SEL selctor;
@property (nonatomic,assign) SEL selctor;

//: @property (nonatomic,strong) UIImage *normalImage;
@property (nonatomic,strong) UIImage *normalImage;

//: @property (nonatomic,strong) UIImage *selectedImage;
@property (nonatomic,strong) UIImage *selectedImage;

//: @property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *title;

//: + (FFFMediaItem *)item:(NSString *)selector
+ (ModelMessage *)canSearched:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           drop:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         statuteTitle:(UIImage *)selectedImage
                 //: title:(NSString *)title;
                 text:(NSString *)title;
//: @end
@end