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
    
    [self addSubview:self.splitLine];
    
    [self addSubview:self.wifiConnectionSubView];
    [self.wifiConnectionSubView addSubview:self.wifiConnectionLabel];
    [self.wifiConnectionSubView addSubview:self.wifiConnectionStatusImageView];
    [self.wifiConnectionSubView addSubview:self.wifiConnectButton];
    
    [self setUpConstraints];
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
        _sensorConnectionLabel.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.2];
        _sensorConnectionLabel.font = [UIFont fontWithName:FleetFeetRegularFont size:19.f];
        [_sensorConnectionLabel setTextAlignment:NSTextAlignmentCenter];
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
        
        [_sensorConnectButton setUserInteractionEnabled:YES];
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
        _wifiConnectionLabel.textColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.2];
        _wifiConnectionLabel.font = [UIFont fontWithName:FleetFeetRegularFont size:19.f];
        [_wifiConnectionLabel setTextAlignment:NSTextAlignmentCenter];
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
        
        [_wifiConnectButton setUserInteractionEnabled:YES];
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
                                           
                                           @"sensorConnectLabelTop":[NSNumber numberWithFloat:90.f],
                                           @"sensorConnectLabelHeight":[NSNumber numberWithFloat:22.f],
                                           @"sensorConnectLabelWidth":[NSNumber numberWithFloat:200.f],
                                           
                                           @"sensorConnectStatusImageViewTop":[NSNumber numberWithFloat:10.f],
                                           @"sensorConnectStatusImageViewWidth":[NSNumber numberWithFloat:61.f],
                                           @"sensorConnectStatusImageViewHeight":[NSNumber numberWithFloat:55.f],
                                           
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
                                         @"wifiConnectStatusImageViewWidth":[NSNumber numberWithFloat:61.f],
                                         @"wifiConnectStatusImageViewHeight":[NSNumber numberWithFloat:55.f],
                                         
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
    [self addConstraints:sensorConnectLabelConstraints_H];
    [self addConstraints:sensorConnectLabelConstraints_V];
    [self addConstraint:sensorConnectLabelCenterX];
    
    //sensor connect status imageview
    NSArray *sensorConnectStatusImageViewConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_sensorConnectionLabel]-sensorConnectStatusImageViewTop-[_sensorConnectionStatusImageView(sensorConnectStatusImageViewHeight)]" options:0 metrics:sensorConnectMetrics views:NSDictionaryOfVariableBindings(_sensorConnectionLabel,_sensorConnectionStatusImageView)];
    NSArray *sensorConnectStatusImageViewConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_sensorConnectionStatusImageView(sensorConnectStatusImageViewWidth)]" options:0 metrics:sensorConnectMetrics views:NSDictionaryOfVariableBindings(_sensorConnectionStatusImageView)];
    NSLayoutConstraint *sensorConnectStatusCenterX = [NSLayoutConstraint constraintWithItem:self.sensorConnectionStatusImageView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.sensorConnectionSubView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    [self addConstraints:sensorConnectStatusImageViewConstraints_H];
    [self addConstraints:sensorConnectStatusImageViewConstraints_V];
    [self addConstraint:sensorConnectStatusCenterX];
    
    //sensor connect button
    NSArray *sensorConnectButtonConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_sensorConnectionStatusImageView]-sensorConnectButtonTop-[_sensorConnectButton(sensorConnectButtonHeight)]" options:0 metrics:sensorConnectMetrics views:NSDictionaryOfVariableBindings(_sensorConnectionStatusImageView,_sensorConnectButton)];
    NSArray *sensorConnectButtonConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_sensorConnectButton(sensorConnectButtonWidth)]" options:0 metrics:sensorConnectMetrics views:NSDictionaryOfVariableBindings(_sensorConnectButton)];
    NSLayoutConstraint *sensorConnectButtonCenterX = [NSLayoutConstraint constraintWithItem:self.sensorConnectButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.sensorConnectionSubView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    [self addConstraints:sensorConnectButtonConstraints_H];
    [self addConstraints:sensorConnectButtonConstraints_V];
    [self addConstraint:sensorConnectButtonCenterX];
    
    
    //split line
    NSArray *splitLineConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_sensorConnectionSubView]-0-[_splitLine(1)]" options:0 metrics:sensorConnectMetrics views:NSDictionaryOfVariableBindings(_sensorConnectionSubView,_splitLine)];
    NSArray *splitLineConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_splitLine(200)]" options:0 metrics:sensorConnectMetrics views:NSDictionaryOfVariableBindings(_splitLine)];
    NSLayoutConstraint *splitLineCenterX = [NSLayoutConstraint constraintWithItem:self.splitLine attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    [self addConstraints:splitLineConstraints_H];
    [self addConstraints:splitLineConstraints_V];
    [self addConstraint:splitLineCenterX];
    
    //wifi connecttion subview
    NSArray *wifiConnectSubviewConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_splitLine]-0-[_wifiConnectionSubView]-0-|" options:0 metrics:wifiConnectMetrics views:NSDictionaryOfVariableBindings(_splitLine,_wifiConnectionSubView)];
    NSArray *wifiConnectSubviewConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_wifiConnectionSubView]-0-|" options:0 metrics:wifiConnectMetrics views:NSDictionaryOfVariableBindings(_wifiConnectionSubView)];
    [self addConstraints:wifiConnectSubviewConstraints_H];
    [self addConstraints:wifiConnectSubviewConstraints_V];
    
    //wifi connect label
    NSArray *wifiConnectLabelConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-wifiConnectLabelTop-[_wifiConnectionLabel(wifiConnectLabelHeight)]" options:0 metrics:wifiConnectMetrics views:NSDictionaryOfVariableBindings(_wifiConnectionLabel)];
    NSArray *wifiConnectLabelConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_wifiConnectionLabel(wifiConnectLabelWidth)]" options:0 metrics:wifiConnectMetrics views:NSDictionaryOfVariableBindings(_wifiConnectionLabel)];
    NSLayoutConstraint *wifiConnectLabelCenterX = [NSLayoutConstraint constraintWithItem:self.wifiConnectionLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.wifiConnectionSubView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    [self.wifiConnectionSubView addConstraints:wifiConnectLabelConstraints_H];
    [self.wifiConnectionSubView addConstraints:wifiConnectLabelConstraints_V];
    [self.wifiConnectionSubView addConstraint:wifiConnectLabelCenterX];
    
    //wificonnect status image view
    NSArray *wifiConnectStatusImageViewConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_wifiConnectionLabel]-wifiConnectStatusImageViewTop-[_wifiConnectionStatusImageView(wifiConnectStatusImageViewHeight)]" options:0 metrics:wifiConnectMetrics views:NSDictionaryOfVariableBindings(_wifiConnectionStatusImageView,_wifiConnectionLabel)];
    NSArray *wifiConnectStatusImageViewConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_wifiConnectionStatusImageView(wifiConnectStatusImageViewWidth)]" options:0 metrics:wifiConnectMetrics views:NSDictionaryOfVariableBindings(_wifiConnectionStatusImageView)];
    NSLayoutConstraint *wifiConnectStatusCenterX = [NSLayoutConstraint constraintWithItem:self.wifiConnectionStatusImageView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.wifiConnectionSubView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    [self addConstraints:wifiConnectStatusImageViewConstraints_H];
    [self addConstraints:wifiConnectStatusImageViewConstraints_V];
    [self addConstraint:wifiConnectStatusCenterX];
    
    //wifi connect button
    NSArray *wifiConnectButtonConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_wifiConnectionStatusImageView]-wifiConnectButtonTop-[_wifiConnectButton(wifiConnectButtonHeight)]" options:0 metrics:wifiConnectMetrics views:NSDictionaryOfVariableBindings(_wifiConnectionStatusImageView,_wifiConnectButton)];
    NSArray *wifiConnectButtonConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_wifiConnectButton(wifiConnectButtonWidth)]" options:0 metrics:wifiConnectMetrics views:NSDictionaryOfVariableBindings(_wifiConnectButton)];
    NSLayoutConstraint *wificonnectButtonCenterX = [NSLayoutConstraint constraintWithItem:self.wifiConnectButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.wifiConnectionSubView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    [self.wifiConnectionSubView addConstraints:wifiConnectButtonConstraints_H];
    [self.wifiConnectionSubView addConstraints:wifiConnectButtonConstraints_V];
    [self.wifiConnectionSubView addConstraint:wificonnectButtonCenterX];

}


@end
