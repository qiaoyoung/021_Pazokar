
#import <Foundation/Foundation.h>

NSString *StringFromCountlyForbidData(Byte *data);


//: kSSZipArchiveManagerVersionKey
Byte notiHeapId[] = {46, 30, 81, 6, 209, 15, 188, 164, 164, 171, 186, 193, 146, 195, 180, 185, 186, 199, 182, 158, 178, 191, 178, 184, 182, 195, 167, 182, 195, 196, 186, 192, 191, 156, 182, 202, 176};

//: Image
Byte appNimIdent[] = {29, 5, 4, 12, 234, 203, 191, 211, 184, 187, 198, 220, 77, 113, 101, 107, 105, 124};

//: %@@%dx.png
Byte dreamJungleTermsValue[] = {98, 10, 17, 10, 232, 81, 69, 31, 98, 174, 54, 81, 81, 54, 117, 137, 63, 129, 127, 120, 145};

//: %@.png
Byte app_filePsychologistData[] = {15, 6, 46, 6, 82, 200, 83, 110, 92, 158, 156, 149, 106};

//: AlongsideTruth
Byte user_beerPath[] = {92, 14, 56, 12, 118, 150, 163, 70, 113, 74, 150, 51, 121, 164, 167, 166, 159, 171, 161, 156, 157, 140, 170, 173, 172, 160, 40};

//: %@.imageset
Byte showMigrationOptionFormat[] = {98, 11, 32, 8, 4, 94, 140, 134, 69, 96, 78, 137, 141, 129, 135, 133, 147, 133, 148, 31};

//: .zip
Byte dream_handleData[] = {42, 4, 34, 12, 59, 215, 91, 157, 149, 3, 74, 29, 80, 156, 139, 146, 151};

//: Voice
Byte appHostageLineKey[] = {70, 5, 67, 4, 153, 178, 172, 166, 168, 67};

//: Emoji
Byte kShuttleText[] = {93, 5, 53, 7, 240, 33, 188, 122, 162, 164, 159, 158, 70};

//: file
Byte m_aspectData[] = {94, 4, 51, 4, 153, 156, 159, 152, 208};

//: xml_file
Byte notiTightenId[] = {39, 8, 95, 5, 21, 215, 204, 203, 190, 197, 200, 203, 196, 37};

//: Lproj
Byte app_reliabilityName[] = {13, 5, 12, 7, 174, 229, 215, 88, 124, 126, 123, 118, 66};

//: html
Byte show_makeShouldMessage[] = {29, 4, 38, 11, 70, 164, 188, 59, 7, 35, 199, 142, 154, 147, 146, 52};

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "SSZipArchiveManager.h"
#import "ValuePraise.h"
//: #import "NTESMigrateHeader.h"
#import "DateHeader.h"

//: @interface SSZipArchiveManager()
@interface ValuePraise()

//: @property (nonatomic, strong) NSString *appResPath;
@property (nonatomic, strong) NSString *appResPath;

//: @end
@end

//: @implementation SSZipArchiveManager
@implementation ValuePraise

//: + (instancetype)sharedManager {
+ (instancetype)show {
    //: static SSZipArchiveManager *sharedInstance = nil;
    static ValuePraise *sharedInstance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [[self alloc] init];
        sharedInstance = [[self alloc] init];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static SSZipArchiveManager *sharedInstance = nil;
    static ValuePraise *sharedInstance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [super allocWithZone:zone];
        sharedInstance = [super allocWithZone:zone];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)selectedKey:(NSZone *)zone {
    //: return self;
    return self;
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _appResPath = [self calculateAppResPath];
        _appResPath = [self button];
    }
    //: return self;
    return self;
}

//: - (NSString *)calculateAppResPath {
- (NSString *)button {
    //: NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    //: NSString *resDir = [docuPath stringByAppendingPathComponent:@"AlongsideTruth"];
    NSString *resDir = [docuPath stringByAppendingPathComponent:StringFromCountlyForbidData(user_beerPath)];

    //: NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:@"kSSZipArchiveManagerVersionKey"];
    NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:StringFromCountlyForbidData(notiHeapId)];
    //: if (!version) {
    if (!version) {
        //: version = @""; 
        version = @""; // Default to empty string if nil
    }


    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
    if ([version isEqualToString:[DateHeader initWithRecentOn].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        //: return resDir;
        return resDir;
    }

    //: NSString *fileResDir = [[docuPath stringByAppendingPathComponent:@"file"] stringByAppendingPathComponent:@"AlongsideTruth"];
    NSString *fileResDir = [[docuPath stringByAppendingPathComponent:StringFromCountlyForbidData(m_aspectData)] stringByAppendingPathComponent:StringFromCountlyForbidData(user_beerPath)];
    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
    if ([version isEqualToString:[DateHeader initWithRecentOn].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
        //: return fileResDir;
        return fileResDir;
    }

    //: NSString *path = [[MyUserKit sharedKit].emoticonBundle pathForResource:@"AlongsideTruth" ofType:@".zip"];
    NSString *path = [[Case pastTop].emoticonBundle pathForResource:StringFromCountlyForbidData(user_beerPath) ofType:StringFromCountlyForbidData(dream_handleData)];
    //: if (!path) {
    if (!path) {
        //: return @""; 
        return @""; // Return empty string if path is nil
    }

    //: BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
    BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
                                 //: toDestination:docuPath
                                 toDestination:docuPath
                                     //: overwrite:YES
                                     overwrite:YES
                                      //: password:@"AlongsideTruth"
                                      password:StringFromCountlyForbidData(user_beerPath)
                                         //: error:nil];
                                         error:nil];
    //: if (zipSuc) {
    if (zipSuc) {
        //: [[NSUserDefaults standardUserDefaults] setObject:[NTESMigrateHeader initWithDefaultConfig].appVersion forKey:@"kSSZipArchiveManagerVersionKey"];
        [[NSUserDefaults standardUserDefaults] setObject:[DateHeader initWithRecentOn].appVersion forKey:StringFromCountlyForbidData(notiHeapId)];
        //: [[NSUserDefaults standardUserDefaults] synchronize];
        [[NSUserDefaults standardUserDefaults] synchronize];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
            //: return resDir;
            return resDir;
        //: } else {
        } else {
            //: return fileResDir;
            return fileResDir;
        }
    }

    //: return @""; 
    return @""; // Return empty string if unzip fails
}

//: - (NSString *)getHtml_filePath {
- (NSString *)user {
    //: return [_appResPath stringByAppendingPathComponent:@"html"];
    return [_appResPath stringByAppendingPathComponent:StringFromCountlyForbidData(show_makeShouldMessage)];
}

//: - (NSString *)getXML_filePath {
- (NSString *)session {
    //: return [_appResPath stringByAppendingPathComponent:@"xml_file"];
    return [_appResPath stringByAppendingPathComponent:StringFromCountlyForbidData(notiTightenId)];
}

//: - (NSString *)getEmojiPath {
- (NSString *)message {
    //: return [_appResPath stringByAppendingPathComponent:@"Emoji"];
    return [_appResPath stringByAppendingPathComponent:StringFromCountlyForbidData(kShuttleText)];
}

//: - (NSString *)getLprojPath {
- (NSString *)ting {
    //: return [_appResPath stringByAppendingPathComponent:@"Lproj"];
    return [_appResPath stringByAppendingPathComponent:StringFromCountlyForbidData(app_reliabilityName)];
}

//: - (NSString *)getVoicePath {
- (NSString *)getWithPath {
    //: return [_appResPath stringByAppendingPathComponent:@"Voice"];
    return [_appResPath stringByAppendingPathComponent:StringFromCountlyForbidData(appHostageLineKey)];
}

//: - (NSString *)getImagesPath {
- (NSString *)messageTitlePath {
    //: return [_appResPath stringByAppendingPathComponent:@"Image"];
    return [_appResPath stringByAppendingPathComponent:StringFromCountlyForbidData(appNimIdent)];
}

//: - (UIImage *)zip_imageNamed:(NSString *)name {
- (UIImage *)mying:(NSString *)name {
    // 构建 imageset 路径
    //: NSString *imagesetPath = [[self getImagesPath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.imageset", name]];
    NSString *imagesetPath = [[self messageTitlePath] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromCountlyForbidData(showMigrationOptionFormat), name]];

    // 尝试加载 @2x 和 @3x 图片
    //: CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat scale = [UIScreen mainScreen].scale;
    //: NSString *scaledName = [NSString stringWithFormat:@"%@@%dx.png", name, (int)scale];
    NSString *scaledName = [NSString stringWithFormat:StringFromCountlyForbidData(dreamJungleTermsValue), name, (int)scale];
    //: NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];
    NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
        //: return [UIImage imageWithContentsOfFile:scaledPath];
        return [UIImage imageWithContentsOfFile:scaledPath];
    }

    // 降级到其他倍数图片
    //: NSString *altScaleName = [NSString stringWithFormat:@"%@@%dx.png", name, (scale == 2 ? 3 : 2)];
    NSString *altScaleName = [NSString stringWithFormat:StringFromCountlyForbidData(dreamJungleTermsValue), name, (scale == 2 ? 3 : 2)];
    //: NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];
    NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
        //: return [UIImage imageWithContentsOfFile:altScalePath];
        return [UIImage imageWithContentsOfFile:altScalePath];
    }

    // 最后尝试普通图片
    //: NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", name]];
    NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:StringFromCountlyForbidData(app_filePsychologistData), name]];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
        //: return [UIImage imageWithContentsOfFile:normalPath];
        return [UIImage imageWithContentsOfFile:normalPath];
    }

    //: return nil;
    return nil;
}

//: @end
@end

Byte * CountlyForbidDataToCache(Byte *data) {
    int heap = data[0];
    int fainRecord = data[1];
    Byte controlBee = data[2];
    int cooperationEating = data[3];
    if (!heap) return data + cooperationEating;
    for (int i = cooperationEating; i < cooperationEating + fainRecord; i++) {
        int value = data[i] - controlBee;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[cooperationEating + fainRecord] = 0;
    return data + cooperationEating;
}

NSString *StringFromCountlyForbidData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)CountlyForbidDataToCache(data)];
}
