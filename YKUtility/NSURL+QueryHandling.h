//
//  NSURL+QueryHandling.h
//  YKUtility
//
//  Created by 栗原 由樹 on 12/08/21.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (QueryHandling)

- (NSDictionary *)parseQuery;
- (NSURL *)URLByAppendingQueryString:(NSString *)queryString;
- (NSURL *)URLByAppendingQueryDictionary:(NSDictionary *)queryDictionary;

@end
