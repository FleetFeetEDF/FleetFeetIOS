//
//  CollectDataViewController.m
//  Fleetfeet
//
//  Created by Xuehao(David) Hu on 12/26/15.
//  Copyright © 2015 Xuehao(David) Hu. All rights reserved.
//

#import "CollectDataViewController.h"
#import "CollectDataView.h"

@interface CollectDataViewController ()

@property (nonatomic, strong) CollectDataView *view;

@end

@implementation CollectDataViewController
@dynamic view;

-(void)loadView{
    self.view = [CollectDataView new];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.navigationItem setTitle:@"Collect Data"];
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
