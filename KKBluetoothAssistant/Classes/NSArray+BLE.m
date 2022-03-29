//
//  NSArray+BLE.m
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import "NSArray+BLE.h"
#import "KKBHD.h"
@implementation NSArray (BLE)

- (NSData *)ble_ToData {
    return [KKBHD hexArrToData:self];
}

- (NSData *)ble_ToContainCrcData {
    if (self == nil || self.count != 16) return nil;
    NSMutableArray * mHexs = [self mutableCopy];
    __block int crc = 0;
    [mHexs enumerateObjectsUsingBlock:^(NSString *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (idx != 15) {
            crc += [KKBHD hexToDecimal:obj];
        }
    }];
    [mHexs replaceObjectAtIndex:15 withObject:[KKBHD decimalToHex:crc]];
    return mHexs.ble_ToData;
}

@end
