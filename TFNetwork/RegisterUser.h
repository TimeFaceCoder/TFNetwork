//
//  RegisterUser.h
//  TFNetwork
//
//  Created by Melvin on 3/17/16.
//  Copyright © 2016 TimeFace. All rights reserved.
//

#import "TFRequest.h"

@interface RegisterUser : TFRequest

- (id)initWithUsername:(NSString *)username password:(NSString *)password;

@end
