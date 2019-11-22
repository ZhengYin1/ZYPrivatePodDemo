//
//  ZYSafeUtilsManager.m
//  MJYPCore
//
//  Created by zhengyin on 2019/11/8.
//  Copyright © 2019 xiaomi. All rights reserved.
//

#import "ZYSafeUtilsManager.h"

@implementation ZYSafeUtilsManager

+ (instancetype)shareInstance {
    static ZYSafeUtilsManager * sharedManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[ZYSafeUtilsManager alloc] init];
    });
    return sharedManager;
}

+ (void)reportExpectionToBuglyBuyReason:(NSString *)reason {
    if ([ZYSafeUtilsManager shareInstance].safeUtilsExceptionHandler) {
        [ZYSafeUtilsManager shareInstance].safeUtilsExceptionHandler(reason);
    }
}

@end
