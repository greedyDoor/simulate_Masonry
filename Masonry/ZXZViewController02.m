//
//  ZXZViewController02.m
//  Masonry
//
//  Created by Mac on 16/4/22.
//  Copyright © 2016年 www.ZXZ.com. All rights reserved.
//

#import "ZXZViewController02.h"
#import "MMPlaceHolder/MMPlaceHolder.h"
@interface ZXZViewController02 ()

@end

@implementation ZXZViewController02

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    // 1, 设置我们的tabBarItem的名字
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"02" image:nil tag:0];

    // 2. 创建view
    UIView *leftView = [[UIView alloc] init];
    UIView *rightView = [[UIView alloc] init];

    // 3. 设置颜色
    leftView.backgroundColor = [UIColor blackColor];
    rightView.backgroundColor = [UIColor blueColor];

    // 4. 添加到View
    [self.view addSubview:leftView];
    [self.view addSubview:rightView];

    [self.view.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj showPlaceHolder];
    }];
    
    // 5. 设置约束
    [leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        // 1. 设置设置左边 上边 高度的设置
        make.left.top.equalTo(leftView.superview).with.offset(50 + 64);

        make.right.equalTo(rightView.mas_left).with.offset(-50);

        make.width.equalTo(rightView);

        make.height.equalTo(rightView).dividedBy(2);
    }];

    [rightView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(leftView);
        make.left.equalTo(leftView.mas_right).with.offset(50);
        make.right.equalTo(self.view.mas_right).with.offset(-50);
        make.width.equalTo(leftView);
        make.height.equalTo(@200);
    }];
}

@end
