//
//  NSString+Commify.m
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/21.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//

#import "NSString+Commify.h"

@implementation NSString (Commify)

- (NSString *)commify {
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    NSNumber *number = [[NSNumber alloc] initWithDouble:[self doubleValue]];
    NSString *format = @",##0.##########";
    [formatter setPositiveFormat:format];
    return [formatter stringForObjectValue:number];
}

@end
