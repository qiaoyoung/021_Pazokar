
#import <Foundation/Foundation.h>

NSString *StringFromPetData(Byte *data);


//: icon_receiver_node_pressed
Byte app_topicCenterFormat[] = {74, 26, 82, 12, 162, 135, 164, 98, 202, 102, 79, 144, 187, 181, 193, 192, 177, 196, 183, 181, 183, 187, 200, 183, 196, 177, 192, 193, 182, 183, 177, 194, 196, 183, 197, 197, 183, 182, 135};

//: icon_sender_text_node_normal
Byte k_formationPath[] = {11, 28, 90, 14, 225, 19, 137, 192, 51, 156, 247, 71, 108, 210, 195, 189, 201, 200, 185, 205, 191, 200, 190, 191, 204, 185, 206, 191, 210, 206, 185, 200, 201, 190, 191, 185, 200, 201, 204, 199, 187, 198, 106};

//: icon_receiver_node_normal
Byte noti_sliceHmIdent[] = {53, 25, 78, 6, 152, 68, 183, 177, 189, 188, 173, 192, 179, 177, 179, 183, 196, 179, 192, 173, 188, 189, 178, 179, 173, 188, 189, 192, 187, 175, 186, 18};

//: icon_sender_text_node_pressed
Byte show_cedeIdent[] = {24, 29, 87, 4, 192, 186, 198, 197, 182, 202, 188, 197, 187, 188, 201, 182, 203, 188, 207, 203, 182, 197, 198, 187, 188, 182, 199, 201, 188, 202, 202, 188, 187, 233};

//: {18,25,17,25}
Byte showBeerPath[] = {99, 13, 86, 13, 225, 208, 13, 244, 248, 167, 24, 22, 30, 209, 135, 142, 130, 136, 139, 130, 135, 141, 130, 136, 139, 211, 243};

// __DEBUG__
// __CLOSE_PRINT__
//
//  GreenSetting.m
// Case
//
//  Created by chris on 2017/10/30.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyKitSetting.h"
#import "GreenSetting.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"

//: @implementation BusyKitSetting
@implementation GreenSetting

//: - (instancetype)init:(BOOL)isRight
- (instancetype)initLieAccount:(BOOL)isRight
{
    //: self = [super init];
    self = [super init];
    //: if (self)
    if (self)
    {
        //: if (isRight)
        if (isRight)
        {
            //: _normalBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage greyishNameImageStreetSmart:StringFromPetData(k_formationPath)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromPetData(showBeerPath)) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage grayImageWithName:@"icon_sender_text_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage greyishNameImageStreetSmart:StringFromPetData(show_cedeIdent)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromPetData(showBeerPath)) resizingMode:UIImageResizingModeStretch];

        }
        //: else
        else
        {
            //: _normalBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_normal"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _normalBackgroundImage = [[UIImage imageNamed:StringFromPetData(noti_sliceHmIdent)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromPetData(showBeerPath)) resizingMode:UIImageResizingModeStretch];
            //: _highLightBackgroundImage = [[UIImage imageNamed:@"icon_receiver_node_pressed"] resizableImageWithCapInsets:UIEdgeInsetsFromString(@"{18,25,17,25}") resizingMode:UIImageResizingModeStretch];
            _highLightBackgroundImage = [[UIImage imageNamed:StringFromPetData(app_topicCenterFormat)] resizableImageWithCapInsets:UIEdgeInsetsFromString(StringFromPetData(showBeerPath)) resizingMode:UIImageResizingModeStretch];
        }
    }
    //: return self;
    return self;
}

//: @end
@end

Byte * PetDataToCache(Byte *data) {
    int muckheap = data[0];
    int handleText = data[1];
    Byte overseeRed = data[2];
    int saver = data[3];
    if (!muckheap) return data + saver;
    for (int i = saver; i < saver + handleText; i++) {
        int value = data[i] - overseeRed;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[saver + handleText] = 0;
    return data + saver;
}

NSString *StringFromPetData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PetDataToCache(data)];
}
