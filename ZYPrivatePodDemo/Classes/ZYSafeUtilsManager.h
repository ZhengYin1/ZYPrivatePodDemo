//
//  ZYSafeUtilsManager.h
//  MJYPCore
//
//  Created by zhengyin on 2019/11/8.
//  Copyright © 2019 xiaomi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#define ZYAssert(condition, desc) \
if (!(condition)) { \
    NSAssert((condition), desc); \
    [ZYSafeUtilsManager reportExpectionToBuglyBuyReason:desc]; \
}

@interface ZYSafeUtilsManager : NSObject

@property (nonatomic, copy) void (^safeUtilsExceptionHandler)(NSString *reason);

+ (instancetype)shareInstance;

+ (void)reportExpectionToBuglyBuyReason:(NSString *)reason;

@end

NS_ASSUME_NONNULL_END
