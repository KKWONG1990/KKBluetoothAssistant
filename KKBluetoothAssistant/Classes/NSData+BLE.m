//
//  NSData+BLE.m
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import "NSData+BLE.h"
#import "KKBHD.h"
@implementation NSData (BLE)

- (NSString *)ble_toHex {
    return [KKBHD dataToHex:self];
}

- (NSArray<NSString *> *)ble_toHexArr {
    return [KKBHD dataToHexArr:self];
}

@end
