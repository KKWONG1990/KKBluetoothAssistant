//
//  NSNumber+BLE.h
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSNumber (BLE)

/// 十进制转成二进制字符串
- (NSString *)ble_toBinary;

/// 十进制转成十六进制字符串
- (NSString *)ble_toHex;
@end

NS_ASSUME_NONNULL_END
