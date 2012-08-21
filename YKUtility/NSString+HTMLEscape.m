//
//  NSString+HTMLEscape.m
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/21.
//  Copyright (c) 2012 Yoshiki Kurihara. All rights reserved.
//

#import "NSString+HTMLEscape.h"

@implementation NSString (HTMLEscape)

static NSDictionary *htmlEscapes = nil;
static NSDictionary *htmlUnescapes = nil;

+ (NSDictionary *)htmlEscapes {
    if (!htmlEscapes) {
        htmlEscapes = [[NSDictionary alloc] initWithObjectsAndKeys:
                       @"&amp;", @"&",
                       @"&lt;", @"<",
                       @"&gt;", @">",
                       nil
                       ];
    }
    return htmlEscapes;
}

+ (NSDictionary *)htmlUnescapes {
    if (!htmlUnescapes) {
        htmlUnescapes = [[NSDictionary alloc] initWithObjectsAndKeys:
                         @"&", @"&amp;",
                         @"<", @"&lt;",
                         @">", @"&gt;",
                         nil
                         ];
    }
    return htmlEscapes;
}

static NSString *replaceAll(NSString *s, NSDictionary *replacements) {
    for (NSString *key in replacements) {
        NSString *replacement = [replacements objectForKey:key];
        s = [s stringByReplacingOccurrencesOfString:key withString:replacement];
    }
    return s;
}

- (NSString *)htmlEscapedString {
    return replaceAll(self, [[self class] htmlEscapes]);
}

- (NSString *)htmlUnescapedString {
    return replaceAll(self, [[self class] htmlUnescapes]);
}

@end
