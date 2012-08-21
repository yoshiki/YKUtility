//
//  NSString+SHA1.m
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/21.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//

#import "NSString+SHA1.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (SHA1)

- (NSString *)sha1 {
    const char *str = [self UTF8String];
    unsigned char result[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(str, strlen(str), result);
    return [NSString
            stringWithFormat: @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
            result[0], result[1], result[2], result[3], result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11], result[12], result[13], result[14], result[15],
            result[16], result[17], result[18], result[19]];
}

@end
