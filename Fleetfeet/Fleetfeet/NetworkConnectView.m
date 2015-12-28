//
//  NetworkConnectView.m
//  Fleetfeet
//
//  Created by Xuehao(David) Hu on 12/24/15.
//  Copyright © 2015 Xuehao(David) Hu. All rights reserved.
//

#import "NetworkConnectView.h"
#import "Constants.h"


@interface NetworkConnectView()

@property (nonatomic, strong) UIView *sensorConnectionSubView;
@property (nonatomic, strong) UILabel *sensorConnectionLabel;
@property (nonatomic, strong) UIImageView *sensorConnectionStatusImageView;
@property (nonatomic, strong) UIButton *sensorConnectButton;

@property (nonatomic, strong) UIView *splitLine;

@property (nonatomic, strong) UIView *wifiConnectionSubView;
@property (nonatomic, strong) UILabel *wifiConnectionLabel;
@property (nonatomic, strong) UIImageView *wifiConnectionStatusImageView;
@property (nonatomic, strong) UIButton *wifiConnectButton;

@end

@implementation NetworkConnectView

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self createSubViews];
    }
    return self;
}

-(id)init{
    return [self initWithFrame:CGRectZero];
}



-(void)createSubViews{
    self.backgroundColor = [UIColor whiteColor];
    
    [self addSubview:self.sensorConnectionSubView];
    [self.sensorConnectionSubView addSubview:self.sensorConnectionLabel];
    [self.sensorConnectionSubView addSubview:self.sensorConnectionStatusImageView];
    [self.sensorConnectionSubView addSubview:self.sensorConnectButton];
    
    [self addSubview:self.wifiConnectionSubView];
    [self.wifiConnectionSubView addSubview:self.wifiConnectionLabel];
    [self.wifiConnectionSubView addSubview:self.wifiConnectionStatusImageView];
    [self.wifiConnectionSubView addSubview:self.wifiConnectButton];
}

//****************************************************
// sub Views
//****************************************************
-(UIView *)sensorConnectionSubView{
    if(!_sensorConnectionSubView){
        _sensorConnectionSubView = [UIView new];
        _sensorConnectionSubView.translatesAutoresizingMaskIntoConstraints = NO;
        _sensorConnectionSubView.backgroundColor = [UIColor whiteColor];
    }
    return _sensorConnectionSubView;
}

-(UILabel *)sensorConnectionLabel{
    if(!_sensorConnectionLabel){
        _sensorConnectionLabel = [UILabel new];
        _sensorConnectionLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _sensorConnectionLabel.text = @"Sensor Connection";
        _sensorConnectionLabel.textColor = [UIColor blackColor];
        _sensorConnectionLabel.font = [UIFont fontWithName:FleetFeetRegularFont size:19.f];
    }
    return _sensorConnectionLabel;
}

-(UIImageView *)sensorConnectionStatusImageView{
    if(!_sensorConnectionStatusImageView){
        _sensorConnectionStatusImageView = [UIImageView new];
        _sensorConnectionStatusImageView.translatesAutoresizingMaskIntoConstraints = NO;
        _sensorConnectionStatusImageView.image = [UIImage imageNamed:@"Sensor-UnConnected.png"];
    }
    return _sensorConnectionStatusImageView;
}

-(UIButton *)sensorConnectButton{
    if(!_sensorConnectButton){
        _sensorConnectButton = [UIButton new];
        _sensorConnectButton.translatesAutoresizingMaskIntoConstraints = NO;
        _sensorConnectButton.backgroundColor = [UIColor whiteColor];
        
        [_sensorConnectButton setTitle:@"Connect" forState:UIControlStateNormal];
        [_sensorConnectButton setTitleColor:[UIColor colorWithRed:3.0/255.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        _sensorConnectButton.layer.borderWidth = 1.0f;
        _sensorConnectButton.layer.borderColor = [[UIColor blackColor] CGColor];
    }
    return  _sensorConnectButton;
}

-(UIView *)splitLine{
    if(!_splitLine){
        _splitLine = [UIView new];
        _splitLine.translatesAutoresizingMaskIntoConstraints = NO;
        _splitLine.backgroundColor = [UIColor blackColor];
    }
    return _splitLine;
}

-(UIView *)wifiConnectionSubView{
    if(!_wifiConnectionSubView){
        _wifiConnectionSubView = [UIView new];
        _wifiConnectionSubView.translatesAutoresizingMaskIntoConstraints = NO;
        _wifiConnectionSubView.backgroundColor = [UIColor whiteColor];
    }
    return _wifiConnectionSubView;
}

-(UILabel *)wifiConnectionLabel{
    if(!_wifiConnectionLabel){
        _wifiConnectionLabel = [UILabel new];
        _wifiConnectionLabel.translatesAutoresizingMaskIntoConstraints = NO;
        _wifiConnectionLabel.text = @"WIFI Connection";
        _wifiConnectionLabel.textColor = [UIColor blackColor];
        _wifiConnectionLabel.font = [UIFont fontWithName:FleetFeetRegularFont size:19.f];
    }
    return _wifiConnectionLabel;
}

-(UIImageView *)wifiConnectionStatusImageView{
    if(!_wifiConnectionStatusImageView){
        _wifiConnectionStatusImageView = [UIImageView new];
        _wifiConnectionStatusImageView.translatesAutoresizingMaskIntoConstraints = NO;
        _wifiConnectionStatusImageView.image = [UIImage imageNamed:@"WIFI-UnConnected"];
    }
    return _wifiConnectionStatusImageView;
}

-(UIButton *)wifiConnectButton{
    if(!_wifiConnectButton){
        _wifiConnectButton = [UIButton new];
        _wifiConnectButton.translatesAutoresizingMaskIntoConstraints = NO;
        _wifiConnectButton.backgroundColor = [UIColor whiteColor];
        
        [_wifiConnectButton setTitle:@"Connect" forState:UIControlStateNormal];
        [_wifiConnectButton setTitleColor:[UIColor colorWithRed:3.0/255.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        _wifiConnectButton.layer.borderColor = [[UIColor blackColor]CGColor];
        _wifiConnectButton.layer.borderWidth = 1.0f;
    }
    return _wifiConnectButton;
}


//****************************************************
// set up Constraints
//****************************************************
-(void)setUpConstraints{
    CGFloat screenHeight = [[UIScreen mainScreen] bounds].size.height;
    NSDictionary *sensorConnectMetrics = @{
                                           @"sensorConnectSubViewHeight":[NSNumber numberWithFloat:screenHeight/2],
                                           
                                           @"sensorConnectLabelTop":[NSNumber numberWithFloat:30.f],
                                           @"sensorConnectLabelHeight":[NSNumber numberWithFloat:22.f],
                                           @"sensorConnectLabelWidth":[NSNumber numberWithFloat:200.f],
                                           
                                           @"sensorConnectStatusImageViewTop":[NSNumber numberWithFloat:10.f],
                                           @"sensorConnectStatusImageViewWidth":[NSNumber numberWithFloat:122.f],
                                           @"sensorConnectStatusImageViewHeight":[NSNumber numberWithFloat:110.f],
                                           
                                           @"sensorConnectButtonTop":[NSNumber numberWithFloat:40.f],
                                           @"sensorConnectButtonWidth":[NSNumber numberWithFloat:124.f],
                                           @"sensorConnectButtonHeight":[NSNumber numberWithFloat:35.f]
                                           
                                           };
    
    NSDictionary *wifiConnectMetrics = @{
                                         @"wifiConnectSubViewHeight":[NSNumber numberWithFloat:screenHeight/2],
                                         
                                         @"wifiConnectLabelTop":[NSNumber numberWithFloat:30.f],
                                         @"wifiConnectLabelHeight":[NSNumber numberWithFloat:22.f],
                                         @"wifiConnectLabelWidth":[NSNumber numberWithFloat:200.f],
                                         
                                         @"wifiConnectStatusImageViewTop":[NSNumber numberWithFloat:10.f],
                                         @"wifiConnectStatusImageViewWidth":[NSNumber numberWithFloat:122.f],
                                         @"wifiConnectStatusImageViewHeight":[NSNumber numberWithFloat:110.f],
                                         
                                         @"wifiConnectButtonTop":[NSNumber numberWithFloat:40.f],
                                         @"wifiConnectButtonWidth":[NSNumber numberWithFloat:124.f],
                                         @"wifiConnectButtonHeight":[NSNumber numberWithFloat:35.f]
                                         };
    
    //sensor connect subview
    NSArray *sensorConnectSubviewConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[_sensorConnectionSubView(sensorConnectSubViewHeight)]" options:0 metrics:sensorConnectMetrics views:NSDictionaryOfVariableBindings(_sensorConnectionSubView)];
    NSArray *sensorConnectSubviewConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_sensorConnectionSubView]-0-|" options:0 metrics:sensorConnectMetrics views:NSDictionaryOfVariableBindings(_sensorConnectionSubView)];
    [self addConstraints:sensorConnectSubviewConstraints_H];
    [self addConstraints:sensorConnectSubviewConstraints_V];
    
    //sensor connect label
    NSArray *sensorConnectLabelConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-sensorConnectLabelTop-[_sensorConnectionLabel(sensorConnectLabelHeight)]" options:0 metrics:sensorConnectMetrics views:NSDictionaryOfVariableBindings(_sensorConnectionLabel)];
    NSArray *sensorConnectLabelConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_sensorConnectionLabel(sensorConnectLabelWidth)]" options:0 metrics:sensorConnectMetrics views:NSDictionaryOfVariableBindings(_sensorConnectionLabel)];
    NSLayoutConstraint *sensorConnectLabelCenterX = [NSLayoutConstraint constraintWithItem:self.sensorConnectionLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.sensorConnectionSubView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    [self.sensorConnectionSubView addConstraints:sensorConnectLabelConstraints_H];
    [self.sensorConnectionSubView addConstraints:sensorConnectLabelConstraints_V];
    [self.sensorConnectionSubView addConstraint:sensorConnectLabelCenterX];
    
    
    
    
    

}


@end
