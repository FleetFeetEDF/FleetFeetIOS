//
//  SettingsTableViewCell.m
//  Fleetfeet
//
//  Created by Xuehao(David) Hu on 12/28/15.
//  Copyright © 2015 Xuehao(David) Hu. All rights reserved.
//

#import "SettingsTableViewCell.h"
#import "Constants.h"

@interface SettingsTableViewCell()

//@property (nonatomic, strong) UIImageView* settingIcon;
//@property (nonatomic, strong) UILabel* settingNameLabel;
//@property (nonatomic, strong) UIView *upLine;
//@property (nonatomic, strong) UIView *underLine;

@end


@implementation SettingsTableViewCell

- (void)awakeFromNib {
    // Initialization code
//    self.backgroundColor = [UIColor whiteColor];
//    [self createSubviews];
}
//
//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
////    self.backgroundColor = [UIColor grayColor];
//    
//    // Configure the view for the selected state
//}

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){

        self.contentView.backgroundColor = [UIColor whiteColor];

        self.contentView.translatesAutoresizingMaskIntoConstraints = NO;
        
        if(!_settingIcon){
            _settingIcon = [UIImageView new];
            _settingIcon.translatesAutoresizingMaskIntoConstraints = NO;
            _settingIcon.backgroundColor = [UIColor redColor];
        }
        
        if(!_settingNameLabel){
            _settingNameLabel = [UILabel new];
            _settingNameLabel.translatesAutoresizingMaskIntoConstraints = NO;
            _settingNameLabel.font = [UIFont fontWithName:FleetFeetRegularFont size:18.f];
            _settingNameLabel.textColor = [UIColor blackColor];
        }
        
        UIView *container = [UIView new];
        container.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:container];
        NSArray *containerConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[container]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(container)];
        NSArray *containerConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[container]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(container)];
        [self.contentView addConstraints:containerConstraints_H];
        [self.contentView addConstraints:containerConstraints_V];
        
        [container addSubview:self.settingIcon];
        [container addSubview:self.settingNameLabel];
        
        NSDictionary *cellMetrics = @{
                                      @"settingIconLeft":[NSNumber numberWithFloat:10.f],
                                      @"settingIconRadius":[NSNumber numberWithFloat:10.f],
                                      
                                      @"settingNameLabelRight":[NSNumber numberWithFloat:10.f]
                                      };
        NSArray *settingIconConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_settingIcon(settingIconRadius)]" options:0 metrics:cellMetrics views:NSDictionaryOfVariableBindings(_settingIcon)];
        NSArray *settingIConConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-settingIconLeft-[_settingIcon(settingIconRadius)]" options:0 metrics:cellMetrics views:NSDictionaryOfVariableBindings(_settingIcon)];
        NSLayoutConstraint *settingIconCenterY = [NSLayoutConstraint constraintWithItem:self.settingIcon attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:container attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0];
        [container addConstraints:settingIConConstraints_H];
        [container addConstraints:settingIconConstraints_V];
        [container addConstraint:settingIconCenterY];
    }
    return self;
}

//-(UIImageView *)settingIcon{
//    if(!_settingIcon){
//        _settingIcon = [UIImageView new];
//        _settingIcon.translatesAutoresizingMaskIntoConstraints = NO;
//        _settingIcon.backgroundColor = [UIColor redColor];
//    }
//    return _settingIcon;
//}
//
//-(UILabel *)settingNameLabel{
//    if(!_settingNameLabel){
//        _settingNameLabel = [UILabel new];
//        _settingNameLabel.translatesAutoresizingMaskIntoConstraints = NO;
//        _settingNameLabel.font = [UIFont fontWithName:FleetFeetRegularFont size:18.f];
//        _settingNameLabel.textColor = [UIColor blackColor];
//    }
//    return _settingNameLabel;
//}
//
//-(UIView *)upLine{
//    if(!_upLine){
//        _upLine = [UIView new];
//        _upLine.translatesAutoresizingMaskIntoConstraints = NO;
//        _upLine.backgroundColor = [UIColor blackColor];
//    }
//    return _upLine;
//}
//
//-(UIView *)underLine{
//    if(!_underLine){
//        _underLine = [UIView new];
//        _underLine.translatesAutoresizingMaskIntoConstraints = NO;
//        _underLine.backgroundColor = [UIColor blackColor];
//    }
//    return _underLine;
//}

//-(void)updateConstraints{
//    [super updateConstraints];
//    
//    NSLog(@"hah");
//
//}

@end
