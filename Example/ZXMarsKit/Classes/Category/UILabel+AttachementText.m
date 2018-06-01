//
//  UILabel+AttachementText.m
//  SJDFBackstage
//
//  Created by armada on 2018/1/16.
//  Copyright © 2018年 Leon Guo. All rights reserved.
//

#import "UILabel+AttachementText.h"

#import <objc/runtime.h>

static const char *PREFIX_TEXT_KEY = "prefix_text_key";

static const char *SUFFIX_TEXT_KEY = "suffix_text_key";

@implementation UILabel (AttachementText)

+ (void)load {
    
    Method originalM = class_getInstanceMethod([self class], @selector(setText:));
    
    Method exchangeM = class_getInstanceMethod([self class], @selector(ss_setText:));
    
    method_exchangeImplementations(originalM, exchangeM);
}

#pragma mark - Attribute Getter and Setter

- (NSString *)prefixText {
    return objc_getAssociatedObject(self, PREFIX_TEXT_KEY);
}

- (void)setPrefixText:(NSString *)prefixText {
    objc_setAssociatedObject(self, PREFIX_TEXT_KEY, prefixText, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)suffixText {
    return objc_getAssociatedObject(self, SUFFIX_TEXT_KEY);
}

- (void)setSuffixText:(NSString *)suffixText {
    objc_setAssociatedObject(self, SUFFIX_TEXT_KEY, suffixText, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

#pragma mark - Swizz

- (void)ss_setText:(NSString *)text {
    
    if (!text) {
        [self ss_setText:nil];
        return;
    }
    
    NSString *prefixText = objc_getAssociatedObject(self, PREFIX_TEXT_KEY);
    NSString *suffixText = objc_getAssociatedObject(self, SUFFIX_TEXT_KEY);
    
    NSMutableString *mutableStr = [[NSMutableString alloc] initWithString:text];
    
    if(prefixText) {
        [mutableStr insertString:prefixText atIndex:0];
    }
    
    if(suffixText) {
        [mutableStr appendString:suffixText];
    }
    
    [self ss_setText:[mutableStr copy]];
}

@end
