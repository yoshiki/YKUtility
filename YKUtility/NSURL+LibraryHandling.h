//
//  NSURL+LibraryHandling.h
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/21.
//  Copyright (c) 2012 Yoshiki Kurihara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (LibraryHandling)

// <Application>/Library/
+ (NSURL*)appLibraryDirectoryURL;

// <Application>/Library/Caches/
+ (NSURL*)appLibraryCacheDirectoryURL;

// <Application>/Documents/
+ (NSURL*)userDocumentsDirectoryURL;

@end
