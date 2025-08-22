
#import <Foundation/Foundation.h>

typedef struct {
    Byte sideView;
    Byte *ahFile;
    unsigned int redDefensive;
	int guitarSizeChild;
} StructAssertiveData;

@interface AssertiveData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AssertiveData

+ (instancetype)sharedInstance {
    static AssertiveData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)AssertiveDataToData:(NSString *)value {
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

- (Byte *)AssertiveDataToByte:(StructAssertiveData *)data {
    for (int i = 0; i < data->redDefensive; i++) {
        data->ahFile[i] ^= data->sideView;
    }
    data->ahFile[data->redDefensive] = 0;
	if (data->redDefensive >= 1) {
		data->guitarSizeChild = data->ahFile[0];
	}
    return data->ahFile;
}

- (NSString *)StringFromAssertiveData:(StructAssertiveData *)data {
    return [NSString stringWithUTF8String:(char *)[self AssertiveDataToByte:data]];
}

//: head_default_group
- (NSString *)k_proximateStr {
    /* static */ NSString *k_proximateStr = nil;
    if (!k_proximateStr) {
		NSString *origin = @"101d191c271c1d1e190d140c271f0a170d08d0";
		NSData *data = [AssertiveData AssertiveDataToData:origin];
        StructAssertiveData value = (StructAssertiveData){120, (Byte *)data.bytes, 18, 208};
        k_proximateStr = [self StringFromAssertiveData:&value];
    }
    return k_proximateStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CustomFormatView.m
// Case
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "BusyAvatarImageView.h"
#import "CustomFormatView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "objc/runtime.h"
#import "objc/runtime.h"
//: #import "BusyKitDependency.h"
#import "BusyKitDependency.h"
//: #import "MyUserKit.h"
#import "Case.h"
//: #import "BusyKitInfoFetchOption.h"
#import "InfoGreenImage.h"
//: #import "BusyKitUrlManager.h"
#import "DistanceManager.h"

//: @interface BusyAvatarImageView()
@interface CustomFormatView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation BusyAvatarImageView
@implementation CustomFormatView

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: [self setup];
        [self limit];
    }
    //: return self;
    return self;
}


//: - (id)initWithCoder:(NSCoder *)aDecoder
- (id)initWithCoder:(NSCoder *)aDecoder
{
    //: if (self = [super initWithCoder:aDecoder])
    if (self = [super initWithCoder:aDecoder])
    {
        //: [self setup];
        [self limit];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [self setupRadius];
    [self message];

    //: if (!__CGSizeEqualToSize(self.imageView.nim_size, self.nim_size))
    if (!__CGSizeEqualToSize(self.imageView.nim_size, self.nim_size))
    {
        //: self.imageView.nim_size = self.nim_size;
        self.imageView.nim_size = self.nim_size;
//        self.imageView.image = [self imageAddCorner:_image
//                                             radius:_cornerRadius
//                                            andSize:self.bounds.size];
        //: self.imageView.image = _image;
        self.imageView.image = _image;
    }

}

//: - (void)setup{
- (void)limit{
    //: [self setupRadius];
    [self message];
    //: _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    //: _imageView.contentMode = UIViewContentModeScaleAspectFill;
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    //: _imageView.clipsToBounds = YES;
    _imageView.clipsToBounds = YES;
    //: [self addSubview:_imageView];
    [self addSubview:_imageView];
    //: _imageView.layer.masksToBounds = YES;
    _imageView.layer.masksToBounds = YES;
    //: _imageView.layer.cornerRadius = _cornerRadius;
    _imageView.layer.cornerRadius = _cornerRadius;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

}


//: - (void)setupRadius{
- (void)message{
    //: switch ([MyUserKit sharedKit].config.avatarType)
    switch ([Case pastTop].config.avatarType)
    {
        //: case NIMKitAvatarTypeNone:
        case NIMKitAvatarTypeNone:
            //: _cornerRadius = 0;
            _cornerRadius = 0;
            //: break;
            break;
        //: case NIMKitAvatarTypeRounded:
        case NIMKitAvatarTypeRounded:
            //: _cornerRadius = self.nim_width *.5f;
            _cornerRadius = self.nim_width *.5f;//self.nim_width *.5f;
            //: break;
            break;
        //: case NIMKitAvatarTypeRadiusCorner:
        case NIMKitAvatarTypeRadiusCorner:
            //: _cornerRadius = self.nim_width *.5f;
            _cornerRadius = self.nim_width *.5f;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}


//: - (void)setImage:(UIImage *)image
- (void)setImage:(UIImage *)image
{
    //: if (_image != image)
    if (_image != image)
    {
        //: _image = image;
        _image = image;
//        UIImage *fixedImage  = [self imageAddCorner:_image
//                                             radius:_cornerRadius
//                                            andSize:self.bounds.size];
        //: self.imageView.image = image;
        self.imageView.image = image;
    }
}

//: - (UIImage*)imageAddCorner:(UIImage *)image radius:(CGFloat)radius andSize:(CGSize)size
- (UIImage*)tinkle:(UIImage *)image towardSupplement:(CGFloat)radius minTo:(CGSize)size
{
    //: CGRect rect = CGRectMake(0, 0, size.width, size.height);
    CGRect rect = CGRectMake(0, 0, size.width, size.height);

    //: UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    //: CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //: CGPathRef path = self.path;
    CGPathRef path = self.media;
    //: CGContextAddPath(ctx,path);
    CGContextAddPath(ctx,path);
    //: CGContextClip(ctx);
    CGContextClip(ctx);
    //: [image drawInRect:rect];
    [image drawInRect:rect];
    //: CGContextDrawPath(ctx, kCGPathFillStroke);
    CGContextDrawPath(ctx, kCGPathFillStroke);
    //: UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return newImage;
    return newImage;
}

//: - (CGPathRef)path
- (CGPathRef)media
{
    //: return [[UIBezierPath bezierPathWithRoundedRect:self.bounds
    return [[UIBezierPath bezierPathWithRoundedRect:self.bounds
                                       //: cornerRadius:self.cornerRadius] CGPath];
                                       cornerRadius:self.cornerRadius] CGPath];
}

//: - (void)setAvatarBySession:(NIMSession *)session
- (void)setLetter:(NIMSession *)session
{
    //: BusyKitInfo *info = nil;
    Info *info = nil;
    //: if (session.sessionType == NIMSessionTypeTeam) {
    if (session.sessionType == NIMSessionTypeTeam) {
        //: info = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil];
        info = [[Case pastTop] controlOption:session.sessionId my:nil];
//        info.avatarImage = [UIImage grayImageWithName:@"contact_group_header" color:RGB_COLOR_String(kCommonBGColor_All)];
        //: info.avatarImage = [UIImage imageNamed:@"head_default_group"];
        info.avatarImage = [UIImage imageNamed:[[AssertiveData sharedInstance] k_proximateStr]];
    //: } else if (session.sessionType == NIMSessionTypeSuperTeam) {
    } else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: info = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil];
        info = [[Case pastTop] ting:session.sessionId container:nil];
//        info.avatarImage = [UIImage grayImageWithName:@"contact_group_header" color:RGB_COLOR_String(kCommonBGColor_All)];
        //: info.avatarImage = [UIImage imageNamed:@"head_default_group"];
        info.avatarImage = [UIImage imageNamed:[[AssertiveData sharedInstance] k_proximateStr]];
    //: } else {
    } else {
        //: BusyKitInfoFetchOption *option = [[BusyKitInfoFetchOption alloc] init];
        InfoGreenImage *option = [[InfoGreenImage alloc] init];
        //: option.session = session;
        option.session = session;
        //: info = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option];
        info = [[Case pastTop] consumer:session.sessionId message:option];
    }
    //: [self setImageWithUrlString:info.avatarUrlString placeholderImage:info.avatarImage options:0];
    [self title:info.avatarUrlString add:info.avatarImage cell:0];
}

//: - (void)setAvatarByMessage:(NIMMessage *)message
- (void)setBeginView:(NIMMessage *)message
{
    //: BusyKitInfoFetchOption *option = [[BusyKitInfoFetchOption alloc] init];
    InfoGreenImage *option = [[InfoGreenImage alloc] init];
    //: option.message = message;
    option.message = message;
    //: NSString *from = message.from;
    NSString *from = message.from;
    //: BusyKitInfo *info = [[MyUserKit sharedKit] infoByUser:from option:option];
    Info *info = [[Case pastTop] consumer:from message:option];
    //: [self setImageWithUrlString:info.avatarUrlString placeholderImage:info.avatarImage options:0];
    [self title:info.avatarUrlString add:info.avatarImage cell:0];
}

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder {
- (void)anyOn:(NSURL *)url model:(UIImage *)placeholder {
    //: [self setImageWithUrlString:url.absoluteString placeholderImage:placeholder options:0];
    [self title:url.absoluteString add:placeholder cell:0];
}

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options {
- (void)keyShared:(NSURL *)url view:(UIImage *)placeholder extra:(SDWebImageOptions)options {
    //: [self setImageWithUrlString:url.absoluteString placeholderImage:placeholder options:options];
    [self title:url.absoluteString add:placeholder cell:options];
}

//: - (void)setImageWithUrlString:(NSString *)urlString placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options {
- (void)title:(NSString *)urlString add:(UIImage *)placeholderImage cell:(SDWebImageOptions)options {
    //: if (placeholderImage && self.image != placeholderImage) {
    if (placeholderImage && self.image != placeholderImage) {
        //: self.image = placeholderImage;
        self.image = placeholderImage;
    }
    //: if (urlString.length == 0) {
    if (urlString.length == 0) {
        //: return;
        return;
    }

    //查询
    //: __block NSURL *targetUrl = nil;
    __block NSURL *targetUrl = nil;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[BusyKitUrlManager shareManager] queryQriginalUrlWithShortUrl:urlString completion:^(NSString *originalUrl, NSError *error) {
    [[DistanceManager fast] pressed:urlString momentaryTeam:^(NSString *originalUrl, NSError *error) {
        //: if (urlString && !error) {
        if (urlString && !error) {
            //: targetUrl = [NSURL URLWithString:originalUrl];
            targetUrl = [NSURL URLWithString:originalUrl];
        //: } else {
        } else {
            //: targetUrl = [NSURL URLWithString:urlString];
            targetUrl = [NSURL URLWithString:urlString];
        }
        //: [weakSelf didSetImageUrl:targetUrl placeholderImage:placeholderImage options:options];
        [weakSelf refresh:targetUrl spick:placeholderImage image:options];
    //: }];
    }];
}

//: - (void)didSetImageUrl:(NSURL *)url placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options {
- (void)refresh:(NSURL *)url spick:(UIImage *)placeholderImage image:(SDWebImageOptions)options {
    //: if (!url) {
    if (!url) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
//    UIImage *fixedPlaceholderImage  = [self imageAddCorner:placeholderImage
//                                                    radius:_cornerRadius
//                                                   andSize:self.bounds.size];

    //: UIImage *fixedPlaceholderImage = placeholderImage;
    UIImage *fixedPlaceholderImage = placeholderImage;

    //: [_imageView sd_setImageWithURL:url
    [_imageView sd_setImageWithURL:url
                  //: placeholderImage:fixedPlaceholderImage
                  placeholderImage:fixedPlaceholderImage
                           //: options:SDWebImageAvoidAutoSetImage|SDWebImageDelayPlaceholder
                           options:SDWebImageAvoidAutoSetImage|SDWebImageDelayPlaceholder
                         //: completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                         completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        //: if (image) {
        if (image) {
            //weakSelf.image = image;
            //: _imageView.image = image;
            _imageView.image = image;
            //: _image = image;
            _image = image;
        }

    //: }];
    }];


}
//: @end
@end
