
#import <Foundation/Foundation.h>

@interface VoiceData : NSObject

@end

@implementation VoiceData

+ (Byte *)VoiceDataToCache:(Byte *)data {
    int idealInmate = data[0];
    Byte touristFactor = data[1];
    int hq = data[2];
    for (int i = hq; i < hq + idealInmate; i++) {
        int value = data[i] - touristFactor;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[hq + idealInmate] = 0;
    return data + hq;
}

+ (NSString *)StringFromVoiceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VoiceDataToCache:data]];
}

//: LaunchImage
+ (NSString *)show_finCargoValue {
    /* static */ NSString *show_finCargoValue = nil;
    if (!show_finCargoValue) {
        Byte value[] = {11, 5, 9, 136, 153, 19, 199, 65, 122, 81, 102, 122, 115, 104, 109, 78, 114, 102, 108, 106, 144};
        show_finCargoValue = [self StringFromVoiceData:value];
    }
    return show_finCargoValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "WaitViewController.h"
#import "AmbushViewController.h"

//: @interface WaitViewController ()
@interface AmbushViewController ()

//: @end
@end

//: @implementation WaitViewController
@implementation AmbushViewController

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: UIImageView *bgImgV = [[UIImageView alloc] init];
    UIImageView *bgImgV = [[UIImageView alloc] init];
    //: bgImgV.image = [UIImage imageNamed:@"LaunchImage"];
    bgImgV.image = [UIImage imageNamed:[VoiceData show_finCargoValue]];
    //: bgImgV.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    bgImgV.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    //: [self.view addSubview:bgImgV];
    [self.view addSubview:bgImgV];
}

//: @end
@end