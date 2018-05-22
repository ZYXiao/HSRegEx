//
//  HSRegEx.m
//  TestDemo
//
//  Created by 晓哥 on 2018/5/22.
//  Copyright © 2018年 恒生云融. All rights reserved.
//

#import "HSRegEx.h"

@implementation HSRegEx

+ (BOOL)isLoginPassword:(NSString *)str {
    NSString *LoginPWD = @"^(?!\\D+$)(?![^a-zA-Z]+$)\\S{6,16}$";
    NSPredicate *regextestLoginPWD = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", LoginPWD];
    return [regextestLoginPWD evaluateWithObject:str];
}

+ (BOOL)isChinese:(NSString *)str {
    NSString *exp = @"^[\u4e00-\u9fa5]+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",exp];
    return [predicate evaluateWithObject:str];
}

+ (BOOL)isNumber:(NSString *)str {
    NSString *exp = @"^[0-9]*$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",exp];
    return [predicate evaluateWithObject:str];
}

+ (BOOL)isSpecialCharacters:(NSString *)str {
    NSString *exp = @"^[a-z0-9A-Z\u4e00-\u9fa5]+$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",exp];
    return [predicate evaluateWithObject:str];
}

+ (BOOL)isMobileNumber:(NSString *)str {
    NSString *exp = @"^1[1-9]\\d{9}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",exp];
    return [predicate evaluateWithObject:str];
}

+ (BOOL)isIDNumber:(NSString *)str {
    NSString *exp = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",exp];
    return [predicate evaluateWithObject:str];
}

+ (BOOL)isMailbox:(NSString *)str {
    NSString *exp = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",exp];
    return [predicate evaluateWithObject:str];
}


@end
