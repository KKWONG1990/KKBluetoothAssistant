//
//  KKBaseBluetoothCommand.m
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import "KKBaseBluetoothCommand.h"
#import "KKBluetoothConfig.h"

@interface KKBaseBluetoothCommand()

@end

@implementation KKBaseBluetoothCommand

- (CBUUID *)serviceUUID {
    return [CBUUID UUIDWithString:KKBluetoothConfig.shareConfig.serviceUUID];
}

- (CBUUID *)txUUID {
    return [CBUUID UUIDWithString:KKBluetoothConfig.shareConfig.txUUID];
}

- (CBUUID *)rxUUID {
    return [CBUUID UUIDWithString:KKBluetoothConfig.shareConfig.rxUUID];
}

- (NSString *)identity {
    return nil;
}

- (NSString *)failedIdentity {
    return nil;
}

- (NSData *)endIdentity {
    return nil;
}

- (NSData *)transmitData {
    return nil;
}

- (NSInteger)singleLen {
    return 0;
}
@end
