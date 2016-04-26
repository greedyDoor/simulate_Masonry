//
//  ZXZTableViewController.m
//  Masonry
//
//  Created by Mac on 16/4/22.
//  Copyright © 2016年 www.ZXZ.com. All rights reserved.
//

#import "ZXZTableViewController.h"
#import "ZXZDidViewController.h"

#import "ZXZOneView.h"
#import "ZXZTwoView.h"
#import "ZXZThreeView.h"
#import "ZXZFourView.h"
#import "ZXZFiveView.h"
#import "ZXZSixView.h"

// 定义一个重用标识符
static NSString *ID = @"Masonry";
@interface ZXZTableViewController ()
@property (strong, nonatomic)NSArray *exampleControllers;
@end

@implementation ZXZTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"textMasonry";


    // 注册类
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];

}


- (NSArray *)exampleControllers{
    if (_exampleControllers == nil) {
        _exampleControllers  = @[
                                 [[ZXZDidViewController alloc] initWithTitle:@"One" andWithViewClass:[ZXZOneView class]],
                                 [[ZXZDidViewController alloc] initWithTitle:@"Two" andWithViewClass:[ZXZTwoView class]],
                                 [[ZXZDidViewController alloc] initWithTitle:@"Three" andWithViewClass:[ZXZThreeView class]],
                                 [[ZXZDidViewController alloc] initWithTitle:@"four" andWithViewClass:[ZXZFourView class]],
                                 [[ZXZDidViewController alloc] initWithTitle:@"five" andWithViewClass:[ZXZFiveView class]],
                                 [[ZXZDidViewController alloc] initWithTitle:@"Six" andWithViewClass:[ZXZSixView class]],

                                 ];

    }
    return _exampleControllers;
}

//#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.exampleControllers.count;
}



//#pragma mark - 返回数据
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    // 1. 创建cell
    //    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    UITableViewCell *cell= [[UITableViewCell alloc] init];

    // 2. 设置数据
    cell.textLabel.text = [NSString stringWithFormat:@"data--- %zd", indexPath.row];

    // 3. 返回cell
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    // 1. 取消选中
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];

    // 1. 创建一个控制器
    UIViewController *all = self.exampleControllers[indexPath.row];

    [self.navigationController pushViewController:all animated:YES];
}

@end
