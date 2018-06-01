//
//  CELabelTextField.h
//  CenturyEast
//
//  Created by armada on 2017/9/12.
//  Copyright © 2017年 Leon Guo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ZXAccessoryTextFieldType) {
    
    ZXAccessoryTextFieldTypeNone,
    
    ZXAccessoryTextFieldTypeLabel,
    
    ZXAccessoryTextFieldTypeImageView,
};

@interface ZXAccessoryTextField : UITextField

/** 描述标签 */
@property(nonatomic, strong) UILabel *titleLabel;
/** 附属图 */
@property(nonatomic, strong) UIImageView *iconImageView;
/** 类型 */
@property(nonatomic, assign) ZXAccessoryTextFieldType type;

@end
