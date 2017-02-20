//
//  Customer.h
//  ObserverPattern
//
//  Created by wupeng on 2017/2/20.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubscriptionServiceCenterProtocol.h"

@interface Customer : NSObject <SubscriptionServiceCenterProtocol>

@property (nonatomic, strong) NSString *name;

- (id)initWithName:(NSString *)name;

@end
