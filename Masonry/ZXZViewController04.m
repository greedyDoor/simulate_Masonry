//
//  ZXZViewController04.m
//  Masonry
//
//  Created by Mac on 16/4/22.
//  Copyright © 2016年 www.ZXZ.com. All rights reserved.
//

#import "ZXZViewController04.h"

@interface ZXZViewController04 ()

@end

@implementation ZXZViewController04

- (void)viewDidLoad {
    [super viewDidLoad];

    // 1. 设置view的环境
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"彰显高度" image:nil selectedImage:nil];
    self.view.backgroundColor = [UIColor whiteColor];


    // 2. 创建view
    UIView *firstView = [[UIView alloc] init];
    firstView.backgroundColor = [UIColor redColor];
    [self.view addSubview:firstView];

    UIView *secondView = [[UIView alloc] init];
    secondView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:secondView];

    UIView *thirdView = [[UIView alloc] init];
    thirdView.backgroundColor = [UIColor redColor];
    [self.view addSubview:thirdView];

    UIView *fourView = [[UIView alloc] init];
    fourView.backgroundColor = [UIColor redColor];
    [self.view addSubview:fourView];

    UIView *fiveView = [[UIView alloc] init];
    fiveView.backgroundColor = [UIColor redColor];
    [self.view addSubview:fiveView];

    [self.view.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj showPlaceHolder];
    }];
    
    // 3. 设置约束
    NSInteger margin = 8;
    [firstView mas_makeConstraints:^(MASConstraintMaker *make) {
        // 设置顶部---y
        make.top.equalTo(self.view).with.offset(margin + 64);

        // 设置左边---x
        make.left.equalTo(self.view).with.offset(margin);

        make.bottom.equalTo(secondView.mas_top).offset(-margin);

        make.width.equalTo(secondView).multipliedBy(1.5);

        make.height.equalTo(secondView).dividedBy(1.5);
    }];

    [secondView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(firstView.mas_bottom).with.offset(margin);

        make.left.equalTo(self.view).with.offset(margin);

        make.bottom.equalTo(thirdView.mas_top).offset(-margin);

        make.width.equalTo(thirdView).multipliedBy(1.5);

        make.height.equalTo(thirdView).dividedBy(1.5);
    }];


    [thirdView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(secondView.mas_bottom).with.offset(margin);
        make.left.equalTo(self.view).with.offset(margin);
        make.bottom.equalTo(fourView.mas_top).offset(-margin);
        make.width.equalTo(fourView).multipliedBy(1.5);
        make.height.equalTo(fourView).dividedBy(1.5);
    }];

    [fourView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(thirdView.mas_bottom).with.offset(margin);
        make.left.equalTo(self.view).with.offset(margin);
        make.bottom.equalTo(fiveView.mas_top).offset(-margin);
//        make.bottom.equalTo(self.view).offset(-margin - 49);
        make.width.equalTo(fiveView).multipliedBy(1.5);
//        make.width.equalTo(@100);
        make.height.equalTo(thirdView).multipliedBy(1.5);
    }];

    [fiveView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(fourView.mas_bottom).with.offset(margin);

        make.left.equalTo(self.view).with.offset(margin);

        make.bottom.equalTo(self.view).offset(-margin);

        make.width.equalTo(@100);
        make.height.equalTo(fourView).multipliedBy(1.3);
    }];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
