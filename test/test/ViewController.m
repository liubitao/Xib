//
//  ViewController.m
//  test
//
//  Created by 刘毕涛 on 16/2/26.
//  Copyright © 2016年 浙江蚁窝投资管理有限公司. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>
#import <NSString+MD5.h>
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *s1;
@property (weak, nonatomic) IBOutlet UITextField *s2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)star:(id)sender {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes=[NSSet setWithObject:@"text/html"];
    NSMutableDictionary *paramter = [NSMutableDictionary dictionary];
    paramter[@"act"] = [[@"doLogin" dataUsingEncoding:NSUTF8StringEncoding]base64EncodedStringWithOptions:0];
    paramter[@"user_name"] = [[@"15068891471" dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:0];
    NSString *pass = @"2";
    paramter[@"user_pwd"] = [pass MD5Digest];
    NSString *p = @"15068891471";
    paramter[@"mKey"] = [[NSString stringWithFormat:@"%@%@",@"549f9141102c15f80532e224c8373c1d",[p MD5Digest]] MD5Digest];
    NSLog(@"ni");
    [manager POST:@"http://weixin.zjctauto.com/API_ch/newpower/index.php" parameters:paramter progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@",responseObject);
   
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error %@",error);
     
    }];
 
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
