//
//  CELabelTextField.m
//  CenturyEast
//
//  Created by armada on 2017/9/12.
//  Copyright © 2017年 Leon Guo. All rights reserved.
//

#import "ZXAccessoryTextField.h"

@interface ZXAccessoryTextField()

@property(nonatomic, strong) UIView *underlineView;

@end

@implementation ZXAccessoryTextField

#define TF_TITLE_FONT [UIFont systemFontOfSize:12]
#define TF_TITLE_COLOR [UIColor blackColor]
#define TF_HEIGHT 50.0f

#pragma mark - Constructor

- (instancetype)init {
    
    self = [super init];

    if (self) {
        
        self.type = ZXAccessoryTextFieldTypeNone;
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.type = ZXAccessoryTextFieldTypeNone;
        self.backgroundColor= [UIColor whiteColor];
    }
    return self;
}

#pragma mark - Setter

- (void)setType:(ZXAccessoryTextFieldType)type {
    
    if (type == _type) {
        return;
    }
    
    self.leftViewMode = UITextFieldViewModeAlways;
    
    switch (type) {
            
        case ZXAccessoryTextFieldTypeImageView:
            
            self.leftView = self.iconImageView;
            break;
            
        case ZXAccessoryTextFieldTypeLabel:
            
            self.leftView = self.titleLabel;
            break;
    
        case ZXAccessoryTextFieldTypeNone:
        default:
            self.leftView = nil;
            break;
    }
}

- (void)setClearButtonMode:(UITextFieldViewMode)clearButtonMode {
    [super setClearButtonMode:clearButtonMode];
}

#pragma mark - Lazy Loading 

- (UILabel *)titleLabel {
    
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, TF_HEIGHT)];
        _titleLabel.font = TF_TITLE_FONT;
        _titleLabel.textColor = TF_TITLE_COLOR;
    }
    return _titleLabel;
}

- (UIImageView *)iconImageView {
    
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        _iconImageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _iconImageView;
}

#pragma mark - Drawing and positioning overrides

- (CGRect)textRectForBounds:(CGRect)bounds {
    
    CGRect originRect = [super textRectForBounds:bounds];
    
    return CGRectMake(originRect.origin.x + 20, originRect.origin.y+2, originRect.size.width, originRect.size.height);
}

- (CGRect)editingRectForBounds:(CGRect)bounds {
    
    CGRect originRect = [super editingRectForBounds:bounds];
    
    return CGRectMake(originRect.origin.x + 20, originRect.origin.y+2, originRect.size.width, originRect.size.height);
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds {
    
    CGRect originRect = [super leftViewRectForBounds:bounds];
    
    return CGRectMake(originRect.origin.x + 5, originRect.origin.y, originRect.size.width, originRect.size.height);
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds {
    
    return [super clearButtonRectForBounds:bounds];
}


@end
