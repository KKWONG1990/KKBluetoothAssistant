//
//  KKBHD.h
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KKBHD : NSObject

/// 二进制转十进制
/// @param binary 二进制字符串
+ (NSInteger)binaryToDecimal:(NSString *)binary;

/// 十进制转二进制
/// @param decimal 十进制值
+ (NSString *)decimalToBinary:(NSInteger)decimal;

/// 二进制转十六进制
/// @param binary 二进制字符串
+ (NSString *)binaryToHex:(NSString *)binary;

/// 十六进制转二进制
/// @param hex 十六进制字符串
+ (NSString *)hexToBinary:(NSString *)hex;

/// 十进制转十六进制
/// @param decimal 十进制值
+ (NSString *)decimalToHex:(NSInteger)decimal;

/// 十六进制转十进制
/// @param hex 十六进制字符串
+ (NSInteger)hexToDecimal:(NSString *)hex;

/// NSData转十六进制
/// @param data NSData
+ (NSString *)dataToHex:(NSData *)data;

/// 十六进制转NSData
/// @param hex 十六进制
+ (NSData *)hexToData:(NSString *)hex;

/// NSData转十六进制数组
/// @param data NSData
+ (NSArray<NSString *> *)dataToHexArr:(NSData *)data;

/// 十六进制数组转NSData
/// @param hexArr 十六进制数组
+ (NSData *)hexArrToData:(NSArray<NSString *> *)hexArr;

/// 字节转十六进制
/// @param byte 目标字节
+ (NSString *)byteToHex:(Byte)byte;

/// 字符串转字节
/// @param string 不带0x的字符串
+ (Byte)stringToByte:(NSString *)string;

/// 字节数组转十六进制字符串
/// @param bytes 字节数组
+ (NSString *)bytesToHex:(Byte[_Nonnull])bytes;

@end

NS_ASSUME_NONNULL_END
