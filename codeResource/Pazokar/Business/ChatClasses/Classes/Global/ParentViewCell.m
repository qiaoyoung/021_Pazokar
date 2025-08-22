
#import <Foundation/Foundation.h>

typedef struct {
    Byte swine;
    Byte *crag;
    unsigned int bottomCorner;
	int sr;
	int customer;
	int pi;
} StructCounterpartData;

@interface CounterpartData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation CounterpartData

+ (instancetype)sharedInstance {
    static CounterpartData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)CounterpartDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)CounterpartDataToByte:(StructCounterpartData *)data {
    for (int i = 0; i < data->bottomCorner; i++) {
        data->crag[i] ^= data->swine;
    }
    data->crag[data->bottomCorner] = 0;
	if (data->bottomCorner >= 3) {
		data->sr = data->crag[0];
		data->customer = data->crag[1];
		data->pi = data->crag[2];
	}
    return data->crag;
}

- (NSString *)StringFromCounterpartData:(StructCounterpartData *)data {
    return [NSString stringWithUTF8String:(char *)[self CounterpartDataToByte:data]];
}

//: #A148FF
- (NSString *)m_fiveVerticalId {
    /* static */ NSString *m_fiveVerticalId = nil;
    if (!m_fiveVerticalId) {
		NSArray<NSString *> *origin = @[@"200", @"170", @"218", @"223", @"211", @"173", @"173", @"107"];
		NSData *data = [CounterpartData CounterpartDataToData:origin];
        StructCounterpartData value = (StructCounterpartData){235, (Byte *)data.bytes, 7, 99, 240, 185};
        m_fiveVerticalId = [self StringFromCounterpartData:&value];
    }
    return m_fiveVerticalId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSettingPushNotifySwitcherCell.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitSwitcherCell.h"
#import "ParentViewCell.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"

//: @interface FFFKitSwitcherCell ()
@interface ParentViewCell ()

//: @end
@end

//: @implementation FFFKitSwitcherCell
@implementation ParentViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        _switcher = [[UISwitch alloc] initWithFrame:CGRectZero];
        //: _switcher.onTintColor = [UIColor colorWithHexString:@"#A148FF"];
        _switcher.onTintColor = [UIColor status:[[CounterpartData sharedInstance] m_fiveVerticalId]];
        //: [self.contentView addSubview:_switcher];
        [self.contentView addSubview:_switcher];
    }
    //: return self;
    return self;
}


//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)should:(PublicAppearRow *)rowData position_strong:(UITableView *)tableView{
    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *actionName = rowData.cellActionName;
    NSString *actionName = rowData.cellActionName;
    //: [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    [self.switcher setOn:[rowData.extraInfo boolValue] animated:NO];
    //: [self.switcher removeTarget:self.nim_viewController action:NULL forControlEvents:UIControlEventValueChanged];
    [self.switcher removeTarget:self.language action:NULL forControlEvents:UIControlEventValueChanged];
    //: if (actionName.length) {
    if (actionName.length) {
        //: SEL sel = NSSelectorFromString(actionName);
        SEL sel = NSSelectorFromString(actionName);
        //: [self.switcher addTarget:tableView.nim_viewController action:sel forControlEvents:UIControlEventValueChanged];
        [self.switcher addTarget:tableView.language action:sel forControlEvents:UIControlEventValueChanged];
    }
}




//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.switcher.nim_right = self.nim_width - 15;
    self.switcher.nim_right = self.nim_width - 15;
    //: self.switcher.nim_centerY = self.nim_height * .5f;
    self.switcher.nim_centerY = self.nim_height * .5f;
}

//: @end
@end