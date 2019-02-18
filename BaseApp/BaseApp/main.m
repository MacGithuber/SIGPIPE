//
//  main.m
//  BaseApp
//
//  Created by liufuhao on 2019/2/18.
//  Copyright © 2019年 LFH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        // socket 通道断裂 引发SIGPIPE信号 app闪退 解决方法
        struct sigaction sa;
        sa.sa_handler = SIG_IGN;
        sigaction( SIGPIPE, &sa, 0 );// 屏蔽此信号
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
