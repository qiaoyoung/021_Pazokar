
#import <Foundation/Foundation.h>

@interface BeerHandleData : NSObject

+ (instancetype)sharedInstance;

//: string
@property (nonatomic, copy) NSString *dream_usuallyKey;

//: en_US
@property (nonatomic, copy) NSString *mRestoreName;

//: name
@property (nonatomic, copy) NSString *notiTextMessage;

@end

@implementation BeerHandleData

+ (instancetype)sharedInstance {
    static BeerHandleData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)BeerHandleDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)BeerHandleDataToCache:(Byte *)data {
    int killerLine = data[0];
    int soul = data[1];
    for (int i = 0; i < killerLine / 2; i++) {
        int begin = soul + i;
        int end = soul + killerLine - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[soul + killerLine] = 0;
    return data + soul;
}

- (NSString *)StringFromBeerHandleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BeerHandleDataToCache:data]];
}  

//: name
- (NSString *)notiTextMessage {
    if (!_notiTextMessage) {
		NSArray<NSString *> *origin = @[@"4", @"5", @"163", @"167", @"3", @"101", @"109", @"97", @"110", @"58"];
		NSData *data = [BeerHandleData BeerHandleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _notiTextMessage = [self StringFromBeerHandleData:value];
    }
    return _notiTextMessage;
}

//: string
- (NSString *)dream_usuallyKey {
    if (!_dream_usuallyKey) {
		NSArray<NSString *> *origin = @[@"6", @"3", @"248", @"103", @"110", @"105", @"114", @"116", @"115", @"158"];
		NSData *data = [BeerHandleData BeerHandleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _dream_usuallyKey = [self StringFromBeerHandleData:value];
    }
    return _dream_usuallyKey;
}

//: en_US
- (NSString *)mRestoreName {
    if (!_mRestoreName) {
		NSArray<NSString *> *origin = @[@"5", @"8", @"254", @"170", @"245", @"19", @"56", @"57", @"83", @"85", @"95", @"110", @"101", @"227"];
		NSData *data = [BeerHandleData BeerHandleDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _mRestoreName = [self StringFromBeerHandleData:value];
    }
    return _mRestoreName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BrandData.m
//  NIM
//
//  Created by 彭爽 on 2022/6/24.
//  Copyright © 2022 Netease. All rights reserved.
//
//: #import "NTESLanguageManager.h"
#import "BrandData.h"

// __M_A_C_R_O__

//: @interface NTESLanguageManager ()<NSXMLParserDelegate>
@interface BrandData ()<NSXMLParserDelegate>
//: @property (nonatomic ,strong) NSString *currentElementName;
@property (nonatomic ,strong) NSString *currentElementName;
//: @end
@end

//: @implementation NTESLanguageManager
@implementation BrandData

//: static NTESLanguageManager *shareInstance = nil;
static BrandData *user_makeFormat = nil;

//: + (NTESLanguageManager *)shareInstance{
+ (BrandData *)text{
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareInstance == nil) {
        if (shareInstance == nil) {
            //: shareInstance = [[NTESLanguageManager alloc] init];
            user_makeFormat = [[BrandData alloc] init];
            //: shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
            shareInstance.langDict = [NSMutableDictionary dictionaryWithCapacity:100];
        }
        //: return shareInstance;
        return user_makeFormat;
    }
}

//: + (NSString *)getTextWithKey:(NSString *)key{
+ (NSString *)withTo:(NSString *)key{
    //: NSMutableDictionary *dict = [NTESLanguageManager shareInstance].langDict;
    NSMutableDictionary *dict = [BrandData shareInstance].langDict;
    //: return [dict stringValueForKey:key];
    return [dict stringValueForKey:key];
}

//: - (void)setLanguagre:(NSString *)langType{
- (void)setNoSub:(NSString *)langType{
    //: NSString *resourceType = @"strings";
    NSString *resourceType = @"strings";
    //: if ([langType isEqualToString:@"en"]) {
    if ([langType isEqualToString:@"en"]) {
        //: resourceType = @"strings_en";
        resourceType = @"strings_en";
    }
    //: NSString *xmlFilePath = [[NSBundle mainBundle] pathForResource:resourceType ofType:@"xml"];
    NSString *xmlFilePath = [[NSBundle mainBundle] pathForResource:resourceType ofType:@"xml"];
    //: NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    NSData *xmlData = [NSData dataWithContentsOfFile:xmlFilePath];
    //: NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:xmlData];
    NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithData:xmlData];
    //: xmlParser.delegate = self;
    xmlParser.delegate = self;
    //: [xmlParser parse];
    [xmlParser parse];
}

// 开始
//: - (void)parserDidStartDocument:(NSXMLParser *)parser {
- (void)tiptoeDocument:(NSXMLParser *)parser {

    //: NSLog(@"开始");
}

// 获取节点头
//: - (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
- (void)bar:(NSXMLParser *)parser horizon:(NSString *)elementName namespaceTradeTextStrikeOutTingElementMyQualified:(NSString *)namespaceURI playAttributes:(NSString *)qName accountDisable:(NSDictionary<NSString *,NSString *> *)attributeDict {

    //: if ([elementName isEqualToString:@"string"]) {
    if ([elementName isEqualToString:[BeerHandleData sharedInstance].dream_usuallyKey]) {
        //: self.currentElementName = attributeDict[@"name"];
        self.currentElementName = attributeDict[[BeerHandleData sharedInstance].notiTextMessage];
    }

}

// 获取节点的值 (这个方法在获取到节点头和节点尾后，会分别调用一次)
//: - (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
- (void)size:(NSXMLParser *)parser pressed:(NSString *)string {

//    NSLog(@"%@value : %@",parser, string);

    //: if (_currentElementName != nil) {
    if (_currentElementName != nil) {
        //: [self.langDict setObject:string forKey:_currentElementName];
        [self.langDict setObject:string forKey:_currentElementName];
    }
}

// 获取节点尾
//: - (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
- (void)to:(NSXMLParser *)parser info:(NSString *)elementName doing:(NSString *)namespaceURI send:(NSString *)qName {

    //: _currentElementName = nil;
    _currentElementName = nil;
//    NSLog(@"end element : %@---%@----%@", elementName,namespaceURI,qName);


}

// 结束
//: - (void)parserDidEndDocument:(NSXMLParser *)parser {
- (void)parserTabDocument:(NSXMLParser *)parser {

    //: NSLog(@"结束");
    //: NSLog(@"%@",self.langDict);

    //发送修改语言通知

}

//: + (NSString *)getLocale{
+ (NSString *)complete{//th-TH  vi-VN
    //: NSString *language = [GVUserDefaults standardUserDefaults].language;
    NSString *language = [GVUserDefaults standardUserDefaults].language;
    //: NSString *locale = @"zh_CN";
    NSString *locale = @"zh_CN";
    //: if ([language isEqualToString:@"en"]) {
    if ([language isEqualToString:@"en"]) {
        //: return @"en_US";
        return [BeerHandleData sharedInstance].mRestoreName;
    }
    //: return locale;
    return locale;
}


//: @end
@end