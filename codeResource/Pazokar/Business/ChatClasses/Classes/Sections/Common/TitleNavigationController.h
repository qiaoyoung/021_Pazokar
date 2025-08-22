// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleNavigationController.h
// Case
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "BusyKitMediaPickerDelegate.h"
#import "TopAppDelegate.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface BusyKitMediaPickerController : TZImagePickerController
@interface TitleNavigationController : TZImagePickerController

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount;
- (instancetype)initWithView:(NSInteger)maxImagesCount;

//: @property (nonatomic, weak) id<BusyKitMediaPickerDelegate> nim_delegate;
@property (nonatomic, weak) id<TopAppDelegate> nim_delegate;

//: @property(nonatomic, strong) NSArray<NSString *> *mediaTypes;
@property(nonatomic, strong) NSArray<NSString *> *mediaTypes;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
