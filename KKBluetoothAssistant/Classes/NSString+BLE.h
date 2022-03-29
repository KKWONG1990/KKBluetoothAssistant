//
//  NSString+BLE.h
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (BLE)

/// 每次按一个字符反转字符串
- (NSString *)ble_reversal;

/// 每次按len个字符长度反转字符串
/// @param len 每次反转多少个字符串
- (NSString *)ble_reversalWithLen:(NSUInteger)len;

/// 当字符串长度余2等于非0时自动追加0到字符串长度得到一个hex，当字符串为nil或length等于0时返回@“00”
- (NSString *)ble_appendZero;

/// 追加0到源字符串前面并指定一个字节长度
/// @param len 新的hex字符串字节长度
- (NSString *)ble_appendZeroWithLen:(NSUInteger)len;

/// 二进制转十进制
- (NSInteger)ble_binaryToDecimal;

/// 二进制转十六进制
- (NSString *)ble_binaryToHex;

/// 十六进制转二进制
- (NSString *)ble_hexToBinary;

/// 十六进制转十进制
- (NSInteger)ble_HexToDecimal;

/// 十六进制转NSData
- (NSData *)ble_hexToData;

/// 字符串转成byte
- (Byte)ble_toByte;
@end

NS_ASSUME_NONNULL_END
