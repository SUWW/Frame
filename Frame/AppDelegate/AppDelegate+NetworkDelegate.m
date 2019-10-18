//
//  AppDelegate+NetworkDelegate.m
//  Frame
//
//  Created by MF on 2019/10/17.
//  Copyright © 2019 MF. All rights reserved.
//

#import "AppDelegate+NetworkDelegate.h"
#import "Header.h"
@implementation AppDelegate (NetworkDelegate)
-(void)networkStatus
{
    // 1.实时获取网络状态,通过Block回调实时获取(此方法可多次调用)
    // 网络状态改变一次, networkStatusWithBlock就会响应一次
    [PPNetworkHelper networkStatusWithBlock:^(PPNetworkStatusType networkStatus) {
        
        switch (networkStatus) {
                // 未知网络
            case PPNetworkStatusUnknown:
                NSLog(@"网络环境：未知网络");
                break;
                // 无网络
            case PPNetworkStatusNotReachable:
                NSLog(@"网络环境：无网络");
                
                break;
                // 手机网络
            case PPNetworkStatusReachableViaWWAN:
                NSLog(@"网络环境：手机自带网络");
                break;
                // 无线网络
            case PPNetworkStatusReachableViaWiFi:
                NSLog(@"网络环境：WiFi");
                
                break;
        }
        
    }];
}
@end
