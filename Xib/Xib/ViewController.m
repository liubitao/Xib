//
//  ViewController.m
//  Xib
//
//  Created by 刘毕涛 on 16/6/3.
//  Copyright © 2016年 浙江蚁窝投资管理有限公司. All rights reserved.
//

#import "ViewController.h"
#import "Cell3View.h"
#import "Cell4.h"
#import "Cell5ViewController.h"
#import "Cell6ViewController.h"
#import "UIViewController+NIB.h"

@interface ViewController ()

@property (nonatomic,strong) UIView *cell1;

@property (strong, nonatomic) IBOutlet UIView *cell2;

@property (nonatomic,strong) Cell3View *cell3;

@property (nonatomic,strong) Cell4 *cell4;

@property (nonatomic,strong) Cell5ViewController *cell5VC;

@property (nonatomic,strong) Cell6ViewController *cell6VC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self loadCell1];
    
    [self loadCell2];
    
    [self loadCell3];
    
    [self loadCell4];
    
    [self loadCell5];
    
    [self loadCell6];
}

- (void)loadCell1{
    // cell.xib的File's Owner为nil
    NSArray *views = [[NSBundle mainBundle]loadNibNamed:@"cell1" owner:nil options:nil];
    self.cell1 = [views lastObject];
    
    // 从xib加载进来的View大小是确定的，但是该视图在父视图中的位置是不确定的
    // 此外，视图中的子视图也是原封不动地Load进来的
    CGRect rect = _cell1.frame;
    rect.origin.x += 50.0f;
    rect.origin.y += 50.0f;
    _cell1.frame = rect;
    [self.view addSubview:_cell1];
    
}

- (void)loadCell2{
    // cell2.xib的File's Owner设为self，并建立了一个从该xib的View到self的IBOutlet cell2
    [[NSBundle mainBundle] loadNibNamed:@"cell2" owner:self options:nil];
    // 只要self主动调用Load XIB的方法，self持有的IBOutlet指向的视图就会被初始化
    // 这里不需要通过views[0]的方式存取视图
    CGRect rect = _cell2.frame;
    rect.origin.x = _cell1.frame.origin.x;
    rect.origin.y = _cell1.frame.origin.y + 80.0f;
    _cell2.frame = rect;
    [self.view addSubview:_cell2];
}

- (void)loadCell3{
    // cell3.xib的File's Owner是Cell3类的实例，并建立了一个从该xib的View到Cell3实例的IBOutlet
    // 只要通过_cell3主动调用Load XIB的方法，该IBOutlet指向的视图就会被初始化
    self.cell3 = [[Cell3View alloc]init];
    [[NSBundle mainBundle] loadNibNamed:@"cell3" owner:_cell3 options:nil];
    
    UIView *view = _cell3.cellView3;
    CGRect rect = view.frame;
    rect.origin.x = _cell1.frame.origin.x;
    rect.origin.y = _cell2.frame.origin.y + 80.0f;
    view.frame = rect;
    [self.view addSubview:view];
}

- (void)loadCell4{
    // 说明见YellowView.m的viewFromNIB方法
    self.cell4 = [Cell4 viewFromNIB];
    
    CGRect rect = _cell4.frame;
    UIView *cell3 = _cell3.cellView3;
    rect.origin.x = cell3.frame.origin.x;
    rect.origin.y = cell3.frame.origin.y + 80.0f;
    _cell4.frame = rect;
    [self.view addSubview:_cell4];
}

- (void)loadCell5{
    self.cell5VC = [[Cell5ViewController alloc] initWithNibName:@"cell5" bundle:[NSBundle mainBundle]];
    
    UIView *cell5 = _cell5VC.view;
    CGRect rect = cell5.frame;
    rect.origin.x = _cell4.frame.origin.x;
    rect.origin.y = _cell4.frame.origin.y + 80.0f;
    cell5.frame = rect;
    [self.view addSubview:cell5];
}

- (void)loadCell6{
    self.cell6VC = [Cell6ViewController loadFromNib];
    
    UIView *cell6 = _cell6VC.view;
    UIView *cell5 = _cell5VC.view;
    CGRect rect = cell6.frame;
    rect.origin.x = cell5.frame.origin.x;
    rect.origin.y = cell5.frame.origin.y + 80.0f;
    cell6.frame = rect;
    [self.view addSubview:cell6];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
















