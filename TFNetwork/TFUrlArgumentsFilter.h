//
//  TFUrlArgumentsFilter.h
//  TFNetwork
//
//  Created by Melvin on 3/17/16.
//  Copyright © 2016 TimeFace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TFNetworkConfig.h"

@interface TFUrlArgumentsFilter : NSObject<TFUrlFilterProtocol>

+ (TFUrlArgumentsFilter *)filterWithArguments:(NSDictionary *)arguments;

- (NSString *)filterUrl:(NSString *)originUrl withRequest:(TFBaseRequest *)request;

@end
