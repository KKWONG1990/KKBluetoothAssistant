//
//  KKBluetoothConfig.h
//  KKAppToolKit
//
//  Created by BYMac on 2022/3/29.
//  Copyright © 2022 KKWONG. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KKBluetoothConfig : NSObject

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
+ (instancetype)shareConfig;

/// 外设服务UUID
@property (nonatomic, copy) NSString * serviceUUID;

/// 写入外设服务特征UUID
@property (nonatomic, copy) NSString * txUUID;

/// 读取外设服务特征UUID
@property (nonatomic, copy) NSString * rxUUID;

@end

NS_ASSUME_NONNULL_END
