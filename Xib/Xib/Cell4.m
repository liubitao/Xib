//
//  Cell4.m
//  Xib
//
//  Created by 刘毕涛 on 16/6/6.
//  Copyright © 2016年 浙江蚁窝投资管理有限公司. All rights reserved.
//

#import "Cell4.h"

@implementation Cell4

// Convenience Method
+ (instancetype)viewFromNIB {
    // 加载xib中的视图，其中xib文件名和本类类名必须一致
    // 这个xib文件的File's Owner必须为空
    // 这个xib文件必须只拥有一个视图，并且该视图的class为本类
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil];
    return views[0];
}

- (void)awakeFromNib {
    // 视图内容布局
    self.backgroundColor = [UIColor yellowColor];
    self.titleLabel.textColor = [UIColor whiteColor];
}

@end
