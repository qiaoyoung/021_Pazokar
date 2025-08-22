// __DEBUG__
// __CLOSE_PRINT__
//
//  CypherScrollView+NIMKit
//  NIM
//
//  Created by chris.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "M80AttributedLabel+MyUserKit.h"
#import "CypherScrollView+Case.h"
//: #import "BusyInputEmoticonParser.h"
#import "ViewApp.h"
//: #import "BusyInputEmoticonManager.h"
#import "DeviceManager.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Case.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Case.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @implementation M80AttributedLabel (MyUserKit)
@implementation CypherScrollView (Case)
//: - (void)nim_setText:(NSString *)text
- (void)nameCover:(NSString *)text
{
    //: [self setText:@""];
    [self setText:@""];

    //: text = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    text = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: text = [text stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\n"];
    text = [text stringByReplacingOccurrencesOfString:@"\r\n" withString:@"\n"];
    //: if (text.length) {
    if (text.length) {
        //: [self setText:text];
        [self setText:text];
    }

}

//: - (void)setOriLineBreakMode:(NSLineBreakMode)lineBreakModel{
- (void)setGreenAnd:(NSLineBreakMode)lineBreakModel{
    //: objc_setAssociatedObject(self, @selector(oriLineBreakMode), @(lineBreakModel), OBJC_ASSOCIATION_ASSIGN);
    objc_setAssociatedObject(self, @selector(greenAnd), @(lineBreakModel), OBJC_ASSOCIATION_ASSIGN);
}

//: - (CTLineBreakMode)oriLineBreakMode{
- (CTLineBreakMode)greenAnd{
    //: return (NSLineBreakMode)[objc_getAssociatedObject(self, @selector(oriLineBreakMode))integerValue];
    return (NSLineBreakMode)[objc_getAssociatedObject(self, @selector(greenAnd))integerValue];
}



//: @end
@end
