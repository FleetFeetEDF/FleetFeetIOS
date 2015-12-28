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

@property (nonatomic, strong) NetworkConnectView *networkConnectView;

@end

@implementation NetworkConnectViewController
@dynamic view;

-(void)loadView{
    self.view = [self networkConnectView];
//    self.view.translatesAutoresizingMaskIntoConstraints = NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationItem setTitle:@"Network Connect"];
    
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
-(NetworkConnectView *)networkConnectView{
    if(!_networkConnectView){
        _networkConnectView = [NetworkConnectView new];
//        _networkConnectView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _networkConnectView;
}


@end
