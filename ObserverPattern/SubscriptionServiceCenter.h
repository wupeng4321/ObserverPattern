//
//  SubscriptionServiceCenter.h
//  ObserverPattern
//
//  Created by wupeng on 2017/2/20.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubscriptionServiceCenterProtocol.h"
#import "Customer.h"

@interface SubscriptionServiceCenter : NSObject

#pragma mark - 维护订阅信息

/**
 创建订阅号

 @param subscriptionNumber 订阅号码
 */
+ (void)createSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 移除订阅号

 @param subscriptionNumber 订阅号码
 */
+ (void)removeSubscriptionNumber:(NSString *)subscriptionNumber;


#pragma mark - 维护客户信息

/**
 添加读者到具体的订阅号中
 
 @param customer 客户
 @param subscriptionNumber 订阅号码
 */
+ (void)addCustomer:(Customer *)customer withSubscriptionNumber:(NSString *)subscriptionNumber;


/**
 从具体的订阅号中移除读者

 @param customer 客户
 @param subscriptionNumber 订阅号
 */
+ (void)removeCustomer:(Customer *)customer withSubscriptionNumber:(NSString *)subscriptionNumber;


#pragma mark - 发送消息

/**
 发送消息到具体的订阅号中

 @param message 消息
 @param subscriptionNumber 订阅号码
 */
+ (void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber;

@end
