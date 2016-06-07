//
//  UIViewController+NIB.m
//  Xib
//
//  Created by 刘毕涛 on 16/6/6.
//  Copyright © 2016年 浙江蚁窝投资管理有限公司. All rights reserved.
//

#import "UIViewController+NIB.h"

@implementation UIViewController (NIB)
+ (instancetype)loadFromNib {
    // [self class]会由调用的类决定
    Class controllerClass = [self class];
    NSLog(@"class = %@", controllerClass);
    return [[controllerClass alloc] initWithNibName:@"cell6" bundle:[NSBundle mainBundle]];
}
@end
