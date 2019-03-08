//
//  TNDTabBarController.m
//  TabAndNavDemo
//
//  Created by WinslowOne on 2019/3/6.
//  Copyright © 2019年 XiShi. All rights reserved.
//

#import "TNDTabBarController.h"
#import "TNDRedViewController.h"

@interface TNDTabBarController ()

@end

@implementation TNDTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    [self setupView];
}

- (void)setupView {
    // 创建第一个子控制器
    TNDRedViewController *vc1 = [[TNDRedViewController alloc] init];
    vc1.view.backgroundColor = [UIColor redColor];
    vc1.tabBarItem.title = @"红色"; // 无效
    vc1.title = @"红色";
    UINavigationController *navVC1 = [[UINavigationController alloc] initWithRootViewController:vc1];
    [self addChildViewController:navVC1];
    
    // 创建第二个子控制器
    UIViewController *vc2 = [[UIViewController alloc] init];
    vc2.view.backgroundColor = [UIColor yellowColor];
    vc2.tabBarItem.title = @"黄色"; // 无效
    vc2.title = @"黄色";
    UINavigationController *navVC2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    [self addChildViewController:navVC2];
    
    // 创建第三个子控制器
    UIViewController *vc3 = [[UIViewController alloc] init];
    vc3.view.backgroundColor = [UIColor blueColor];
    vc3.tabBarItem.title = @"蓝色"; // 有效，没有 NavVC的干扰
    [self addChildViewController:vc3];
}

@end
