//
//  GetWeiBoData.h
//  TFNetwork
//
//  Created by Melvin on 3/17/16.
//  Copyright © 2016 TimeFace. All rights reserved.
//

#import "TFRequest.h"
#import "UserModel.h"

@interface GetWeiBoData : TFRequest

@property (nonatomic ,strong ,readonly) UserModel *userModel;

@end
