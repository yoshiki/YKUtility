//
//  UIImage+NSCoding.m
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/21.
//  Copyright (c) 2012 Yoshiki Kurihara. All rights reserved.
//

#import "UIImage+NSCoding.h"

@implementation UIImage (NSCoding)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

- (id)initWithCoder:(NSCoder *)decoder {
    NSData *data = [decoder decodeObjectForKey:@"JPEGRepresentation"];
    self = [[UIImage alloc] initWithData:data];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    [encoder encodeObject:UIImageJPEGRepresentation(self, 1.0f) forKey:@"JPEGRepresentaion"];
}

#pragma clang diagnostic pop

@end
