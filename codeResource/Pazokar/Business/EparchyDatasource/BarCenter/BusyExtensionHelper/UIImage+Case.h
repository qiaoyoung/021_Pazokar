// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+Case.h
// Case
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (MyUserKit)
@interface UIImage (Case)

//: + (UIImage *)nim_fetchChartlet:(NSString *)imageName chartletId:(NSString *)chartletId;
+ (UIImage *)userIndex:(NSString *)imageName chartlet:(NSString *)chartletId;

//: + (CGSize)nim_sizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)disable:(CGSize)originSize
                              //: minSize:(CGSize)imageMinSize
                              session:(CGSize)imageMinSize
                              //: maxSize:(CGSize)imageMaxSiz;
                              direct:(CGSize)imageMaxSiz;


//: + (UIImage *)nim_emoticonInKit:(NSString *)imageName;
+ (UIImage *)quickKit:(NSString *)imageName;

//: - (UIImage *)nim_imageForAvatarUpload;
- (UIImage *)doseUpload;

//: - (UIImage *)nim_fixOrientation;
- (UIImage *)position;

//: - (UIImage *)nim_cropedImageWithSize:(CGSize)size;
- (UIImage *)mentalRepresentationMessage:(CGSize)size;

//: @end
@end