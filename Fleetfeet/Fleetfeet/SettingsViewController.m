    //
//  SettingsViewController.m
//  Fleetfeet
//
//  Created by Xuehao(David) Hu on 12/26/15.
//  Copyright © 2015 Xuehao(David) Hu. All rights reserved.
//

#import "SettingsViewController.h"
#import "SettingsView.h"
#import "SettingsTableViewCell.h"

@interface SettingsViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) SettingsView *view;

@property (nonatomic, strong) UITableView *settingsTableView;

@end

@implementation SettingsViewController
@dynamic view;

-(void)loadView{
    self.view = [SettingsView new];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self.navigationItem setTitle:@"Settings"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//*************************************************
// sub views
//*************************************************
-(UITableView *)settingsTableView{
    if(!_settingsTableView){
        _settingsTableView = [UITableView new];
        _settingsTableView.translatesAutoresizingMaskIntoConstraints = NO;
        
        _settingsTableView.delegate = self;
        _settingsTableView.dataSource = self;
        
    }
    return _settingsTableView;
}

//*************************************************
// table view delegate methods
//*************************************************
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SettingsTableViewCell *cell = [tableView deque];
    
}



@end
