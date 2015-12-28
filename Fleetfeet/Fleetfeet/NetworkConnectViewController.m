//
//  NetworkConnectViewController.m
//  Fleetfeet
//
//  Created by Xuehao(David) Hu on 12/24/15.
//  Copyright © 2015 Xuehao(David) Hu. All rights reserved.
//

#import "NetworkConnectViewController.h"
#import "NetworkConnectView.h"


@interface NetworkConnectViewController ()

@property (nonatomic, strong) NetworkConnectView *view;

@end

@implementation NetworkConnectViewController
@dynamic view;

-(void)loadView{
    self.view = [NetworkConnectView new];
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
