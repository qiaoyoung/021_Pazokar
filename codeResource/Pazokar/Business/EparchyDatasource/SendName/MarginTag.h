// __DEBUG__
// __CLOSE_PRINT__
//
//  MarginTag.h
//
//  Created by Troy Brant on 9/18/10.
//  Updated by Antoine Marcadet on 9/23/11.
//  Updated by Divan Visagie on 2012-08-26
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: enum {
enum {
    //: BusyXMLReaderOptionsProcessNamespaces = 1 << 0, 
    BusyXMLReaderOptionsProcessNamespaces = 1 << 0, // Specifies whether the receiver reports the namespace and the qualified name of an element.
    //: BusyXMLReaderOptionsReportNamespacePrefixes = 1 << 1, 
    BusyXMLReaderOptionsReportNamespacePrefixes = 1 << 1, // Specifies whether the receiver reports the scope of namespace declarations.
    //: BusyXMLReaderOptionsResolveExternalEntities = 1 << 2, 
    BusyXMLReaderOptionsResolveExternalEntities = 1 << 2, // Specifies whether the receiver reports declarations of external entities.
//: };
};
//: typedef NSUInteger BusyXMLReaderOptions;
typedef NSUInteger BusyXMLReaderOptions;

//: @interface BusyXMLReader : NSObject <NSXMLParserDelegate>
@interface MarginTag : NSObject <NSXMLParserDelegate>

//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data error:(NSError **)errorPointer;
+ (NSDictionary *)messageError:(NSData *)data range:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string error:(NSError **)errorPointer;
+ (NSDictionary *)bearDownOpen:(NSString *)string domain:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLData:(NSData *)data options:(BusyXMLReaderOptions)options error:(NSError **)errorPointer;
+ (NSDictionary *)title:(NSData *)data receive:(BusyXMLReaderOptions)options change:(NSError **)errorPointer;
//: + (NSDictionary *)dictionaryForXMLString:(NSString *)string options:(BusyXMLReaderOptions)options error:(NSError **)errorPointer;
+ (NSDictionary *)view:(NSString *)string lengthError:(BusyXMLReaderOptions)options image:(NSError **)errorPointer;

//: @end
@end
