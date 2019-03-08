//
//  TNDAllGameViewController.m
//  TabAndNavDemo
//
//  Created by WinslowOne on 2019/3/6.
//  Copyright © 2019年 XiShi. All rights reserved.
//

#import "TNDAllGameViewController.h"

@interface TNDAllGameViewController ()

@end

@implementation TNDAllGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"全部游戏"; // 无效，当前控制器的父控制器不是 NavVC
    
    self.tabBarController.title = @"全部游戏"; // 无效, 在 TabVC init 时被调用，
                                             // 还未加入到 TabVC 中
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.tabBarController.title = @"全部游戏"; // 有效
}


@end
