//
//  ViewController.h
//  Code_ZCW_LearnDelegate
//
//  Created by 张朝伟 on 16/9/23.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginProtocol.h"

@interface ViewController : UIViewController

@property (nonatomic, weak) id<LoginProtocol> delegate;

@end

