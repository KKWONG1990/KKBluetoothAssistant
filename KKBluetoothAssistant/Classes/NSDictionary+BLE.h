//
//  NSDictionary+BLE.h
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (BLE)

/// 外围设备本地名称
- (NSString *)ble_advertisementDataLocalName;

/// 外围设备发射功率
- (NSNumber *)ble_advertisementDataTxPowerLevel;

/// 外围设备服务uuid列表，返回CBUUID列表
- (NSArray *)ble_advertisementDataServiceUUIDs;

/// 外围设备特定服务广播字典
- (NSDictionary *)ble_advertisementDataServiceData;

/// 外围设备制造商扩展数据
- (NSData *)ble_advertisementDataManufacturerData;

/// 外围设备被删除的uuid列表，返回CBUUID列表
- (NSArray *)ble_advertisementDataOverflowServiceUUIDs;

/// 外围设备是否可连接
- (NSNumber *)ble_advertisementDataIsConnectable;

/// 外围设备请求服务uuids，返回CBUUID列表
- (NSArray *)ble_advertisementDataSolicitedServiceUUIDs;
@end

NS_ASSUME_NONNULL_END
