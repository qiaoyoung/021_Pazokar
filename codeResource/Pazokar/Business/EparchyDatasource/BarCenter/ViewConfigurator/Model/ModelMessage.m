// __DEBUG__
// __CLOSE_PRINT__
//
//  ModelMessage.m
// Case
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyMediaItem.h"
#import "ModelMessage.h"

//: @implementation BusyMediaItem
@implementation ModelMessage

//: + (BusyMediaItem *)item:(NSString *)selector
+ (ModelMessage *)canSearched:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           drop:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         statuteTitle:(UIImage *)selectedImage
                 //: title:(NSString *)title
                 text:(NSString *)title
{
    //: BusyMediaItem *item = [[BusyMediaItem alloc] init];
    ModelMessage *item = [[ModelMessage alloc] init];
    //: item.selctor = NSSelectorFromString(selector);
    item.selctor = NSSelectorFromString(selector);
    //: item.normalImage = normalImage;
    item.normalImage = normalImage;
    //: item.selectedImage = selectedImage;
    item.selectedImage = selectedImage;
    //: item.title = title;
    item.title = title;
    //: return item;
    return item;
}

//: @end
@end
