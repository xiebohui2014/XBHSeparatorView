//
//  XBHSeparatorBackgroundView.h
//  XBHSeparatorView
//
//  Created by xiebohui on 6/11/16.
//  Copyright © 2016 xiebohui. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, XBHSeparatorPosition){
    XBHSeparatorPositionNone        = 0,
    XBHSeparatorPositionTop         = 1 << 0,
    XBHSeparatorPositionBottom      = 1 << 1
};

@interface XBHSeparatorBackgroundView : UIView

@property (nonatomic, assign) XBHSeparatorPosition separatorPosition;
@property (nonatomic, strong) UIColor *separatorColor;

@end
