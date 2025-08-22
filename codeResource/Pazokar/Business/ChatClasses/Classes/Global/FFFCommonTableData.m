
#import <Foundation/Foundation.h>

typedef struct {
    Byte higherStatus;
    Byte *dilemmaHao;
    unsigned int beamSolely;
	int workboxVertical;
} StructApartmentData;

@interface ApartmentData : NSObject

+ (instancetype)sharedInstance;

//: extraInfo
@property (nonatomic, copy) NSString *dream_representTitle;

//: footerTitle
@property (nonatomic, copy) NSString *m_guaranteePath;

//: headerHeight
@property (nonatomic, copy) NSString *user_textMessage;

//: action
@property (nonatomic, copy) NSString *show_numberData;

//: title
@property (nonatomic, copy) NSString *user_redStr;

//: footerHeight
@property (nonatomic, copy) NSString *notiPiClassifyMsg;

//: row
@property (nonatomic, copy) NSString *app_towerTitle;

//: cellClass
@property (nonatomic, copy) NSString *mainFurtherAwlStr;

//: leftEdge
@property (nonatomic, copy) NSString *mBottomFormat;

//: accessory
@property (nonatomic, copy) NSString *kDemonExplainTitle;

//: disableUserInteraction
@property (nonatomic, copy) NSString *appCentralMsg;

//: language
@property (nonatomic, copy) NSString *user_whetherHormoneUncertainContent;

//: detailTitle
@property (nonatomic, copy) NSString *showDeserveValue;

//: forbidSelect
@property (nonatomic, copy) NSString *noti_verticalText;

//: disable
@property (nonatomic, copy) NSString *user_negativeData;

//: rowHeight
@property (nonatomic, copy) NSString *m_realistCrisisMessage;

//: headerTitle
@property (nonatomic, copy) NSString *show_redMorningId;

@end

@implementation ApartmentData

+ (instancetype)sharedInstance {
    static ApartmentData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ApartmentDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ApartmentDataToByte:(StructApartmentData *)data {
    for (int i = 0; i < data->beamSolely; i++) {
        data->dilemmaHao[i] ^= data->higherStatus;
    }
    data->dilemmaHao[data->beamSolely] = 0;
	if (data->beamSolely >= 1) {
		data->workboxVertical = data->dilemmaHao[0];
	}
    return data->dilemmaHao;
}

- (NSString *)StringFromApartmentData:(StructApartmentData *)data {
    return [NSString stringWithUTF8String:(char *)[self ApartmentDataToByte:data]];
}

//: cellClass
- (NSString *)mainFurtherAwlStr {
    if (!_mainFurtherAwlStr) {
		NSString *origin = @"7D7B72725D727F6D6DE9";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){30, (Byte *)data.bytes, 9, 143};
        _mainFurtherAwlStr = [self StringFromApartmentData:&value];
    }
    return _mainFurtherAwlStr;
}

//: language
- (NSString *)user_whetherHormoneUncertainContent {
    if (!_user_whetherHormoneUncertainContent) {
		NSString *origin = @"8A87888193878183FB";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){230, (Byte *)data.bytes, 8, 101};
        _user_whetherHormoneUncertainContent = [self StringFromApartmentData:&value];
    }
    return _user_whetherHormoneUncertainContent;
}

//: disable
- (NSString *)user_negativeData {
    if (!_user_negativeData) {
		NSString *origin = @"DCD1CBD9DAD4DD2F";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){184, (Byte *)data.bytes, 7, 142};
        _user_negativeData = [self StringFromApartmentData:&value];
    }
    return _user_negativeData;
}

//: footerHeight
- (NSString *)notiPiClassifyMsg {
    if (!_notiPiClassifyMsg) {
		NSString *origin = @"545D5D4657407A575B555A462F";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){50, (Byte *)data.bytes, 12, 24};
        _notiPiClassifyMsg = [self StringFromApartmentData:&value];
    }
    return _notiPiClassifyMsg;
}

//: footerTitle
- (NSString *)m_guaranteePath {
    if (!_m_guaranteePath) {
		NSString *origin = @"565F5F4455426459445C5565";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){48, (Byte *)data.bytes, 11, 169};
        _m_guaranteePath = [self StringFromApartmentData:&value];
    }
    return _m_guaranteePath;
}

//: rowHeight
- (NSString *)m_realistCrisisMessage {
    if (!_m_realistCrisisMessage) {
		NSString *origin = @"9D8098A78A8688879B74";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){239, (Byte *)data.bytes, 9, 164};
        _m_realistCrisisMessage = [self StringFromApartmentData:&value];
    }
    return _m_realistCrisisMessage;
}

//: forbidSelect
- (NSString *)noti_verticalText {
    if (!_noti_verticalText) {
		NSString *origin = @"D1D8C5D5DED3E4D2DBD2D4C388";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){183, (Byte *)data.bytes, 12, 58};
        _noti_verticalText = [self StringFromApartmentData:&value];
    }
    return _noti_verticalText;
}

//: accessory
- (NSString *)kDemonExplainTitle {
    if (!_kDemonExplainTitle) {
		NSString *origin = @"0C0E0E081E1E021F14BA";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){109, (Byte *)data.bytes, 9, 127};
        _kDemonExplainTitle = [self StringFromApartmentData:&value];
    }
    return _kDemonExplainTitle;
}

//: detailTitle
- (NSString *)showDeserveValue {
    if (!_showDeserveValue) {
		NSString *origin = @"5D5C4D5850556D504D555C1B";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){57, (Byte *)data.bytes, 11, 206};
        _showDeserveValue = [self StringFromApartmentData:&value];
    }
    return _showDeserveValue;
}

//: title
- (NSString *)user_redStr {
    if (!_user_redStr) {
		NSString *origin = @"263B263E3752";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){82, (Byte *)data.bytes, 5, 107};
        _user_redStr = [self StringFromApartmentData:&value];
    }
    return _user_redStr;
}

//: disableUserInteraction
- (NSString *)appCentralMsg {
    if (!_appCentralMsg) {
		NSString *origin = @"B8B5AFBDBEB0B989AFB9AE95B2A8B9AEBDBFA8B5B3B234";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){220, (Byte *)data.bytes, 22, 83};
        _appCentralMsg = [self StringFromApartmentData:&value];
    }
    return _appCentralMsg;
}

//: headerTitle
- (NSString *)show_redMorningId {
    if (!_show_redMorningId) {
		NSString *origin = @"ECE1E5E0E1F6D0EDF0E8E154";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){132, (Byte *)data.bytes, 11, 67};
        _show_redMorningId = [self StringFromApartmentData:&value];
    }
    return _show_redMorningId;
}

//: headerHeight
- (NSString *)user_textMessage {
    if (!_user_textMessage) {
		NSString *origin = @"3D30343130271D303C323D21B2";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){85, (Byte *)data.bytes, 12, 124};
        _user_textMessage = [self StringFromApartmentData:&value];
    }
    return _user_textMessage;
}

//: leftEdge
- (NSString *)mBottomFormat {
    if (!_mBottomFormat) {
		NSString *origin = @"848D8E9CAD8C8F8DC2";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){232, (Byte *)data.bytes, 8, 51};
        _mBottomFormat = [self StringFromApartmentData:&value];
    }
    return _mBottomFormat;
}

//: action
- (NSString *)show_numberData {
    if (!_show_numberData) {
		NSString *origin = @"A5A7B0ADABAAB0";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){196, (Byte *)data.bytes, 6, 197};
        _show_numberData = [self StringFromApartmentData:&value];
    }
    return _show_numberData;
}

//: extraInfo
- (NSString *)dream_representTitle {
    if (!_dream_representTitle) {
		NSString *origin = @"617C7076654D6A626B1C";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){4, (Byte *)data.bytes, 9, 162};
        _dream_representTitle = [self StringFromApartmentData:&value];
    }
    return _dream_representTitle;
}

//: row
- (NSString *)app_towerTitle {
    if (!_app_towerTitle) {
		NSString *origin = @"120F17F2";
		NSData *data = [ApartmentData ApartmentDataToData:origin];
        StructApartmentData value = (StructApartmentData){96, (Byte *)data.bytes, 3, 191};
        _app_towerTitle = [self StringFromApartmentData:&value];
    }
    return _app_towerTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFCommonTableData.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"

//: @implementation NIMCommonTableSection
@implementation ContentTagSection

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithPinReceive:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[[ApartmentData sharedInstance].user_negativeData] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _headerTitle = dict[@"headerTitle"];
        _headerTitle = dict[[ApartmentData sharedInstance].show_redMorningId];
        //: _footerTitle = dict[@"footerTitle"];
        _footerTitle = dict[[ApartmentData sharedInstance].m_guaranteePath];
        //: _uiFooterHeight = [dict[@"footerHeight"] floatValue];
        _uiFooterHeight = [dict[[ApartmentData sharedInstance].notiPiClassifyMsg] floatValue];
        //: _uiHeaderHeight = [dict[@"headerHeight"] floatValue];
        _uiHeaderHeight = [dict[[ApartmentData sharedInstance].user_textMessage] floatValue];
        //: _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        //: _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        //: _rows = [NIMCommonTableRow rowsWithData:dict[@"row"]];
        _rows = [PublicAppearRow size:dict[[ApartmentData sharedInstance].app_towerTitle]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)sectionsWithData:(NSArray *)data{
+ (NSArray *)member:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableSection * section = [[NIMCommonTableSection alloc] initWithDict:dict];
            ContentTagSection * section = [[ContentTagSection alloc] initWithPinReceive:dict];
            //: if (section) {
            if (section) {
                //: [array addObject:section];
                [array addObject:section];
            }
        }
    }
    //: return array;
    return array;
}


//: @end
@end



//: @implementation NIMCommonTableRow
@implementation PublicAppearRow

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithButtonClean:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[[ApartmentData sharedInstance].user_negativeData] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _title = dict[@"title"];
        _title = dict[[ApartmentData sharedInstance].user_redStr];
        //: _detailTitle = dict[@"detailTitle"];
        _detailTitle = dict[[ApartmentData sharedInstance].showDeserveValue];
        //: _cellClassName = dict[@"cellClass"];
        _cellClassName = dict[[ApartmentData sharedInstance].mainFurtherAwlStr];
        //: _cellActionName = dict[@"action"];
        _cellActionName = dict[[ApartmentData sharedInstance].show_numberData];
        //: _uiRowHeight = dict[@"rowHeight"] ? [dict[@"rowHeight"] floatValue] : 50.f;
        _uiRowHeight = dict[[ApartmentData sharedInstance].m_realistCrisisMessage] ? [dict[[ApartmentData sharedInstance].m_realistCrisisMessage] floatValue] : 50.f;
        //: _extraInfo = dict[@"extraInfo"];
        _extraInfo = dict[[ApartmentData sharedInstance].dream_representTitle];
        //: _sepLeftEdge = [dict[@"leftEdge"] floatValue];
        _sepLeftEdge = [dict[[ApartmentData sharedInstance].mBottomFormat] floatValue];
        //: _showAccessory = [dict[@"accessory"] boolValue];
        _showAccessory = [dict[[ApartmentData sharedInstance].kDemonExplainTitle] boolValue];
        //: _forbidSelect = [dict[@"forbidSelect"] boolValue];
        _forbidSelect = [dict[[ApartmentData sharedInstance].noti_verticalText] boolValue];
        //: _userInteractionDisable = [dict[@"disableUserInteraction"] boolValue];
        _userInteractionDisable = [dict[[ApartmentData sharedInstance].appCentralMsg] boolValue];
        //: _language = dict[@"language"];
        _language = dict[[ApartmentData sharedInstance].user_whetherHormoneUncertainContent];
    }
    //: return self;
    return self;
}

//: + (NSArray *)rowsWithData:(NSArray *)data{
+ (NSArray *)size:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableRow * row = [[NIMCommonTableRow alloc] initWithDict:dict];
            PublicAppearRow * row = [[PublicAppearRow alloc] initWithButtonClean:dict];
            //: if (row) {
            if (row) {
                //: [array addObject:row];
                [array addObject:row];
            }
        }
    }
    //: return array;
    return array;
}


//: @end
@end