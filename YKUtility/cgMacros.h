//
//  cgMacros.h
//  YKUtility
//
//  Created by Yoshiki Kurihara on 12/08/22.
//  Copyright (c) 2012年 Yoshiki Kurihara. All rights reserved.
//

#define CGRectLog(rect) NSLog(@"%@", NSStringFromCGRect(rect));
#define CGPointLog(point) NSLog(@"%@", NSStringFromCGPoint(point));
#define CGSizeLog(size) NSLog(@"%@", NSStringFromCGSize(size));

CG_INLINE void
CGRectSetX(UIView *view, CGFloat x)
{
    CGRect rect = view.frame;
    rect.origin.x = x;
    view.frame = rect;
}

CG_INLINE void
CGRectSetY(UIView *view, CGFloat y)
{
    CGRect rect = view.frame;
    rect.origin.y = y;
    view.frame = rect;
}

CG_INLINE void
CGRectSetWidth(UIView *view, CGFloat width)
{
    CGRect rect = view.frame;
    rect.size.width = width;
    view.frame = rect;
}

CG_INLINE void
CGRectSetHeight(UIView *view, CGFloat height)
{
    CGRect rect = view.frame;
    rect.size.height = height;
    view.frame = rect;
}

CG_INLINE void
CGRectSetCenterX(UIView *view1, UIView *view2)
{
    CGRect rect = view1.frame;
    rect.origin.x = ceilf(CGRectGetWidth(view2.frame)/2 - CGRectGetWidth(view1.frame)/2);
    view1.frame = rect;
}
CG_INLINE void
CGRectSetCenterY(UIView *view1, UIView *view2)
{
    CGRect rect = view1.frame;
    rect.origin.y = ceilf(CGRectGetHeight(view2.frame)/2 - CGRectGetHeight(view1.frame)/2);
    view1.frame = rect;
}

CG_INLINE void
CGRectSetCenter(UIView *view1, UIView *view2)
{
    CGRectSetCenterX(view1, view2);
    CGRectSetCenterY(view1, view2);
}
