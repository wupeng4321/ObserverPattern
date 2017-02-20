//
//  Customer.m
//  ObserverPattern
//
//  Created by wupeng on 2017/2/20.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "Customer.h"

@implementation Customer

- (id)initWithName:(NSString *)name {
    self = [super init];
    self.name = name;
    return self;
}

- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber {
    NSLog(@"%@ %@ %@", message, subscriptionNumber, _name);
}

@end
