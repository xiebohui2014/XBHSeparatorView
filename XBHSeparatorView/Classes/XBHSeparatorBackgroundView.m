//
//  XBHSeparatorBackgroundView.m
//  XBHSeparatorView
//
//  Created by xiebohui on 6/11/16.
//  Copyright © 2016 xiebohui. All rights reserved.
//

#import "XBHSeparatorBackgroundView.h"

#define kXBHSeparatorBackgroundViewDefaultLineHeight            1.0/[UIScreen mainScreen].scale

@interface XBHSeparatorBackgroundView()

@end

@implementation XBHSeparatorBackgroundView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    if (!self.separatorColor) {
        self.separatorColor = [UIColor colorWithRed:190/255.0 green:183/255.0 blue:145/255.0 alpha:1];
    }
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [self.separatorColor CGColor]);
    CGContextSetLineWidth(context, kXBHSeparatorBackgroundViewDefaultLineHeight);
    
    if (self.separatorPosition & XBHSeparatorPositionTop) {
        CGContextBeginPath(context);
        CGContextMoveToPoint(context, 0.0f, 0.0f);
        CGContextAddLineToPoint(context, rect.size.width, 0);
        CGContextStrokePath(context);
    }
    
    if (self.separatorPosition & XBHSeparatorPositionBottom) {
        CGContextBeginPath(context);
        CGContextMoveToPoint(context, 0.0f, rect.size.height - kXBHSeparatorBackgroundViewDefaultLineHeight);
        CGContextAddLineToPoint(context, rect.size.width, rect.size.height - kXBHSeparatorBackgroundViewDefaultLineHeight);
        CGContextStrokePath(context);
    }
}

@end
