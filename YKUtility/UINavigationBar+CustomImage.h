//
//  UINavigationBar+CustomImage.h
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/22.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (CustomImage)

- (void) setBackgroundImage:(UIImage*)image;
- (void) setBackgroundImage:(UIImage*)image tintColor:(UIColor *)tintColor;
- (void) clearBackgroundImage;

@end
