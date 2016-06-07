//
//  UIViewController+NIB.h
//  Xib
//
//  Created by 刘毕涛 on 16/6/6.
//  Copyright © 2016年 浙江蚁窝投资管理有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (NIB)
// 要求xib文件名和View Controller类名一致
+ (instancetype)loadFromNib;
@end
