//
//  LoginViewController.m
//  Code_ZCW_LearnDelegate
//
//  Created by 张朝伟 on 16/9/23.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginProtocol.h"
#import "ViewController.h"

@interface LoginViewController ()<LoginProtocol>

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ViewController *vc = [[ViewController alloc]init];
    vc.delegate = self;
    // Do any additional setup after loading the view.
}
- (NSString *)userLoginWithUsername:(NSString *)username password:(NSString *)password{
    
    NSLog(@"username : %@, password : %@", username, password);
    return @"aaaa";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
