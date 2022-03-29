//
//  KKBaseBluetoothCommand.h
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>

NS_ASSUME_NONNULL_BEGIN

@interface KKBaseBluetoothCommand : NSObject

/// 外设服务UUID
@property (nonatomic, strong, readonly) CBUUID * serviceUUID;

/// 写入外设服务特征UUID
@property (nonatomic, strong, readonly) CBUUID * txUUID;

/// 读取外设服务特征UUID
@property (nonatomic, strong, readonly) CBUUID * rxUUID;

/// 发送的指令标识
@property (nonatomic, copy, readonly) NSString * identity;

/// 发送失败指令标识
@property (nonatomic, copy, readonly) NSString * failedIdentity;

/// 读取数据结束指令标识
@property (nonatomic, strong, readonly) NSData * endIdentity;

/// 发送的指令数据
@property (nonatomic, strong, readonly) NSData * transmitData;

/// 单条数据长度，用于从返回可变长数据截取一个完成数据
@property (nonatomic, readonly) NSInteger singleLen;

@end

NS_ASSUME_NONNULL_END
