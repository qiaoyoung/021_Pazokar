// __DEBUG__
// __CLOSE_PRINT__
//
//  BusyExtensionHelper.h
// Case
//
//  Created by amao on 4/25/16.
//  Copyright © 2016 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NSString (NIMKitExtension)
@interface NSString (ValueColor)
//: - (NSDictionary *)nimkit_jsonDict;
- (NSDictionary *)dark;
//: @end
@end


//: @interface NSDictionary (NIMKitExtension)
@interface NSDictionary (ValueColor)
//: - (NSString *)nimkit_jsonString;
- (NSString *)json;
//: @end
@end
