
#import <Foundation/Foundation.h>

@interface ChapterData : NSObject

+ (instancetype)sharedInstance;

//: %@pDefaults
@property (nonatomic, copy) NSString *user_nameStr;

//: setu
@property (nonatomic, copy) NSString *showImageMinMakePath;

//: Unsupported type of property \"%s\" in class %@
@property (nonatomic, copy) NSString *userEmphasizeTitle;

@end

@implementation ChapterData

+ (instancetype)sharedInstance {
    static ChapterData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)ChapterDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)ChapterDataToCache:(Byte *)data {
    int irishPotato = data[0];
    Byte vote = data[1];
    int overseeRecommend = data[2];
    for (int i = overseeRecommend; i < overseeRecommend + irishPotato; i++) {
        int value = data[i] + vote;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[overseeRecommend + irishPotato] = 0;
    return data + overseeRecommend;
}

- (NSString *)StringFromChapterData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ChapterDataToCache:data]];
}

//: setu
- (NSString *)showImageMinMakePath {
    if (!_showImageMinMakePath) {
		NSArray<NSNumber *> *origin = @[@4, @34, @13, @253, @166, @135, @213, @92, @248, @57, @142, @122, @186, @81, @67, @82, @83, @109];
		NSData *data = [ChapterData ChapterDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _showImageMinMakePath = [self StringFromChapterData:value];
    }
    return _showImageMinMakePath;
}

//: %@pDefaults
- (NSString *)user_nameStr {
    if (!_user_nameStr) {
		NSArray<NSNumber *> *origin = @[@11, @80, @3, @213, @240, @32, @244, @21, @22, @17, @37, @28, @36, @35, @204];
		NSData *data = [ChapterData ChapterDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _user_nameStr = [self StringFromChapterData:value];
    }
    return _user_nameStr;
}

//: Unsupported type of property \"%s\" in class %@
- (NSString *)userEmphasizeTitle {
    if (!_userEmphasizeTitle) {
		NSArray<NSNumber *> *origin = @[@45, @69, @6, @162, @46, @169, @16, @41, @46, @48, @43, @43, @42, @45, @47, @32, @31, @219, @47, @52, @43, @32, @219, @42, @33, @219, @43, @45, @42, @43, @32, @45, @47, @52, @219, @221, @224, @46, @221, @219, @36, @41, @219, @30, @39, @28, @46, @46, @219, @224, @251, @150];
		NSData *data = [ChapterData ChapterDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _userEmphasizeTitle = [self StringFromChapterData:value];
    }
    return _userEmphasizeTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DataMaxDefaults.m
//  DataMaxDefaults
//
//  Created by Kevin Renskers on 18-12-12.
//  Copyright (c) 2012 Gangverk. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NIMUserDefaults.h"
#import "DataMaxDefaults.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @interface NIMUserDefaults ()
@interface DataMaxDefaults ()
//: @property (strong, nonatomic) NSMutableDictionary *mapping;
@property (strong, nonatomic) NSMutableDictionary *mapping;
//: @property (strong, nonatomic) NSUserDefaults *userDefaults;
@property (strong, nonatomic) NSUserDefaults *userDefaults;
//: @end
@end

//: @implementation NIMUserDefaults
@implementation DataMaxDefaults

//: enum TypeEncodings {
enum TypeEncodings {
    //: Char = 'c',
    Char = 'c',
    //: Bool = 'B',
    Bool = 'B',
    //: Short = 's',
    Short = 's',
    //: Int = 'i',
    Int = 'i',
    //: Long = 'l',
    Long = 'l',
    //: LongLong = 'q',
    LongLong = 'q',
    //: UnsignedChar = 'C',
    UnsignedChar = 'C',
    //: UnsignedShort = 'S',
    UnsignedShort = 'S',
    //: UnsignedInt = 'I',
    UnsignedInt = 'I',
    //: UnsignedLong = 'L',
    UnsignedLong = 'L',
    //: UnsignedLongLong = 'Q',
    UnsignedLongLong = 'Q',
    //: Float = 'f',
    Float = 'f',
    //: Double = 'd',
    Double = 'd',
    //: Object = '@'
    Object = '@'
//: };
};

//: - (NSUserDefaults *)userDefaults {
- (NSUserDefaults *)userDefaults {
    //: if (!_userDefaults) {
    if (!_userDefaults) {
        //: _userDefaults = [NSUserDefaults standardUserDefaults];
        _userDefaults = [NSUserDefaults standardUserDefaults];
    }

    //: return _userDefaults;
    return _userDefaults;
}

//: - (NSString *)defaultsKeyForPropertyNamed:(char const *)propertyName {
- (NSString *)fullMoon:(char const *)propertyName {
    //: NSString *key = [NSString stringWithFormat:@"%s", propertyName];
    NSString *key = [NSString stringWithFormat:@"%s", propertyName];
    //: return [self _transformKey:key];
    return [self center:key];
}

//: - (NSString *)defaultsKeyForSelector:(SEL)selector {
- (NSString *)array:(SEL)selector {
    //: return [self.mapping objectForKey:NSStringFromSelector(selector)];
    return [self.mapping objectForKey:NSStringFromSelector(selector)];
}

//: static long long longLongGetter(NIMUserDefaults *self, SEL _cmd) {
static long long yieldInside(DataMaxDefaults *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self array:_cmd];
    //: return [[self.userDefaults objectForKey:key] longLongValue];
    return [[self.userDefaults objectForKey:key] longLongValue];
}

//: static void longLongSetter(NIMUserDefaults *self, SEL _cmd, long long value) {
static void imageIndex(DataMaxDefaults *self, SEL _cmd, long long value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self array:_cmd];
    //: NSNumber *object = [NSNumber numberWithLongLong:value];
    NSNumber *object = [NSNumber numberWithLongLong:value];
    //: [self.userDefaults setObject:object forKey:key];
    [self.userDefaults setObject:object forKey:key];
}

//: static BOOL boolGetter(NIMUserDefaults *self, SEL _cmd) {
static BOOL managerGetter(DataMaxDefaults *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self array:_cmd];
    //: return [self.userDefaults boolForKey:key];
    return [self.userDefaults boolForKey:key];
}

//: static void boolSetter(NIMUserDefaults *self, SEL _cmd, BOOL value) {
static void nameValueVia(DataMaxDefaults *self, SEL _cmd, BOOL value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self array:_cmd];
    //: [self.userDefaults setBool:value forKey:key];
    [self.userDefaults setBool:value forKey:key];
}

//: static int integerGetter(NIMUserDefaults *self, SEL _cmd) {
static int infoBox(DataMaxDefaults *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self array:_cmd];
    //: return (int)[self.userDefaults integerForKey:key];
    return (int)[self.userDefaults integerForKey:key];
}

//: static void integerSetter(NIMUserDefaults *self, SEL _cmd, int value) {
static void teamSize(DataMaxDefaults *self, SEL _cmd, int value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self array:_cmd];
    //: [self.userDefaults setInteger:value forKey:key];
    [self.userDefaults setInteger:value forKey:key];
}

//: static float floatGetter(NIMUserDefaults *self, SEL _cmd) {
static float modeLocalTime(DataMaxDefaults *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self array:_cmd];
    //: return [self.userDefaults floatForKey:key];
    return [self.userDefaults floatForKey:key];
}

//: static void floatSetter(NIMUserDefaults *self, SEL _cmd, float value) {
static void ratioEventSetter(DataMaxDefaults *self, SEL _cmd, float value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self array:_cmd];
    //: [self.userDefaults setFloat:value forKey:key];
    [self.userDefaults setFloat:value forKey:key];
}

//: static double doubleGetter(NIMUserDefaults *self, SEL _cmd) {
static double actionGetter(DataMaxDefaults *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self array:_cmd];
    //: return [self.userDefaults doubleForKey:key];
    return [self.userDefaults doubleForKey:key];
}

//: static void doubleSetter(NIMUserDefaults *self, SEL _cmd, double value) {
static void mediaMe(DataMaxDefaults *self, SEL _cmd, double value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self array:_cmd];
    //: [self.userDefaults setDouble:value forKey:key];
    [self.userDefaults setDouble:value forKey:key];
}

//: static id objectGetter(NIMUserDefaults *self, SEL _cmd) {
static id solidGround(DataMaxDefaults *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self array:_cmd];
    //: return [self.userDefaults objectForKey:key];
    return [self.userDefaults objectForKey:key];
}

//: static void objectSetter(NIMUserDefaults *self, SEL _cmd, id object) {
static void eventPerform(DataMaxDefaults *self, SEL _cmd, id object) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self array:_cmd];
    //: if (object) {
    if (object) {
        //: [self.userDefaults setObject:object forKey:key];
        [self.userDefaults setObject:object forKey:key];
    //: } else {
    } else {
        //: [self.userDefaults removeObjectForKey:key];
        [self.userDefaults removeObjectForKey:key];
    }
}

//: #pragma mark - Begin
#pragma mark - Begin

//: + (instancetype)standardUserDefaults {
+ (instancetype)max {
    //: static dispatch_once_t pred;
    static dispatch_once_t pred;
    //: static NIMUserDefaults *sharedInstance = nil;
    static DataMaxDefaults *sharedInstance = nil;
    //: _dispatch_once(&pred, ^{ sharedInstance = [[self alloc] init]; });
    _dispatch_once(&pred, ^{ sharedInstance = [[self alloc] init]; });
    //: return sharedInstance;
    return sharedInstance;
}

//: #pragma GCC diagnostic push
#pragma GCC diagnostic push
//: #pragma GCC diagnostic ignored "-Wundeclared-selector"
#pragma GCC diagnostic ignored "-Wundeclared-selector"
//: #pragma GCC diagnostic ignored "-Warc-performSelector-leaks"
#pragma GCC diagnostic ignored "-Warc-performSelector-leaks"

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: SEL setupDefaultSEL = NSSelectorFromString([NSString stringWithFormat:@"%@pDefaults", @"setu"]);
        SEL setupDefaultSEL = NSSelectorFromString([NSString stringWithFormat:[ChapterData sharedInstance].user_nameStr, [ChapterData sharedInstance].showImageMinMakePath]);
        //: if ([self respondsToSelector:setupDefaultSEL]) {
        if ([self respondsToSelector:setupDefaultSEL]) {
            //: NSDictionary *defaults = [self performSelector:setupDefaultSEL];
            NSDictionary *defaults = [self performSelector:setupDefaultSEL];
            //: NSMutableDictionary *mutableDefaults = [NSMutableDictionary dictionaryWithCapacity:[defaults count]];
            NSMutableDictionary *mutableDefaults = [NSMutableDictionary dictionaryWithCapacity:[defaults count]];
            //: for (NSString *key in defaults) {
            for (NSString *key in defaults) {
                //: id value = [defaults objectForKey:key];
                id value = [defaults objectForKey:key];
                //: NSString *transformedKey = [self _transformKey:key];
                NSString *transformedKey = [self center:key];
                //: [mutableDefaults setObject:value forKey:transformedKey];
                [mutableDefaults setObject:value forKey:transformedKey];
            }
            //: [self.userDefaults registerDefaults:mutableDefaults];
            [self.userDefaults registerDefaults:mutableDefaults];
        }

        //: [self generateAccessorMethods];
        [self video];
    }

    //: return self;
    return self;
}

//: - (NSString *)_transformKey:(NSString *)key {
- (NSString *)center:(NSString *)key {
    //: if ([self respondsToSelector:@selector(transformKey:)]) {
    if ([self respondsToSelector:@selector(keyBy:)]) {
        //: return [self performSelector:@selector(transformKey:) withObject:key];
        return [self performSelector:@selector(keyBy:) withObject:key];
    }

    //: return key;
    return key;
}

//: #pragma GCC diagnostic pop
#pragma GCC diagnostic pop

//: - (void)generateAccessorMethods {
- (void)video {
    //: unsigned int count = 0;
    unsigned int count = 0;
    //: objc_property_t *properties = class_copyPropertyList([self class], &count);
    objc_property_t *properties = class_copyPropertyList([self class], &count);

    //: self.mapping = [NSMutableDictionary dictionary];
    self.mapping = [NSMutableDictionary dictionary];

    //: for (int i = 0; i < count; ++i) {
    for (int i = 0; i < count; ++i) {
        //: objc_property_t property = properties[i];
        objc_property_t property = properties[i];
        //: const char *name = property_getName(property);
        const char *name = property_getName(property);
        //: const char *attributes = property_getAttributes(property);
        const char *attributes = property_getAttributes(property);

        //: char *getter = strstr(attributes, ",G");
        char *getter = strstr(attributes, ",G");
        //: if (getter) {
        if (getter) {
            //: getter = strdup(getter + 2);
            getter = strdup(getter + 2);
            //: getter = strsep(&getter, ",");
            getter = strsep(&getter, ",");
        //: } else {
        } else {
            //: getter = strdup(name);
            getter = strdup(name);
        }
        //: SEL getterSel = sel_registerName(getter);
        SEL getterSel = sel_registerName(getter);
        //: free(getter);
        free(getter);

        //: char *setter = strstr(attributes, ",S");
        char *setter = strstr(attributes, ",S");
        //: if (setter) {
        if (setter) {
            //: setter = strdup(setter + 2);
            setter = strdup(setter + 2);
            //: setter = strsep(&setter, ",");
            setter = strsep(&setter, ",");
        //: } else {
        } else {
            //: asprintf(&setter, "set%c%s:", toupper(name[0]), name + 1);
            asprintf(&setter, "set%c%s:", toupper(name[0]), name + 1);
        }
        //: SEL setterSel = sel_registerName(setter);
        SEL setterSel = sel_registerName(setter);
        //: free(setter);
        free(setter);

        //: NSString *key = [self defaultsKeyForPropertyNamed:name];
        NSString *key = [self fullMoon:name];
        //: [self.mapping setValue:key forKey:NSStringFromSelector(getterSel)];
        [self.mapping setValue:key forKey:NSStringFromSelector(getterSel)];
        //: [self.mapping setValue:key forKey:NSStringFromSelector(setterSel)];
        [self.mapping setValue:key forKey:NSStringFromSelector(setterSel)];

        //: IMP getterImp = NULL;
        IMP getterImp = NULL;
        //: IMP setterImp = NULL;
        IMP setterImp = NULL;
        //: char type = attributes[1];
        char type = attributes[1];
        //: switch (type) {
        switch (type) {
            //: case Short:
            case Short:
            //: case Long:
            case Long:
            //: case LongLong:
            case LongLong:
            //: case UnsignedChar:
            case UnsignedChar:
            //: case UnsignedShort:
            case UnsignedShort:
            //: case UnsignedInt:
            case UnsignedInt:
            //: case UnsignedLong:
            case UnsignedLong:
            //: case UnsignedLongLong:
            case UnsignedLongLong:
                //: getterImp = (IMP)longLongGetter;
                getterImp = (IMP)yieldInside;
                //: setterImp = (IMP)longLongSetter;
                setterImp = (IMP)imageIndex;
                //: break;
                break;

            //: case Bool:
            case Bool:
            //: case Char:
            case Char:
                //: getterImp = (IMP)boolGetter;
                getterImp = (IMP)managerGetter;
                //: setterImp = (IMP)boolSetter;
                setterImp = (IMP)nameValueVia;
                //: break;
                break;

            //: case Int:
            case Int:
                //: getterImp = (IMP)integerGetter;
                getterImp = (IMP)infoBox;
                //: setterImp = (IMP)integerSetter;
                setterImp = (IMP)teamSize;
                //: break;
                break;

            //: case Float:
            case Float:
                //: getterImp = (IMP)floatGetter;
                getterImp = (IMP)modeLocalTime;
                //: setterImp = (IMP)floatSetter;
                setterImp = (IMP)ratioEventSetter;
                //: break;
                break;

            //: case Double:
            case Double:
                //: getterImp = (IMP)doubleGetter;
                getterImp = (IMP)actionGetter;
                //: setterImp = (IMP)doubleSetter;
                setterImp = (IMP)mediaMe;
                //: break;
                break;

            //: case Object:
            case Object:
                //: getterImp = (IMP)objectGetter;
                getterImp = (IMP)solidGround;
                //: setterImp = (IMP)objectSetter;
                setterImp = (IMP)eventPerform;
                //: break;
                break;

            //: default:
            default:
                //: free(properties);
                free(properties);
                //: [NSException raise:NSInternalInconsistencyException format:@"Unsupported type of property \"%s\" in class %@", name, self];
                [NSException raise:NSInternalInconsistencyException format:[ChapterData sharedInstance].userEmphasizeTitle, name, self];
                //: break;
                break;
        }

        //: char types[5];
        char types[5];

        //: snprintf(types, 4, "%c@:", type);
        snprintf(types, 4, "%c@:", type);
        //: class_addMethod([self class], getterSel, getterImp, types);
        class_addMethod([self class], getterSel, getterImp, types);

        //: snprintf(types, 5, "v@:%c", type);
        snprintf(types, 5, "v@:%c", type);
        //: class_addMethod([self class], setterSel, setterImp, types);
        class_addMethod([self class], setterSel, setterImp, types);
    }

    //: free(properties);
    free(properties);
}

//: @end
@end