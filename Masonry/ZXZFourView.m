//
//  ZXZFourView.m
//  Masonry
//
//  Created by Mac on 16/4/22.
//  Copyright © 2016年 www.ZXZ.com. All rights reserved.
//

#import "ZXZFourView.h"

@implementation ZXZFourView

- (instancetype)init{
    if ((self = [super init]) == nil) {
        return nil;
    }



    // 2. 创建view
    UIView *firstView = [[UIView alloc] init];
    firstView.backgroundColor = [UIColor redColor];
    [self addSubview:firstView];

    UIView *secondView = [[UIView alloc] init];
    secondView.backgroundColor = [UIColor blueColor];
    [self addSubview:secondView];

    UIView *thirdView = [[UIView alloc] init];
    thirdView.backgroundColor = [UIColor redColor];
    [self addSubview:thirdView];

    UIView *fourView = [[UIView alloc] init];
    fourView.backgroundColor = [UIColor redColor];
    [self addSubview:fourView];

    UIView *fiveView = [[UIView alloc] init];
    fiveView.backgroundColor = [UIColor redColor];
    [self addSubview:fiveView];

    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj showPlaceHolder];
    }];

    // 3. 设置约束
    NSInteger margin = 8;
     CGFloat widthM = 1.2;
    CGFloat heightM = 1.2;

    [firstView mas_makeConstraints:^(MASConstraintMaker *make) {
        // 设置顶部---y
        make.top.equalTo(self).with.offset(margin);

        // 设置左边---x
        make.left.equalTo(self).with.offset(margin);

        make.bottom.equalTo(secondView.mas_top).offset(-margin);

        make.width.equalTo(self);
        make.width.equalTo(secondView).multipliedBy(widthM);

        make.height.equalTo(secondView).dividedBy(heightM);
    }];

    [secondView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(firstView.mas_bottom).with.offset(margin);

        make.left.equalTo(self).with.offset(margin);

        make.bottom.equalTo(thirdView.mas_top).offset(-margin);

        make.width.equalTo(thirdView).multipliedBy(widthM);

        make.height.equalTo(thirdView).dividedBy(heightM);
    }];


    [thirdView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(secondView.mas_bottom).with.offset(margin);
        make.left.equalTo(self).with.offset(margin);
        make.bottom.equalTo(fourView.mas_top).offset(-margin);
        make.width.equalTo(fourView).multipliedBy(widthM);
        make.height.equalTo(fourView).dividedBy(heightM);
    }];

    [fourView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(thirdView.mas_bottom).with.offset(margin);
        make.left.equalTo(self).with.offset(margin);
        make.bottom.equalTo(fiveView.mas_top).offset(-margin);

        make.width.equalTo(fiveView).multipliedBy(widthM);

        make.height.equalTo(thirdView).multipliedBy(heightM);
    }];

    [fiveView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(fourView.mas_bottom).with.offset(margin);

        make.left.equalTo(self).with.offset(margin);

        make.bottom.equalTo(self).offset(-margin);
        
        make.width.equalTo(fourView).dividedBy(widthM);
        make.height.equalTo(fourView).multipliedBy(heightM);
    }];


    return self;
}

@end
