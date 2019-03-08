//
//  TNDRedViewController.m
//  TabAndNavDemo
//
//  Created by WinslowOne on 2019/3/6.
//  Copyright © 2019年 XiShi. All rights reserved.
//

#import "TNDRedViewController.h"
#import <Masonry.h>
#import "TNDSubTabBarController.h"

@interface TNDRedViewController ()

@end

@implementation TNDRedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupView];
}

- (void)setupView {
    UIButton *pushButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [self.view addSubview:pushButton];
    [pushButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(80, 44));
        make.center.equalTo(self.view);
    }];
    [pushButton setTitle:@"Push" forState:UIControlStateNormal];
    [pushButton addTarget:self action:@selector(pressedPushButton:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressedPushButton:(id)sender {
    TNDSubTabBarController *tabBarVC = [[TNDSubTabBarController alloc] init];
    tabBarVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:tabBarVC animated:YES];
}

@end
