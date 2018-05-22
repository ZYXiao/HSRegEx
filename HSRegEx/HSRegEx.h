//
//  HSRegEx.h
//  TestDemo
//
//  Created by 晓哥 on 2018/5/22.
//  Copyright © 2018年 恒生云融. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HSRegEx : NSObject

/**
 判断是否有效的登录密码
 */
+ (BOOL)isLoginPassword:(NSString *)str;


/**
 判断是否中文
 */
+ (BOOL)isChinese:(NSString *)str;


/**
 判断是否特殊字符
 */
+ (BOOL)isSpecialCharacters:(NSString *)str;


/**
 判断是否手机号码
 */
+ (BOOL)isMobileNumber:(NSString *)str;


/**
 判断是否身份证号码
 */
+ (BOOL)isIDNumber:(NSString *)str;


/**
 判断是否邮箱
 */
+ (BOOL)isMailbox:(NSString *)str;


/**
 判断是否是数字
 */
+ (BOOL)isNumber:(NSString *)str;

@end
