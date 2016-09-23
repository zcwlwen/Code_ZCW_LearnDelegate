//
//  ViewController.m
//  Code_ZCW_LearnDelegate
//
//  Created by 张朝伟 on 16/9/23.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import "ViewController.h"
#import "LoginProtocol.h"
@interface ViewController ()
@property (nonatomic, strong)UILabel *userNameLabel;
@property (nonatomic, strong)UILabel *userPasswordLabel;
@property (nonatomic, strong)UITextField *userNameTextfiled;
@property (nonatomic, strong)UITextField *userPasswordTextfiled;

@property (nonatomic, strong)UIButton *loginButton;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    [self SetUI];
}

- (void)SetUI{
    _userNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(60, 100, 60, 40)];
    _userNameTextfiled = [[UITextField alloc]initWithFrame:CGRectMake(120, 100, 60, 40)];
    
    _userPasswordLabel = [[UILabel alloc]initWithFrame:CGRectMake(60, 160, 60, 40)];
    _userPasswordTextfiled = [[UITextField alloc]initWithFrame:CGRectMake(120, 160, 60, 40)];
    
    _userNameLabel.text = @"用户名";
    _userNameTextfiled.placeholder = @"用户名";
    
    _userPasswordLabel.text = @"密码";
    _userPasswordTextfiled.placeholder = @"密码";
    
    _loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _loginButton.frame = CGRectMake(0, 240, self.view.bounds.size.width, 40);
    _loginButton.backgroundColor = [UIColor grayColor];
    
    [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
    [_loginButton addTarget:self action:@selector(loginButtonClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_userNameLabel];
    [self.view addSubview:_userNameTextfiled];
    [self.view addSubview:_userPasswordLabel];
    [self.view addSubview:_userPasswordTextfiled];
    [self.view addSubview:_loginButton];
    
}

- (void)loginButtonClick {
    // 判断代理对象是否实现这个方法，没有实现会导致崩溃
        // 调用代理对象的登录方法，代理对象去实现登录方法
       NSString *hello = [self.delegate userLoginWithUsername:self.userNameTextfiled.text password:self.userPasswordTextfiled.text];
    NSLog(@"%@%@",_userNameTextfiled.text,_userPasswordTextfiled.text);
        NSLog(@"gg");
    NSLog(@"%@",hello);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
