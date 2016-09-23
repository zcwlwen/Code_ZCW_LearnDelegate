//
//  LoginProtocol.h
//  Code_ZCW_LearnDelegate
//
//  Created by 张朝伟 on 16/9/23.
//  Copyright © 2016年 张朝伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginProtocol <NSObject>

@optional
- (NSString *)userLoginWithUsername:(NSString *)username password:(NSString *)password;
@end
