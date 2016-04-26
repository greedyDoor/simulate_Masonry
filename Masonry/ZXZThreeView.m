//
//  ZXZThreeView.m
//  Masonry
//
//  Created by Mac on 16/4/22.
//  Copyright © 2016年 www.ZXZ.com. All rights reserved.
//

#import "ZXZThreeView.h"

@implementation ZXZThreeView

-(instancetype)init{
    if ((self = [super init]) == nil) {
        return nil;
    }
    // 1. 创建view
    UIView *firstView = [[UIView alloc] init];
    firstView.backgroundColor = [UIColor redColor];
    [self addSubview:firstView];


    UIView *secondView = [[UIView alloc] init];
    secondView.backgroundColor = [UIColor blueColor];
    [self addSubview:secondView];

    UIView *thirdView = [[UIView alloc] init];
    thirdView.backgroundColor = [UIColor greenColor];
    [self addSubview:thirdView];

    UIView *fourView = [[UIView alloc] init];
    fourView.backgroundColor = [UIColor blackColor];
    [self addSubview:fourView];

    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj showPlaceHolder];
    }];

    // 2. 设置约束
    [firstView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).with.offset(50 );
        make.left.equalTo(self).with.offset(50);
        make.right.equalTo(secondView.mas_left).with.offset(-50);
        make.bottom.equalTo(thirdView.mas_top).with.offset(-50);
        make.width.equalTo(secondView);
        make.height.equalTo(secondView);

    }];


    [secondView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(firstView);
        make.left.equalTo(firstView.mas_right).offset(50);
        make.bottom.equalTo(fourView.mas_top).with.offset(-50);
        make.right.equalTo(self).with.offset(-50);
        make.width.equalTo(firstView);
        make.height.equalTo(thirdView);

    }];

    [thirdView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(firstView.mas_bottom).with.offset(50);
        make.left.equalTo(self).with.offset(50);
        make.bottom.equalTo(self).with.offset(-50);
        make.right.equalTo(fourView.mas_left).with.offset(-50);
        make.width.equalTo(fourView);
        make.height.equalTo(fourView);

    }];

    [fourView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(secondView.mas_bottom).with.offset(50);
        make.left.equalTo(thirdView.mas_right).offset(50);
        make.bottom.equalTo(self).with.offset(-50);
        make.right.equalTo(self).with.offset(-50);
        make.width.equalTo(thirdView);
        make.height.equalTo(firstView);
        
    }];

    return self;
}


@end
