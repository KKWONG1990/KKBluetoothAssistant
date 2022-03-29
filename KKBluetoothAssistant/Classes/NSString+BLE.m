//
//  NSString+BLE.m
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import "NSString+BLE.h"
#import "KKBHD.h"
@implementation NSString (BLE)

- (NSString *)ble_reversal {
    return [self ble_reversalWithLen:1];
}

- (NSString *)ble_reversalWithLen:(NSUInteger)len {
    if (self && self.length >= len * 2) {
        NSString * reversalString = @"";
        NSUInteger loc = self.length;
        while (loc) {
            loc -= len;
            NSString * s = [self substringWithRange:NSMakeRange(loc, len)];
            reversalString = [reversalString stringByAppendingString:s];
            if (loc == 0) break;
        }
        return reversalString;
    }
    return self;
}

- (NSString *)ble_appendZero {
    if (self && self.length >= 1) {
        if (self.length % 2 != 0) {
            return [@"0" stringByAppendingString:self];
        }
    }
    return self;
}

- (NSString *)ble_appendZeroWithLen:(NSUInteger)len {
    //一个hex字节两个字符长度
    NSUInteger totalLength = len * 2;
    if (self && self.length < totalLength) {
        NSString * resultString = self;
        NSUInteger count = totalLength - self.length;
        while (count) {
            resultString = [@"0" stringByAppendingString:resultString];
            count--;
        }
        return resultString;
    }
    return self;
}

- (NSInteger)ble_binaryToDecimal {
    return [KKBHD binaryToDecimal:self];
}

- (NSString *)ble_binaryToHex {
    return [KKBHD binaryToHex:self];
}

- (NSString *)ble_hexToBinary {
    return [KKBHD hexToBinary:self];
}

- (NSInteger)ble_HexToDecimal {
    return [KKBHD hexToDecimal:self];
}

- (NSData *)ble_hexToData {
    return [KKBHD hexToData:self];
}

- (Byte)ble_toByte {
    return [KKBHD stringToByte:self];
}
@end
