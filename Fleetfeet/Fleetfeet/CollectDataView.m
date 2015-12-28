//
//  CollectDataView.m
//  Fleetfeet
//
//  Created by Xuehao(David) Hu on 12/24/15.
//  Copyright © 2015 Xuehao(David) Hu. All rights reserved.
//

#import "CollectDataView.h"

@interface CollectDataView()

@property (nonatomic, strong) UIButton *startButton;

@end


@implementation CollectDataView

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self createSubviews];
    }
    return self;
}

-(id)init{
    return [self initWithFrame:CGRectZero];
}

-(void)createSubviews{
    self.backgroundColor = [UIColor whiteColor];

    [self addSubview:self.startButton];
    
    [self setUpConstraints];
}

//****************************************************
// sub views
//****************************************************
-(UIButton *)startButton{
    if(!_startButton){
        _startButton = [UIButton new];
        _startButton.translatesAutoresizingMaskIntoConstraints = NO;
        _startButton.backgroundColor = [UIColor whiteColor];
        
        [_startButton setTitle:@"Start" forState:UIControlStateNormal];
        [_startButton setTitleColor:[UIColor colorWithRed:3.0/255.0 green:122.0/255.0 blue:1.0 alpha:1.0] forState:UIControlStateNormal];
        _startButton.layer.borderColor = [[UIColor blackColor] CGColor];
        _startButton.layer.borderWidth = 1.0f;
    }
    return _startButton;
}


//****************************************************
// constraints
//****************************************************
-(void)setUpConstraints{

    
    NSArray *startButtonConstraints_V = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_startButton(35)]-60-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_startButton)];
    NSArray *startButtonConstraints_H = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_startButton(124)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_startButton)];
    NSLayoutConstraint *startButtonCenterX = [NSLayoutConstraint constraintWithItem:self.startButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0];
    [self addConstraints:startButtonConstraints_H];
    [self addConstraints:startButtonConstraints_V];
    [self addConstraint:startButtonCenterX];
}


@end
