//
//  UIImage+NSCoding.h
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/21.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (NSCoding)

- (id)initWithCoder:(NSCoder *)decoder;
- (void)encodeWithCoder:(NSCoder *)encoder;

@end
