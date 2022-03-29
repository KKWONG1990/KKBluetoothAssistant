//
//  NSArray+BLE.h
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (BLE)

/// 十六进制字符数组串转NSData
- (NSData *)ble_ToData;

/// 十六进制数组字符串转包含校验CRC的Data
- (NSData *)ble_ToContainCrcData;
@end

NS_ASSUME_NONNULL_END
