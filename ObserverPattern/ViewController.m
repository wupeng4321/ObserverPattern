//
//  ViewController.m
//  ObserverPattern
//
//  Created by wupeng on 2017/2/20.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "ViewController.h"
#import "SubscriptionServiceCenter.h"

static NSString *scienceA = @"scienceA";

static NSString *scienceB = @"scienceB";

static NSString *versionA = @"version1.0.0";

static NSString *versionB = @"version2.0.0";


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建订单号
    [SubscriptionServiceCenter createSubscriptionNumber:scienceA];
    [SubscriptionServiceCenter createSubscriptionNumber:scienceB];
    
    //创建用户
    Customer *customerA = [[Customer alloc] initWithName:@"wupengA"];
    Customer *customerB = [[Customer alloc] initWithName:@"wupengB"];
    //添加订阅的用户到指定的刊物
    [SubscriptionServiceCenter addCustomer:customerA withSubscriptionNumber:scienceA];
    
    [SubscriptionServiceCenter addCustomer:customerB withSubscriptionNumber:scienceA];
    [SubscriptionServiceCenter addCustomer:customerB withSubscriptionNumber:scienceB];

    
    //发行机构发送消息
    [SubscriptionServiceCenter sendMessage:versionA toSubscriptionNumber:scienceA];
    
    [SubscriptionServiceCenter sendMessage:versionB toSubscriptionNumber:scienceB];
    
//    以下是我的打印信息，正好符合我的设计图的构思，请注意观看
//    2017-02-20 23:37:41.537 ObserverPattern[2676:85820] version1.0.0 scienceA wupengA
//    2017-02-20 23:37:41.538 ObserverPattern[2676:85820] version1.0.0 scienceA wupengB
//    2017-02-20 23:37:41.538 ObserverPattern[2676:85820] version2.0.0 scienceB wupengB
    
}

@end
