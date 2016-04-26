//
//  ZXZOneView.m
//  Masonry
//
//  Created by Mac on 16/4/22.
//  Copyright © 2016年 www.ZXZ.com. All rights reserved.
//

#import "ZXZOneView.h"

@implementation ZXZOneView

- (instancetype)init{
    if ((self = [super init]) == nil) {
        return  nil;
    }

    // 1. 创建一个view
    UIView *newView = [[UIView alloc] init];

    // 2. 设置颜色
    newView.backgroundColor = [UIColor blackColor];

    [newView showPlaceHolder];
    // 3. 添加到superView
    [self addSubview:newView];


    // 4.设置约束
    [newView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self);
        make.size.mas_equalTo(CGSizeMake(200, 200));
    }];

    return self;
}


@end
