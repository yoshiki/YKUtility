//
//  NSURL+QueryHandling.m
//  YKUtility
//
//  Created by 栗原 由樹 on 12/08/21.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//

#import "NSURL+QueryHandling.h"

@implementation NSURL (QueryHandling)

- (NSDictionary *)parseQuery {
    NSArray *components = [[self query] componentsSeparatedByString:@"&"];
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    for (NSString *component in components) {
        NSArray *keyAndValues = [component componentsSeparatedByString:@"="];
        [parameters setObject:[keyAndValues objectAtIndex:1] forKey:[keyAndValues objectAtIndex:0]];
    }
    return parameters;
}

- (NSURL *)URLByAppendingQueryString:(NSString *)queryString {
    if (![queryString length]) {
        return self;
    }
    
    NSString *urlString = [NSString stringWithFormat:@"%@%@%@",
                           [self absoluteString],
                           [self query] ? @"&" : @"?",
                           queryString];
    return [NSURL URLWithString:urlString];
}

- (NSURL *)URLByAppendingQueryDictionary:(NSDictionary *)queryDictionary {
    if (queryDictionary == nil) {
        return self;
    }
    
    NSURL *url = [[NSURL alloc] initWithString:[self absoluteString]];
    for (NSString *key in [queryDictionary allKeys]) {
        NSString *queryString = [NSString stringWithFormat:@"%@=%@", key, [queryDictionary objectForKey:key]];
        url = [url URLByAppendingQueryString:queryString];
    }
    return url;
}

@end
