//
//  KKBluetoothConfig.m
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import "KKBluetoothConfig.h"

@implementation KKBluetoothConfig

+ (instancetype)shareConfig {
    static KKBluetoothConfig *_config = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _config = [[self alloc] init];
    });
    return _config;
}

@end
