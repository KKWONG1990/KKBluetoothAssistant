//
//  NSData+BLE.h
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (BLE)

/// NSData转十六进制字符串
- (NSString *)ble_toHex;

/// NSData转十六进制字符串数组
- (NSArray<NSString *> *)ble_toHexArr;


@end

NS_ASSUME_NONNULL_END
