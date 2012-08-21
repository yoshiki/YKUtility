//
//  debugMacros.h
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/21.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//
//  Copy from http://qiita.com/items/d21ebf23d947590beef2

#ifdef DEBUG
#define DEBUGLOG(…) NSLog(__VA_ARGS__)
#else
#define DEBUGLOG(…) ;
#endif

#ifdef DEBUG
#define LINE() NSLog(@"%d",__LINE__)
#else
#define LINE() ;
#endif

#ifdef DEBUG
#define FUNC() NSLog(@"%s",__PRETTY_FUNCTION__)
#else
#define FUNC() ;
#endif

#ifdef DEBUG
#define DEBUGEXEC(__BLOCK,...) { dispatch_sync(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{ __BLOCK(__VA_ARGS__); });}
#else
#define DEBUGEXEC(__BLOCK,...) ;
#endif