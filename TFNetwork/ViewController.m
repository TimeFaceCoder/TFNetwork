//
//  ViewController.m
//  TFNetwork
//
//  Created by Melvin on 3/16/16.
//  Copyright © 2016 TimeFace. All rights reserved.
//

#import "ViewController.h"
#import "RegisterUser.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    RegisterUser *registerUser = [[RegisterUser alloc] initWithUsername:@"" password:@""];
    [registerUser startWithCompletionBlockWithSuccess:^(__kindof TFBaseRequest *request) {
        NSLog(@"request:%@",registerUser.responseObject);
    } failure:^(__kindof TFBaseRequest *request) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
