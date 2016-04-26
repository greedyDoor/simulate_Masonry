//
//  ZXZViewController05.m
//  Masonry
//
//  Created by Mac on 16/4/22.
//  Copyright © 2016年 www.ZXZ.com. All rights reserved.
//

#import "ZXZViewController05.h"

@interface ZXZViewController05 ()

@end

@implementation ZXZViewController05

- (void)viewDidLoad {
    [super viewDidLoad];
    // 1. 设置view的环境
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"复杂" image:nil selectedImage:nil];
    self.view.backgroundColor = [UIColor whiteColor];

    // 2. 创建view
    UIView *firstView = [[UIView alloc] init];
    firstView.backgroundColor = [UIColor redColor];
    [self.view addSubview:firstView];

    UIView *secondView = [[UIView alloc] init];
    secondView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:secondView];

    UIView *thirdView = [[UIView alloc] init];
    thirdView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:thirdView];

    UIView *fourView = [[UIView alloc] init];
    fourView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:fourView];

    UIView *fiveView = [[UIView alloc] init];
    fiveView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:fiveView];

    [self.view.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj showPlaceHolder];
    }];
    // 3. 设置约束
    CGFloat margin = (self.view.bounds.size.height - 40 - 20 - 60 - 49) / 4;
    CGFloat leftMrgin = (self.view.bounds.size.width - 40 - 50) /6 ;

    [firstView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self.view).with.offset(margin + 64);

        make.left.equalTo(self.view).with.offset(leftMrgin);

        make.right.equalTo(secondView.mas_left).offset(-leftMrgin);

        make.width.mas_equalTo(40);
        make.height.mas_equalTo(40);
    }];

    [secondView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(firstView);

        make.left.equalTo(firstView.mas_right).with.offset(leftMrgin);
        make.right.equalTo(thirdView.mas_left).with.offset(-leftMrgin);

        make.width.mas_equalTo(leftMrgin *2);
        make.height.mas_equalTo(firstView).dividedBy(2);
    }];

    [thirdView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.centerY.equalTo(firstView);
        make.left.equalTo(secondView.mas_right).with.offset(leftMrgin);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(50);


    }];

    [fourView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(firstView.mas_bottom).with.offset(margin);

        make.left.equalTo(self.view).with.offset(leftMrgin);

        make.width.mas_equalTo(50);
        make.height.mas_equalTo(40);
    }];

    [fiveView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(fourView.mas_bottom).with.offset(margin);

        make.left.equalTo(self.view).with.offset(leftMrgin);

        make.width.mas_equalTo(firstView);
        make.height.mas_equalTo(firstView).multipliedBy(1.5);
    }];

}



@end
