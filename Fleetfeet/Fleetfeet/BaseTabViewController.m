//
//  BaseTabViewController.m
//  Fleetfeet
//
//  Created by Xuehao(David) Hu on 12/24/15.
//  Copyright © 2015 Xuehao(David) Hu. All rights reserved.
//

#import "BaseTabViewController.h"
#import "NetworkConnectViewController.h"
#import "CollectDataViewController.h"
#import "SettingsViewController.h"

typedef enum {
    NetworkConnection = 0,
    CollectData = 1,
    Settings = 2
}FleetFeetTab;


@interface BaseTabViewController ()<UITabBarControllerDelegate,UINavigationControllerDelegate>

@end

@implementation BaseTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.delegate = self;
    
    NetworkConnectViewController *networkVC = [NetworkConnectViewController new];
    UINavigationController *networkNavVC = [[UINavigationController alloc] initWithRootViewController:networkVC];
    networkNavVC.title = @"Connect";
    networkNavVC.tabBarItem.image = [UIImage imageNamed:@"Network-UnSelected"];
    
    CollectDataViewController *collectDataVC = [CollectDataViewController new];
    UINavigationController *collectNavVC = [[UINavigationController alloc] initWithRootViewController:collectDataVC];
    collectNavVC.title = @"Collect Data";
    collectNavVC.tabBarItem.image = [UIImage imageNamed:@"Collecting-UnSelected"];
    
    SettingsViewController *settingsVC = [SettingsViewController new];
    UINavigationController *settingsNavVC = [[UINavigationController alloc] initWithRootViewController:settingsVC];
    settingsNavVC.title = @"Settings";
    settingsNavVC.tabBarItem.image = [UIImage imageNamed:@"More-UnSelected"];
    
    self.viewControllers = [NSArray arrayWithObjects:networkNavVC,collectNavVC,settingsNavVC,nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
