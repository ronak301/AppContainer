//
//  View.m
//  AppContainer
//
//  Created by Urvashi Gupta on 16/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "View.h"

@interface View ()
@property (nonatomic) LayoutType layoutType;
@end
@implementation View

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
        
        return CGSizeMake(height, width);
    } else if (self.layoutType == VERTICAL) {
        CGFloat width = 0;
        CGFloat height = 0;
        for (UIView* subView in self.subviews) {
            width = MAX(width, subView.frame.size.width);
            height += subView.frame.size.height;
        }
        return CGSizeMake(height, width);
    }
    return CGSizeZero;
}


@end
