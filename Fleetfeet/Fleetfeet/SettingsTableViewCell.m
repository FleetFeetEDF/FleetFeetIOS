//
//  SettingsTableViewCell.m
//  Fleetfeet
//
//  Created by Xuehao(David) Hu on 12/28/15.
//  Copyright © 2015 Xuehao(David) Hu. All rights reserved.
//

#import "SettingsTableViewCell.h"

@interface SettingsTableViewCell()

@property (nonatomic, strong) UIImageView* settingIcon;
@property (nonatomic, strong) UILabel* settingNameLabel;

@end


@implementation SettingsTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.backgroundColor = [UIColor whiteColor];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    self.backgroundColor = [UIColor grayColor];
    
    // Configure the view for the selected state
}




@end
