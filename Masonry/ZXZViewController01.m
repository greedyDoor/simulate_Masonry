//
//  ZXZViewController01.m
//  Masonry
//
//  Created by Mac on 16/4/22.
//  Copyright © 2016年 www.ZXZ.com. All rights reserved.
//

#import "ZXZViewController01.h"
#import "Masonry/Masonry.h"
#import "MMPlaceHolder.h"

@interface ZXZViewController01 ()

@end

@implementation ZXZViewController01

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"01" image:nil tag:0];

    // 1. 创建一个view
    UIView *newView = [[UIView alloc] init];

    // 2. 设置颜色
    newView.backgroundColor = [UIColor blackColor];

    [newView showPlaceHolder];
    // 3. 添加到superView
    [self.view addSubview:newView];


    // 4.设置约束
    [newView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(200, 200));
    }];


}


@end
