//
//  TNDBestGameViewController.m
//  TabAndNavDemo
//
//  Created by WinslowOne on 2019/3/6.
//  Copyright © 2019年 XiShi. All rights reserved.
//

#import "TNDBestGameViewController.h"
#import <Masonry.h>
#import "TNDDetailViewController.h"

@interface TNDBestGameViewController ()

@end

@implementation TNDBestGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBarController.title = @"游戏精选";
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
    TNDDetailViewController *detailVC = [[TNDDetailViewController alloc] init];
    detailVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:detailVC animated:YES];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    self.tabBarController.title = @"游戏精选"; // 有效，
}
@end
