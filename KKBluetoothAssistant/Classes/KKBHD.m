//
//  KKBHD.m
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import "KKBHD.h"

@implementation KKBHD
+ (NSInteger)binaryToDecimal:(NSString *)binary {
    NSInteger decimal = 0;
    for (int i = 0; i < binary.length; i++) {
        NSString * number = [binary substringWithRange:NSMakeRange(binary.length - i - 1, 1)];
        if ([number isEqualToString:@"1"]) {
            decimal += pow(2, i);
        }
    }
    return decimal;
}

+ (NSString *)decimalToBinary:(NSInteger)decimal {
    NSString * binary = @"";
    while (decimal) {
        
        binary = [[NSString stringWithFormat:@"%ld", decimal % 2] stringByAppendingString:binary];
        if (decimal / 2 < 1) {
            break;
        }
        decimal = decimal / 2 ;
    }
    
    if (binary.length % 4 != 0) {
    
        NSMutableString * mStr = [[NSMutableString alloc] init];;
        for (int i = 0; i < 4 - binary.length % 4; i++) {
            [mStr appendString:@"0"];
        }
        binary = [mStr stringByAppendingString:binary];
    }
    return binary;
}

+ (NSString *)binaryToHex:(NSString *)binary {
    NSMutableDictionary * binaryDic = [[NSMutableDictionary alloc] initWithCapacity:16];
    [binaryDic setObject:@"0" forKey:@"0000"];
    [binaryDic setObject:@"1" forKey:@"0001"];
    [binaryDic setObject:@"2" forKey:@"0010"];
    [binaryDic setObject:@"3" forKey:@"0011"];
    [binaryDic setObject:@"4" forKey:@"0100"];
    [binaryDic setObject:@"5" forKey:@"0101"];
    [binaryDic setObject:@"6" forKey:@"0110"];
    [binaryDic setObject:@"7" forKey:@"0111"];
    [binaryDic setObject:@"8" forKey:@"1000"];
    [binaryDic setObject:@"9" forKey:@"1001"];
    [binaryDic setObject:@"A" forKey:@"1010"];
    [binaryDic setObject:@"B" forKey:@"1011"];
    [binaryDic setObject:@"C" forKey:@"1100"];
    [binaryDic setObject:@"D" forKey:@"1101"];
    [binaryDic setObject:@"E" forKey:@"1110"];
    [binaryDic setObject:@"F" forKey:@"1111"];
    
    if (binary.length % 4 != 0) {
        
        NSMutableString * mStr = [[NSMutableString alloc] init];;
        for (int i = 0; i < 4 - binary.length % 4; i++) {
            [mStr appendString:@"0"];
        }
        binary = [mStr stringByAppendingString:binary];
        
    }
    
    NSString * hex = @"";
    for (int i = 0; i < binary.length; i += 4) {
    
        NSString * key = [binary substringWithRange:NSMakeRange(i, 4)];
        NSString * value = [binaryDic objectForKey:key];
        if (value) {
            hex = [hex stringByAppendingString:value];
        }
    }
    
    return hex;
}

+ (NSString *)hexToBinary:(NSString *)hex {
    NSMutableDictionary * hexDic = [[NSMutableDictionary alloc] initWithCapacity:16];
    [hexDic setObject:@"0000" forKey:@"0"];
    [hexDic setObject:@"0001" forKey:@"1"];
    [hexDic setObject:@"0010" forKey:@"2"];
    [hexDic setObject:@"0011" forKey:@"3"];
    [hexDic setObject:@"0100" forKey:@"4"];
    [hexDic setObject:@"0101" forKey:@"5"];
    [hexDic setObject:@"0110" forKey:@"6"];
    [hexDic setObject:@"0111" forKey:@"7"];
    [hexDic setObject:@"1000" forKey:@"8"];
    [hexDic setObject:@"1001" forKey:@"9"];
    [hexDic setObject:@"1010" forKey:@"A"];
    [hexDic setObject:@"1011" forKey:@"B"];
    [hexDic setObject:@"1100" forKey:@"C"];
    [hexDic setObject:@"1101" forKey:@"D"];
    [hexDic setObject:@"1110" forKey:@"E"];
    [hexDic setObject:@"1111" forKey:@"F"];
    
    NSString * binary = @"";
    for (int i = 0; i < hex.length; i++) {
        
        NSString * key = [hex substringWithRange:NSMakeRange(i, 1)];
        NSString * value = [hexDic objectForKey:key.uppercaseString];
        if (value) {
            binary = [binary stringByAppendingString:value];
        }
    }
    
    return binary;
}

+ (NSString *)decimalToHex:(NSInteger)decimal {
    NSString * hex = @"";
    NSString * letter;
    NSInteger number;
    for (int i = 0; i < 9; i++) {
        
        number = decimal % 16;
        decimal = decimal / 16;
        switch (number) {
            case 10:
                letter =@"A"; break;
            case 11:
                letter =@"B"; break;
            case 12:
                letter =@"C"; break;
            case 13:
                letter =@"D"; break;
            case 14:
                letter =@"E"; break;
            case 15:
                letter =@"F"; break;
            default:
                letter = [NSString stringWithFormat:@"%ld", number];
        }
        hex = [letter stringByAppendingString:hex];
        if (decimal == 0) {
            break;
        }
    }
    return hex;
}

+ (NSInteger)hexToDecimal:(NSString *)hex {
    if (hex == nil) return 0;
    unsigned int anInt;
    NSScanner * scanner = [NSScanner scannerWithString:hex];
    [scanner scanHexInt:&anInt];
    return [[NSNumber numberWithInt:anInt] integerValue];
}

+ (NSString *)dataToHex:(NSData *)data {
    if (!data || !data.length) return @"";
    NSMutableString * hexString = [[NSMutableString alloc] initWithCapacity:data.length];
    [data enumerateByteRangesUsingBlock:^(const void * _Nonnull bytes, NSRange byteRange, BOOL * _Nonnull stop) {
        unsigned char * dataBytes = (unsigned char *)bytes;
        for (NSInteger i = 0; i < byteRange.length; i++) {
            NSString * hex = [NSString stringWithFormat:@"%02x", (dataBytes[i]) & 0xFF];
            [hexString appendString:hex];
        }
    }];
    return hexString;
}

+ (NSData *)hexToData:(NSString *)hex {
    if (!hex || !hex.length) return nil;
    NSMutableData * hexData = [[NSMutableData alloc] init];
    NSRange range;
    if (hex.length % 2 == 0) {
        range = NSMakeRange(0, 2);
    } else {
        range = NSMakeRange(0, 1);
    }
    for (NSInteger i = range.location; i < hex.length; i += 2) {
        unsigned int anInt;
        NSString * hexCharStr = [hex substringWithRange:range];
        NSScanner *scanner = [[NSScanner alloc] initWithString:hexCharStr];
        
        [scanner scanHexInt:&anInt];
        NSData *entity = [[NSData alloc] initWithBytes:&anInt length:1];
        [hexData appendData:entity];
        
        range.location += range.length;
        range.length = 2;
    }
    return (NSData *)hexData;
}

+ (NSArray<NSString *> *)dataToHexArr:(NSData *)data {
    if (!data || !data.length) return [NSArray array];
    NSMutableArray * hexStringArray = [[NSMutableArray alloc] initWithCapacity:data.length];
    [data enumerateByteRangesUsingBlock:^(const void * _Nonnull bytes, NSRange byteRange, BOOL * _Nonnull stop) {
        unsigned char * dataBytes = (unsigned char *)bytes;
        for (NSInteger i = 0; i < byteRange.length; i++) {
            NSString * hex = [NSString stringWithFormat:@"%02x", (dataBytes[i]) & 0xFF];
            [hexStringArray addObject:hex];
        }
    }];
    return (NSArray *)hexStringArray;
}

+ (NSData *)hexArrToData:(NSArray<NSString *> *)hexArr {
    if (!hexArr || !hexArr.count) return nil;
    __block NSString * hexString = @"";
    [hexArr enumerateObjectsUsingBlock:^(NSString * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        hexString = [hexString stringByAppendingString:obj];
    }];
    return [self hexToData:hexString];
}

+ (NSString *)byteToHex:(Byte)byte {
    return [NSString stringWithFormat:@"%02x", byte & 0xFF];
}

+ (Byte)stringToByte:(NSString *)string {
    return strtoul([string UTF8String], 0, 16);
}

+ (NSString *)bytesToHex:(Byte [])bytes {
    NSMutableString * hexString = [[NSMutableString alloc]init];
    int i = 0;
    if(bytes) {
        while (bytes[i] != '\0') {
            /*转成成hex字符串并自动补0*/
            NSString * hex = [NSString stringWithFormat:@"02%x",bytes[i] & 0xFF];
            [hexString appendString:hex];
            i++;
        }
    }
    return hexString;
}

@end


