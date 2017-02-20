//
//  SubscriptionServiceCenterProtocol.h
//  ObserverPattern
//
//  Created by wupeng on 2017/2/20.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SubscriptionServiceCenterProtocol <NSObject>

@required
- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber;

@end
