//
//  XBHViewController.m
//  XBHSeparatorView
//
//  Created by xiebohui on 05/28/2016.
//  Copyright (c) 2016 xiebohui. All rights reserved.
//

#import "XBHViewController.h"
#import "XBHSeparatorBackgroundView.h"

@interface XBHViewController ()

@property (nonatomic, strong) XBHSeparatorBackgroundView *backgroundView;

@end

@implementation XBHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.backgroundView = [XBHSeparatorBackgroundView new];
    self.backgroundView.separatorPosition = XBHSeparatorPositionTop | XBHSeparatorPositionBottom;
    [self.view addSubview:self.backgroundView];
    self.backgroundView.frame = CGRectMake(100, 100, 200, 200);
}

@end
