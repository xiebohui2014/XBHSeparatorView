//
//  UIView+XBHSeparatorView.h
//  XBHSeparatorView
//
//  Created by xiebohui on 5/28/16.
//  Copyright © 2016 xiebohui. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, XBHSeparatorPosition) {
    XBHSeparatorPositionTop,
    XBHSeparatorPositionBottom
};

@interface UIView (XBHSeparatorView)

- (UIView *)addSeparatorViewWithPosition:(XBHSeparatorPosition)position strokeColor:(UIColor *)strokeColor;

@end
