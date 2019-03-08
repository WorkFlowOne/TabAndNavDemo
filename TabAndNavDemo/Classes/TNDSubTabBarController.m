//
//  TNDSubTabBarController.m
//  TabAndNavDemo
//
//  Created by WinslowOne on 2019/3/6.
//  Copyright © 2019年 XiShi. All rights reserved.
//

#import "TNDSubTabBarController.h"
#import "TNDBestGameViewController.h"
#import "TNDAllGameViewController.h"

@interface TNDSubTabBarController ()

@end

@implementation TNDSubTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupView];
}

- (void)setupView {
    // 创建第一个子控制器
    TNDBestGameViewController *vc1 = [[TNDBestGameViewController alloc] init];
    vc1.view.backgroundColor = [UIColor redColor];
    vc1.tabBarItem.title = @"红色1"; //无效
    vc1.title = @"精选";
    [self addChildViewController:vc1];
    
    // 创建第二个子控制器
    TNDAllGameViewController *vc2 = [[TNDAllGameViewController alloc] init];
    vc2.view.backgroundColor = [UIColor yellowColor];
    vc2.tabBarItem.title = @"游戏";
    [self addChildViewController:vc2];
    
    // 创建第三个子控制器
    UIViewController *vc3 = [[UIViewController alloc] init];
    vc3.view.backgroundColor = [UIColor blueColor];
    vc3.tabBarItem.title = @"蓝色2";
    [self addChildViewController:vc3];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

@end
