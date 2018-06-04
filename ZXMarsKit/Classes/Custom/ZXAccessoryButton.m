//
//  CECustomButton.m
//  CenturyEast
//
//  Created by armada on 2017/11/1.
//  Copyright © 2017年 Leon Guo. All rights reserved.
//

#import "ZXAccessoryButton.h"

@implementation ZXAccessoryButton

#pragma mark - Constructor

- (instancetype)init {
    
    if (self = [super init]) {
        [self setupConstraints];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        [self setupConstraints];
    }
    return self;
}

#pragma mark - Constraints

- (void)setupConstraints {
    
    self.leftImageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.rightButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSLayoutConstraint *leftImageTopContraints =
    [NSLayoutConstraint constraintWithItem:self.leftImageView
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self
                                 attribute:NSLayoutAttributeTop
                                multiplier:1
                                  constant:0];
    
    NSLayoutConstraint *leftImageLeftContraints =
    [NSLayoutConstraint constraintWithItem:self.leftImageView
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1
                                  constant:0];
    
    NSLayoutConstraint *leftImageBottomContraints =
    [NSLayoutConstraint constraintWithItem:self.leftImageView
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1
                                  constant:0];
    
    NSLayoutConstraint *leftImageHeightContraints =
    [NSLayoutConstraint constraintWithItem:self.leftImageView
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.leftImageView
                                 attribute:NSLayoutAttributeHeight
                                multiplier:1
                                  constant:0];
    
    NSLayoutConstraint *rightButtonLeftConstraints =
    [NSLayoutConstraint constraintWithItem:self.rightButton
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.leftImageView attribute:NSLayoutAttributeRight
                                multiplier:1
                                  constant:0];
    
    NSLayoutConstraint *rightButonTopConstraints =
    [NSLayoutConstraint constraintWithItem:self.rightButton
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self attribute:NSLayoutAttributeTop
                                multiplier:1
                                  constant:0];
    
    NSLayoutConstraint *rightButtonRightConstraints =
    [NSLayoutConstraint constraintWithItem:self.rightButton
                                 attribute:NSLayoutAttributeRight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self
                                 attribute:NSLayoutAttributeRight
                                multiplier:1.0
                                  constant:0];
    
    NSLayoutConstraint *rightButtonBottomConstraints =
    [NSLayoutConstraint constraintWithItem:self.rightButton
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:0];
    
    [self addConstraint:leftImageTopContraints];
    [self addConstraint:leftImageLeftContraints];
    [self addConstraint:leftImageBottomContraints];
    [self addConstraint:leftImageHeightContraints];
    
    [self addConstraint:rightButtonLeftConstraints];
    [self addConstraint:rightButonTopConstraints];
    [self addConstraint:rightButtonRightConstraints];
    [self addConstraint:rightButtonBottomConstraints];
}

#pragma mark - Lazy Loading

- (UIImageView *)leftImageView {
    
    if (!_leftImageView) {
        
        _leftImageView = [[UIImageView alloc] init];
        
        [self addSubview:_leftImageView];
    }
    return _leftImageView;
}

- (UIButton *)rightButton {
    
    if (!_rightButton) {
        
        _rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _rightButton.titleLabel.font = [UIFont systemFontOfSize:11];
        
        [_rightButton setBackgroundColor:[UIColor whiteColor]];
        [_rightButton.titleLabel setFont:[UIFont systemFontOfSize:12]];
        
        [self addSubview:_rightButton];
    }
    return _rightButton;
}

@end
