//
//  NSURL+LibraryHandling.m
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/21.
//  Copyright (c) 2012 Yoshiki Kurihara. All rights reserved.
//

#import "NSURL+LibraryHandling.h"

@implementation NSURL (LibraryHandling)

+ (NSURL*)appLibraryDirectoryURL {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString* path = [paths objectAtIndex:0];
    NSURL* url = [NSURL fileURLWithPath:path isDirectory:YES];
    
    return url;
}

+ (NSURL*)appLibraryCacheDirectoryURL {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString* path = [paths objectAtIndex:0];
    NSURL* url = [NSURL fileURLWithPath:path isDirectory:YES];
    
    return url;
}

+ (NSURL*)userDocumentsDirectoryURL {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString* path = [paths objectAtIndex:0];
    NSURL* url = [NSURL fileURLWithPath:path isDirectory:YES];
    
    return url;
}

@end
