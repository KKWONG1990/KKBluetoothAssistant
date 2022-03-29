//
//  NSDictionary+BLE.m
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import "NSDictionary+BLE.h"
#import <CoreBluetooth/CoreBluetooth.h>
@implementation NSDictionary (BLE)

- (NSString *)ble_advertisementDataLocalName {
    if ([self.allKeys containsObject:CBAdvertisementDataLocalNameKey]) {
        return [self objectForKey:CBAdvertisementDataLocalNameKey];
    }
    return nil;
}

- (NSNumber *)ble_advertisementDataTxPowerLevel {
    if ([self.allKeys containsObject:CBAdvertisementDataTxPowerLevelKey]) {
        return [self objectForKey:CBAdvertisementDataTxPowerLevelKey];
    }
    return nil;
}

- (NSArray *)ble_advertisementDataServiceUUIDs {
    if ([self.allKeys containsObject:CBAdvertisementDataServiceUUIDsKey]) {
        return (NSArray *)[self objectForKey:CBAdvertisementDataServiceUUIDsKey];
    }
    return nil;
}

- (NSDictionary *)ble_advertisementDataServiceData {
    if ([self.allKeys containsObject:CBAdvertisementDataServiceDataKey]) {
        return (NSDictionary *)[self objectForKey:CBAdvertisementDataServiceDataKey];
    }
    return nil;
}

- (NSData *)ble_advertisementDataManufacturerData {
    if ([self.allKeys containsObject:CBAdvertisementDataManufacturerDataKey]) {
        return (NSData *)[self objectForKey:CBAdvertisementDataManufacturerDataKey];
    }
    return nil;
}

- (NSArray *)ble_advertisementDataOverflowServiceUUIDs {
    if ([self.allKeys containsObject:CBAdvertisementDataOverflowServiceUUIDsKey]) {
        return (NSArray *)[self objectForKey:CBAdvertisementDataOverflowServiceUUIDsKey];
    }
    return nil;
}

- (NSNumber *)ble_advertisementDataIsConnectable {
    if ([self.allKeys containsObject:CBAdvertisementDataIsConnectable]) {
        return (NSNumber *)[self objectForKey:CBAdvertisementDataIsConnectable];
    }
    return nil;
}

- (NSArray *)ble_advertisementDataSolicitedServiceUUIDs {
    if ([self.allKeys containsObject:CBAdvertisementDataSolicitedServiceUUIDsKey]) {
        return (NSArray *)[self objectForKey:CBAdvertisementDataSolicitedServiceUUIDsKey];
    }
    return nil;
}

@end
