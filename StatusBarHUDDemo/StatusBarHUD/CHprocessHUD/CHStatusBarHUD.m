//
//  CHStatusBarHUD.m
//  01-HUD框架
//
//  Created by chenhao on 15-1-26.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "CHStatusBarHUD.h"
#include <UIKit/UIKit.h>

#define CHStatusHeight 20

@implementation CHStatusBarHUD

UIWindow *_window;

+(void)showMessage:(NSString *)msg image:(UIImage *)image
{

    //创建按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btn.titleLabel.font = [UIFont systemFontOfSize:14.0];
    
    //设置数据
    [btn setTitle:msg forState:UIControlStateNormal];
    [btn setImage:image forState:UIControlStateNormal];
    
    //创建 window
    _window = [[UIWindow alloc] init];
    
    _window.backgroundColor = [UIColor blackColor];
    // 窗口的级别，级别高的覆盖在级别低的window上
    // UIWindowLevelAlert > UIWindowLevelStatusBar > UIWindowLevelNormal
    _window.windowLevel = UIWindowLevelAlert;
    _window.frame = CGRectMake(0, -CHStatusHeight, [UIScreen mainScreen].bounds.size.width, CHStatusHeight);
    _window.hidden = NO;
    btn.frame = _window.bounds;
    btn.userInteractionEnabled = NO;
    [_window addSubview:btn];
    
    [UIView animateWithDuration:0.6 animations:^{
        CGRect frame = _window.frame;
        frame.origin.y = 0;
        _window.frame = frame;
    } completion:^(BOOL finished) {
        [UIView animateKeyframesWithDuration:0.6 delay:1.5 options:kNilOptions animations:^{
            CGRect frame = _window.frame;
            frame.origin.y = -CHStatusHeight;
            _window.frame = frame;
        } completion:^(BOOL finished) {
            _window = nil;
        }];
    }];


}

+(void)showMessage:(NSString *)msg imageName:(NSString *)imageName
{
    [self showMessage:msg image:[UIImage imageNamed:imageName]];
    
}


+(void)showSucess:(NSString *)msg
{
    
    [self showMessage:msg image:[UIImage imageNamed:@"CHprocessHUD.bundle/success"]];

}

+(void)showError:(NSString *)msg
{
    
    [self showMessage:msg image:[UIImage imageNamed:@"CHprocessHUD.bundle/error"]];
}

@end
