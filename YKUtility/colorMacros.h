//
//  colorMacros.h
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/21.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//

#define UIColorFromRGB(rgbValue) [UIColor \
                                  colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
                                  green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
                                  blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define UIColorFromRGBA(rgbaValue) [UIColor \
                                    colorWithRed:((float)((rgbaValue & 0xFF000000) >> 16))/255.0 \
                                    green:((float)((rgbaValue & 0xFF0000) >> 8))/255.0 \
                                    blue:((float)(rgbaValue & 0xFF00))/255.0 \
                                    alpha:((float)(rgbaValue & 0xFF))/255.0]

#define UIColorToRGB(color) [NSString \
                             stringWithFormat:@"#%02x%02x%02x", \
                             (int)((CGColorGetComponents(color.CGColor))[0]*255.0), \
                             (int)((CGColorGetComponents(color.CGColor))[1]*255.0), \
                             (int)((CGColorGetComponents(color.CGColor))[2]*255.0)]

#define UIColorToRGBA(color) [NSString \
                              stringWithFormat:@"#%02x%02x%02x%02x", \
                              (int)((CGColorGetComponents(color.CGColor))[0]*255.0), \
                              (int)((CGColorGetComponents(color.CGColor))[1]*255.0), \
                              (int)((CGColorGetComponents(color.CGColor))[2]*255.0), \
                              (int)((CGColorGetComponents(color.CGColor))[3]*255.0)]
