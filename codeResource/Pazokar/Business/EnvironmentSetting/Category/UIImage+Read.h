// __DEBUG__
// __CLOSE_PRINT__
//
//  UIImage+KIImage.h
//  Kitalker
//
//  Created by 杨 烽 on 12-8-3.
//
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface UIImage (KIAdditions)
@interface UIImage (Read)

/*垂直翻转*/
//: - (UIImage *)flipVertical;
- (UIImage *)success;

/*水平翻转*/
//: - (UIImage *)flipHorizontal;
- (UIImage *)button;

/*改变size*/
//: - (UIImage *)resizeTo:(CGSize)size;
- (UIImage *)toActivity:(CGSize)size;

//: - (UIImage *)resizeToWidth:(CGFloat)width height:(CGFloat)height;
- (UIImage *)tip:(CGFloat)width disable:(CGFloat)height;

/*等比例缩小图片至该宽度*/
//: - (UIImage *)scaleWithWidth:(CGFloat)width;
- (UIImage *)cast:(CGFloat)width;

/*等比例缩小图片至该高度*/
//: - (UIImage *)scaleWithHeight:(CGFloat)heigh;
- (UIImage *)message:(CGFloat)heigh;

/*裁切*/
//: - (UIImage *)cropImageWithX:(CGFloat)x y:(CGFloat)y width:(CGFloat)width height:(CGFloat)height;
- (UIImage *)valueHeight:(CGFloat)x createRecent:(CGFloat)y tapEnable:(CGFloat)width time:(CGFloat)height;

/*修正拍照图片方向*/
//: - (UIImage *)fixOrientation;
- (UIImage *)manager;

//: - (UIImage *)decoded;
- (UIImage *)viewMy;

//: - (UIImage *)addMark:(NSString *)mark textColor:(UIColor *)textColor font:(UIFont *)font point:(CGPoint)point;
- (UIImage *)cell:(NSString *)mark nim:(UIColor *)textColor addHidden:(UIFont *)font message:(CGPoint)point;

//: - (UIImage *)addCreateTime;
- (UIImage *)colorDown;

//: - (UIImage *)imageRotatedByDegrees:(CGFloat)degrees;
- (UIImage *)yore:(CGFloat)degrees;





//: + (NSString *) contentTypeExtensionForImageData:(NSData *)data;
+ (NSString *) collectionWithinMetadata:(NSData *)data;

//: - (UIImage*)convertImageToScale:(double)scale;
- (UIImage*)changeQuantitativeRelationImageAnalogDigitalConverter:(double)scale;

//referWidth：压缩后的宽带，高等比压缩
//: + (UIImage *)scaleToSize:(UIImage *)img referWidth:(CGFloat)referWidth;
+ (UIImage *)centerScreen:(UIImage *)img perimeter:(CGFloat)referWidth;

//图片压缩到指定大小
//: - (UIImage*)imageByScalingAndCroppingForSize:(CGSize)targetSize;
- (UIImage*)view:(CGSize)targetSize;


//referSize：压缩后图片大小
//: + (UIImage *)scaleToSize:(UIImage *)img referSize:(CGFloat)referSize;
+ (UIImage *)bubble:(UIImage *)img remote:(CGFloat)referSize;

//: + (UIImage *)scaleToNormalSize:(UIImage *)originImage;
+ (UIImage *)title:(UIImage *)originImage;

//: + (UIImage *)checkImage:(UIImage *)originImage;
+ (UIImage *)clean:(UIImage *)originImage;
//: + (UIImage *)compressionImage:(UIImage *)originImage;
+ (UIImage *)aLaCarte:(UIImage *)originImage;

//: - (UIImage *)compressImageWithMaxLength:(NSUInteger)maxLength;
- (UIImage *)name:(NSUInteger)maxLength;

//: + (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
+ (UIImage *)rationalMentalImageToBig:(UIColor *)color vertical:(CGSize)size;

//: @end
@end