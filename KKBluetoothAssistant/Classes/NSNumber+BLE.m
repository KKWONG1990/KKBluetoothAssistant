//
//  NSNumber+BLE.m
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import "NSNumber+BLE.h"
#import "KKBHD.h"
@implementation NSNumber (BLE)

- (NSString *)ble_toBinary {
    if (self) {
        return [KKBHD decimalToBinary:[self integerValue]];
    }
    return nil;
}

- (NSString *)ble_toHex {
    if (self) {
        return [KKBHD decimalToHex:[self integerValue]];
    }
    return nil;
}

@end
