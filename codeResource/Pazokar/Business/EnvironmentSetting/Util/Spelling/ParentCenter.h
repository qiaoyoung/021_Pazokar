// __DEBUG__
// __CLOSE_PRINT__
//
//  ParentCenter.h
//  NIM
//  用于拼音全称和简称生成查询读取的类
//  Created by amao on 13-1-21.
//  Copyright (c) 2013年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface SpellingUnit : NSObject<NSCoding>
@interface PhysicalPropertyChild : NSObject<NSCoding>
//: @property (nonatomic,strong) NSString *fullSpelling;
@property (nonatomic,strong) NSString *fullSpelling;
//: @property (nonatomic,strong) NSString *shortSpelling;
@property (nonatomic,strong) NSString *shortSpelling;
//: @end
@end

//: @interface NTESSpellingCenter : NSObject
@interface ParentCenter : NSObject
{
    //: NSMutableDictionary *_spellingCache; 
    NSMutableDictionary *_spellingCache; //全拼，简称cache
    //: NSString *_filepath;
    NSString *_filepath;
}
//: + (NTESSpellingCenter *)sharedCenter;
+ (ParentCenter *)mean;
//: - (void)saveSpellingCache; 
- (void)successManager; //写入缓存

//: - (SpellingUnit *)spellingForString: (NSString *)source; 
- (PhysicalPropertyChild *)disable: (NSString *)source; //全拼，简拼 (全是小写)
//: - (NSString *)firstLetter: (NSString *)input; 
- (NSString *)carryEnable: (NSString *)input; //首字母
//: @end
@end