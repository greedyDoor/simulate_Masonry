//
//  ZXZFiveView.m
//  Masonry
//
//  Created by Mac on 16/4/22.
//  Copyright © 2016年 www.ZXZ.com. All rights reserved.
//

#import "ZXZFiveView.h"


@interface ZXZFiveView ()



@property (assign, nonatomic)NSInteger margin;
@end
@implementation ZXZFiveView


- (instancetype)init{
    if ((self = [super init])) {

        [self setUpUI];
    }

    return self;
}

-(void)setUpUI{

    // 2. 创建view
    UIView *firstView = [[UIView alloc] init];
    firstView.backgroundColor = [UIColor redColor];
    [self addSubview:firstView];


    UIView *secondView = [[UIView alloc] init];
    secondView.backgroundColor = [UIColor blueColor];
    [self addSubview:secondView];

    UIView *threeView = [[UIView alloc] init];
    threeView.backgroundColor = [UIColor greenColor];
    [self addSubview:threeView];


    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj showPlaceHolder];
    }];





    [firstView mas_makeConstraints:^(MASConstraintMaker *make) {


        make.top.equalTo(self).with.offset(100);

        make.centerX.equalTo(self).multipliedBy(0.5);

        make.height.equalTo(@200);

        make.width.mas_equalTo(self).dividedBy(4);

    }];

    [secondView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.centerY.mas_equalTo(firstView);

        make.centerX.equalTo(self).multipliedBy(1.125);

        make.height.equalTo(@200);
        make.width.mas_equalTo(self).dividedBy(8);

    }];


    [threeView mas_makeConstraints:^(MASConstraintMaker *make) {

        make.centerY.mas_equalTo(firstView);

        make.centerX.equalTo(self).multipliedBy(1.625);

        make.height.equalTo(@200);
        make.width.mas_equalTo(self).dividedBy(8);
        
    }];

}
-(void)layoutSubviews{
    [super layoutSubviews];

}


@end
