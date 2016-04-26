//
//  ZXZDidViewController.m
//  Masonry
//
//  Created by Mac on 16/4/22.
//  Copyright © 2016年 www.ZXZ.com. All rights reserved.
//

#import "ZXZDidViewController.h"

@interface ZXZDidViewController ()
@property (strong, nonatomic)Class viewClass;

@end
@implementation ZXZDidViewController

- (instancetype)initWithTitle:(NSString *)title andWithViewClass:(Class)viewClass{

    // 1. 判断是否可用
    if (self == nil) {
        return  nil;
    }
    self.title = title;
    // 2. 设置
    self.viewClass = viewClass;
    return self;
}

- (void)loadView{
    // 设置view
    self.view = [[self.viewClass alloc] init];

    self.view.backgroundColor = [UIColor whiteColor];
}

@end
