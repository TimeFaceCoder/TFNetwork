//
//  RegisterUser.m
//  TFNetwork
//
//  Created by Melvin on 3/17/16.
//  Copyright © 2016 TimeFace. All rights reserved.
//

#import "RegisterUser.h"

@implementation RegisterUser{
    NSString *_username;
    NSString *_password;
}

- (id)initWithUsername:(NSString *)username password:(NSString *)password {
    self = [super init];
    if (self) {
        _username = username;
        _password = password;
    }
    return self;
}

- (NSString *)requestUrl {
    return @"/iphone/register";
}

- (TFRequestMethod)requestMethod {
    return TFRequestMethodPost;
}

- (id)requestArgument {
    return @{
             @"username": _username,
             @"password": _password
             };
}

- (id)jsonValidator {
    return @{@"userId":[NSNumber class],
             @"nickName":[NSString class]};
}

@end
