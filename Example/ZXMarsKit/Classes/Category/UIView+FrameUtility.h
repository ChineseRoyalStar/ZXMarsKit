//
//  UIView+FrameUtility.h
//  Expecta
//
//  Created by armada on 2018/1/29.
//

#import <UIKit/UIKit.h>

@interface UIView (FrameUtility)

/**
 * @ 获取origin.x
 */
- (UIView* (^)(CGFloat))X;

/**
 * @ 设置origin.y
 */
- (UIView* (^)(CGFloat))Y;

/**
 * @ 设置size.width
 */
- (UIView* (^)(CGFloat))Width;

/**
 * @ 设置size.height
 */
- (UIView* (^)(CGFloat))Height;

/**
 * @ 设置center.x
 */
- (UIView* (^)(CGFloat))CenterX;

/**
 * @ 设置center.y
 */
- (UIView* (^)(CGFloat))CenterY;


/**
 * @ 设置center
 */
- (UIView* (^)(CGPoint))Center;

/**
 * @ 设置size
 */
- (UIView* (^)(CGSize))Size;

#pragma mark - General UIView Frameset Methods

- (void)setX:(CGFloat)x;

- (CGFloat)x;

- (void)setY:(CGFloat)y;

- (CGFloat)y;

- (void)setWidth:(CGFloat)width;

- (CGFloat)width;

- (void)setHeight:(CGFloat)height;

- (CGFloat)height;

- (CGSize)size;

- (void)setSize:(CGSize)size;

- (CGFloat)centerX;

- (void)setCenterX:(CGFloat)centerX;

- (CGFloat)centerY;

- (void)setCenterY:(CGFloat)centerY;

@end
