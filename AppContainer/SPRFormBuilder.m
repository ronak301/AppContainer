//
//  SPRFormBuilder.m
//  AppContainer
//
//  Created by Urvashi Gupta on 14/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "SPRFormBuilder.h"
#import <UIKit/UIKit.h>
typedef enum  {
    VERTICAL = 1,
    HORIZONTAL
} LayoutType ;

@implementation SPRFormBuilder

- (instancetype)init {
    if (self = [super init]) {
        return self;
    }
    return nil;
}

- (UIView *)buildForm {
    //Read & store type of layout
    return nil;
}

- (CGRect)makeFrameForSize:(CGSize)size withLayoutType:(LayoutType)layout andRenderedFrame:(CGRect)frame {
    CGRect requiredFrame = CGRectZero;
    switch (layout) {
        case VERTICAL:
            requiredFrame = CGRectMake(frame.origin.x, frame.origin.y + frame.size.height, size.width, size.height);
            break;
        case HORIZONTAL:
            requiredFrame = CGRectMake(frame.origin.x + frame.size.width, frame.origin.y, size.width, size.height);
            break;
        default:
            requiredFrame = frame;
            break;
    }
    return requiredFrame;
}

@end
