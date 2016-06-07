//
//  Cell6ViewController.m
//  Xib
//
//  Created by 刘毕涛 on 16/6/6.
//  Copyright © 2016年 浙江蚁窝投资管理有限公司. All rights reserved.
//

#import "Cell6ViewController.h"

@interface Cell6ViewController ()

@end

@implementation Cell6ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    
    self.titleLabel.text = @"Gray View";
    self.titleLabel.textColor = [UIColor whiteColor];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont systemFontOfSize:8.5f];
    
    [self.action setTitle:@"action" forState:UIControlStateNormal];
    [self.action setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}


// 推荐从XIB文件中加载View Controller的方法，这种方法可以将XIB文件中的视图和其按钮响应事件全部封装在Cell6ViewController
// 如果Cell6ViewController的按钮响应事件由ViewController作出响应，那么二者的耦合度就过高
// 建议:
// 单纯的通用View展示，使用从xib文件加载视图的方法，File's Owner设为nil
// 特定拥有者的View展示，从xib文件加载视图时，File's Owner设为拥有者
// 如果视图中有按钮响应事件，或其它可以和用户交互的事件，建议采用从XIB文件中加载View Controller的方法，这样可以封装UI展示和交互事件
- (IBAction)action:(id)sender {
    NSLog(@"action");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
