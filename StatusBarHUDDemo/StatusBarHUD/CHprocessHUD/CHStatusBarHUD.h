//
//  CHStatusBarHUD.h
//  01-HUD框架
//
//  Created by chenhao on 15-1-26.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CHStatusBarHUD : NSObject

/**
 *显示信息
 *param  msg  信息
 *param  imageName  图片（图片高度最好是20之内）
 */
+(void)showMessage:(NSString *)msg image:(UIImage *)image;

/**
 *显示信息
 *param  msg  信息
 *param  imageName  图片名称（图片高度最好是20之内，而且是本地图片）
 */
+(void)showMessage:(NSString *)msg imageName:(NSString *)imageName;


/**
 *显示成功信息
 *param  msg  信息
 */
+(void)showSucess:(NSString *)msg;

/**
 *显示失败信息
 *param  msg  信息
 */

+(void)showError:(NSString *)msg;



@end
