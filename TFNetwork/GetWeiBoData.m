//
//  GetWeiBoData.m
//  TFNetwork
//
//  Created by Melvin on 3/17/16.
//  Copyright © 2016 TimeFace. All rights reserved.
//

#import "GetWeiBoData.h"

@implementation GetWeiBoData

- (NSString *)requestUrl {
    return @"http://m.weibo.cn/main/pages/index?containerid=100103type%3D3%26q%3D%E7%8E%8B%E7%8F%9E%E4%B8%B9&type=user&queryVal=%E7%8E%8B%E7%8F%9E%E4%B8%B9&title=%E7%8E%8B%E7%8F%9E%E4%B8%B9";
}

- (id)requestArgument {
    return @{@"userid":@"1212"};
}

- (UserModel *)userModel {
    NSLog(@"response :%@",self.responseObject);
    UserModel *model = [[UserModel alloc] init];
    model.userId = @"390";
    return model;
}

@end
