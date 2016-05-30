//
//  UIView+XBHSeparatorView.m
//  XBHSeparatorView
//
//  Created by xiebohui on 5/28/16.
//  Copyright © 2016 xiebohui. All rights reserved.
//

#import "UIView+XBHSeparatorView.h"

#define kXBHSeparatorViewDefaultLineHeight      1.0/[UIScreen mainScreen].scale

@implementation UIView (XBHSeparatorView)

- (UIView *)addSeparatorViewWithPosition:(XBHSeparatorPosition)position strokeColor:(UIColor *)strokeColor {
    UIView *separatorView = [[UIView alloc] initWithFrame:CGRectMake(0, position == XBHSeparatorPositionTop?0:CGRectGetHeight(self.bounds) - kXBHSeparatorViewDefaultLineHeight, CGRectGetWidth(self.bounds), kXBHSeparatorViewDefaultLineHeight)];
    separatorView.backgroundColor = strokeColor;
    separatorView.autoresizingMask = (position == XBHSeparatorPositionTop?UIViewAutoresizingFlexibleTopMargin:UIViewAutoresizingFlexibleBottomMargin) | UIViewAutoresizingFlexibleWidth;
    [self addSubview:separatorView];
    return separatorView;
}

@end
