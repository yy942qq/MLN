//
//  MLNWriterFactory.h
//  MLNDebugger
//
//  Created by MoMo on 2019/7/2.
//

#import <UIKit/UIKit.h>
#import "LNWriterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface LNWriterFactory : NSObject

+ (id<LNWriterProtocol>)getWriter;
+ (id<LNWriterProtocol>)getUSBWriter;

@end

NS_ASSUME_NONNULL_END
