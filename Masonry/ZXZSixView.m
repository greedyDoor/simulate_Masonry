//
//  ZXZSixView.m
//  Masonry
//
//  Created by Mac on 16/4/25.
//  Copyright © 2016年 www.ZXZ.com. All rights reserved.
//

#import "ZXZSixView.h"



@interface ZXZSixView ()

@property (weak, nonatomic)UIView *firstV;
@property (weak, nonatomic)UIView *secondV;
@end
@implementation ZXZSixView


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
    _firstV = firstView;

    UIView *secondView = [[UIView alloc] init];
    secondView.backgroundColor = [UIColor blueColor];
    [self addSubview:secondView];
    self.secondV = secondView;

    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj showPlaceHolder];
    }];


}
-(void)layoutSubviews{

    // 3. 设置约束
    CGFloat margin = (([UIScreen mainScreen ].bounds.size.width) /5);

    NSLog(@"%lf", margin);


    [self.firstV mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(self).with.offset(100);

        make.left.equalTo(self).with.offset(margin);

        make.height.equalTo(@200);

        make.width.mas_equalTo(margin );

    }];

    [self.secondV mas_remakeConstraints:^(MASConstraintMaker *make) {

        make.centerY.mas_equalTo(self.firstV);
        make.left.equalTo(self.firstV.mas_right).with.offset(margin);
        make.height.equalTo(@200);
        make.width.mas_equalTo(margin );
    }];
}



@end
