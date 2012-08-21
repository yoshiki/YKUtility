//
//  NSString+HTMLEscape.h
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/21.
//  Copyright (c) 2012 Yoshiki Kurihara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (HTMLEscape)

+ (NSDictionary *)htmlEscapes;
+ (NSDictionary *)htmlUnescapes;
- (NSString *)htmlEscapedString;
- (NSString *)htmlUnescapedString;

@end
