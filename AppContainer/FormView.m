//
//  FormView.m
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "FormView.h"

@interface FormView ()
@property (nonatomic) LayoutType layoutType;
@end
@implementation FormView

- (instancetype)initWithLayoutType:(LayoutType)layoutType {
    if (self = [super init]) {
        self.layoutType = layoutType;
    }
    return self;
}

- (CGSize)sizeThatFits:(CGSize)size {
    if (self.layoutType == HORIZONTAL) {
        CGFloat width = 0;
        CGFloat height = 0;
        for (UIView* subView in self.subviews) {
            height = MAX(height, subView.frame.size.height);
            width += subView.frame.size.width;
        }
    
        return CGSizeMake(width, height);
    } else if (self.layoutType == VERTICAL) {
        CGFloat width = 0;
        CGFloat height = 0;
        for (UIView* subView in self.subviews) {
            width = MAX(width, subView.frame.size.width);
            height += subView.frame.size.height;
        }
        return CGSizeMake(width, height);
    }
    return CGSizeZero;
}
@end
