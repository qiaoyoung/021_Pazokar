// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SGPermission.h"
#import "TagMediaDevice.h"
//: #import "SGPermissionCamera.h"
#import "PothouseMessage.h"
//: #import "SGPermissionPhoto.h"
#import "LengthTap.h"

//: @interface SGPermission ()
@interface TagMediaDevice ()
//: @property (nonatomic, assign) SGPermissionType type;
@property (nonatomic, assign) SGPermissionType type;
//: @end
@end

//: @implementation SGPermission
@implementation TagMediaDevice

//: - (void)initWithType:(SGPermissionType)type completion:(SGPermissionBlock)block {
- (void)initWithInput:(SGPermissionType)type change:(SGPermissionBlock)block {
    //: [SGPermission permissionWithType:type completion:block];
    [TagMediaDevice button:type drawOutBackground:block];
}

//: + (void)permissionWithType:(SGPermissionType)type completion:(SGPermissionBlock)block {
+ (void)button:(SGPermissionType)type drawOutBackground:(SGPermissionBlock)block {
    //: SGPermission *permission = [[SGPermission alloc] init];
    TagMediaDevice *permission = [[TagMediaDevice alloc] init];
    //: permission.type = type;
    permission.type = type;

    //: if (type == SGPermissionTypeCamera) {
    if (type == SGPermissionTypeCamera) {
        //: [SGPermissionCamera camera:^(SGPermissionCamera * _Nonnull camera, SGPermissionStatus status) {
        [PothouseMessage viewCamera:^(PothouseMessage * _Nonnull camera, SGPermissionStatus status) {
            //: if (block) {
            if (block) {
                //: block(permission, status);
                block(permission, status);
            }
        //: }];
        }];
    //: } else if (type == SGPermissionTypePhoto) {
    } else if (type == SGPermissionTypePhoto) {
        //: [SGPermissionPhoto photo:^(SGPermissionPhoto * _Nonnull photos, SGPermissionStatus status) {
        [LengthTap mode:^(LengthTap * _Nonnull photos, SGPermissionStatus status) {
            //: if (block) {
            if (block) {
                //: block(permission, status);
                block(permission, status);
            }
        //: }];
        }];
    }
}

//: - (void)request:(void (^)(BOOL))handler {
- (void)message:(void (^)(BOOL))handler {
    //: if (self.type == SGPermissionTypeCamera) {
    if (self.type == SGPermissionTypeCamera) {
        //: [SGPermissionCamera request:handler];
        [PothouseMessage disable:handler];
    //: } else if (self.type == SGPermissionTypePhoto) {
    } else if (self.type == SGPermissionTypePhoto) {
        //: [SGPermissionPhoto request:handler];
        [LengthTap background:handler];
    }
}

//: @end
@end