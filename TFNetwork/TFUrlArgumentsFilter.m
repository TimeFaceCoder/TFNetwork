//
//  TFUrlArgumentsFilter.m
//  TFNetwork
//
//  Created by Melvin on 3/17/16.
//  Copyright © 2016 TimeFace. All rights reserved.
//

#import "TFUrlArgumentsFilter.h"
#import "TFNetworkPrivate.h"

@implementation TFUrlArgumentsFilter{
    NSDictionary *_arguments;
}

+ (TFUrlArgumentsFilter *)filterWithArguments:(NSDictionary *)arguments {
    return [[self alloc] initWithArguments:arguments];
}

- (id)initWithArguments:(NSDictionary *)arguments {
    self = [super init];
    if (self) {
        _arguments = arguments;
    }
    return self;
}

- (NSString *)filterUrl:(NSString *)originUrl withRequest:(TFBaseRequest *)request {
    return [TFNetworkPrivate urlStringWithOriginUrlString:originUrl appendParameters:_arguments];
}

@end
