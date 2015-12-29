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
#import "Constants.h"

@interface SettingsViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) SettingsView *view;

@property (nonatomic, strong) UITableView *settingsTableView;

@end

@implementation SettingsViewController
@dynamic view;

-(void)loadView{
    self.view = [SettingsView new];
    [self.view addSubview:self.settingsTableView];
    
    NSArray *settingsTableViewConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[_settingsTableView]-0-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_settingsTableView)];
    NSArray *settingsTableViewConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_settingsTableView]-0-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_settingsTableView)];
    [self.view addConstraints:settingsTableViewConstraints_H];
    [self.view addConstraints:settingsTableViewConstraints_V];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self.navigationItem setTitle:@"Settings"];
//    [self.settingsTableView registerClass:[SettingsTableViewCell class] forCellReuseIdentifier:@"settingCell"];
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
        [_settingsTableView setSeparatorStyle:UITableViewCellSeparatorStyleSingleLine];
        
        [_settingsTableView registerClass:[SettingsTableViewCell class] forCellReuseIdentifier:@"settingCell"];
        
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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(section==0){
        return 4;
    }else if (section == 1){
        return 4;
    }else if (section == 2){
        return 8;
    }else{
        return 0;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"settingCell";
    
    SettingsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
//    SettingsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"settingCell"forIndexPath:indexPath];
    
    
    cell.settingIcon.backgroundColor = [UIColor blueColor];
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    if(section == 0 ){
        return @"Network";
    }else if (section == 1){
        return @"Data Collecting";
    }else if (section == 2){
        return @"About";
    }else{
        return nil;
    }
}


-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 50.f;
}

//-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 20)];
////    headerView.translatesAutoresizingMaskIntoConstraints = NO;
//    headerView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0];
//    UILabel *headerLabel = [UILabel new];
////    headerLabel.translatesAutoresizingMaskIntoConstraints = NO;
//    headerLabel.textColor = [UIColor blackColor];
//    headerLabel.font = [UIFont fontWithName:FleetFeetRegularFont size:18.f];
//    
////    NSArray
//    
//    if(section == 0){
//        headerLabel.text = @"Network";
//    }else if (section == 1){
//        headerLabel.text = @"Data Collection";
//    }else if (section == 2){
//        headerLabel.text = @"About";
//    }else{
//        ;
//    }
//    
//    return headerView;
//}


@end
