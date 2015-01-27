//
//  ViewController.m
//  StatusBarHUD
//
//  Created by chenhao on 15-1-27.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "CHStatusBarHUD.h"
@interface ViewController ()

/**
 *  显示成功信息 DEMO

 */
- (IBAction)success:(UIButton *)sender;
/**
 *  显示失败信息 DEMO
 
 */
- (IBAction)error:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (IBAction)success:(UIButton *)sender {
    NSString *msg = @"保存成功";
    [CHStatusBarHUD showSucess:msg];
}

- (IBAction)error:(UIButton *)sender {
    NSString *msg = @"保存失败";
    [CHStatusBarHUD showSucess:msg];
}
@end
