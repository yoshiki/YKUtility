//
//  UINavigationBar+CustomImage.m
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/22.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//
// Implement with this
// [[navController navigationBar] performSelectorInBackground:@selector(setBackgroundImage:) withObject:image];
// [[navController navigationBar] performSelectorInBackground:@selector(setBackgroundImage:) withObject:image withObject:tintColor];

#import "UINavigationBar+CustomImage.h"

@implementation UINavigationBar (CustomImage)

- (void)setBackgroundImage:(UIImage *)image {
    if (image == NULL) return;
    if([self respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)] ) {
        //iOS 5
        [self setBackgroundImage:image forBarMetrics: UIBarMetricsDefault];
    } else {
        //iOS 4
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake(0.0f, 0.0f, self.frame.size.width, self.frame.size.height);
        [self addSubview:imageView];
    }
}

- (void) setBackgroundImage:(UIImage*)image tintColor:(UIColor *)tintColor {
    [self setBackgroundImage:image];
    self.tintColor = tintColor;
}

- (void) clearBackgroundImage {
    NSArray *subviews = [self subviews];
    for (int i=0; i<[subviews count]; i++) {
        if ([[subviews objectAtIndex:i] isMemberOfClass:[UIImageView class]]) {
            [[subviews objectAtIndex:i] removeFromSuperview];
        }
    }
}

@end
