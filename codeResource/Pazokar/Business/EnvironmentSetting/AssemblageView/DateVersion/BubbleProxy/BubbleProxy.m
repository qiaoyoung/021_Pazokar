// __DEBUG__
// __CLOSE_PRINT__
//
//  BubbleProxy.m
//  SGQRCodeExample
//
//  Created by kingsic on 2022/7/2.
//

// __M_A_C_R_O__
//: #import "SGWeakProxy.h"
#import "BubbleProxy.h"

//: @interface SGWeakProxy ()
@interface BubbleProxy ()
//: @property (nonatomic, weak) id target;
@property (nonatomic, weak) id target;
//: @end
@end

//: @implementation SGWeakProxy
@implementation BubbleProxy

//: + (instancetype)weakProxyWithTarget:(id)aTarget {
+ (instancetype)with:(id)aTarget {
    //: SGWeakProxy *weakProxy = [SGWeakProxy alloc];
    BubbleProxy *weakProxy = [BubbleProxy alloc];
    //: weakProxy.target = aTarget;
    weakProxy.target = aTarget;
    //: return weakProxy;
    return weakProxy;
}


//: - (id)forwardingTargetForSelector:(SEL)selector {
- (id)forwardingTargetForSelector:(SEL)selector {
    //: return _target;
    return _target;
}

//: - (void)forwardInvocation:(NSInvocation *)invocation {
- (void)forwardInvocation:(NSInvocation *)invocation {
    //: void *nullPointer = NULL;
    void *nullPointer = NULL;
    //: [invocation setReturnValue:&nullPointer];
    [invocation setReturnValue:&nullPointer];
}

//: - (NSMethodSignature *)methodSignatureForSelector:(SEL)selector {
- (NSMethodSignature *)methodSignatureForSelector:(SEL)selector {
    //: return [NSObject instanceMethodSignatureForSelector:@selector(init)];
    return [NSObject instanceMethodSignatureForSelector:@selector(init)];
}

//: @end
@end