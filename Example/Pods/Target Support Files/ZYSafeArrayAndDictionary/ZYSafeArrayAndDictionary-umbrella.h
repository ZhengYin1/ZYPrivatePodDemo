#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NSArray+SafeUtils.h"
#import "NSDictionary+SafeUtils.h"
#import "NSObject+SafeSwizzle.h"

FOUNDATION_EXPORT double ZYSafeArrayAndDictionaryVersionNumber;
FOUNDATION_EXPORT const unsigned char ZYSafeArrayAndDictionaryVersionString[];

