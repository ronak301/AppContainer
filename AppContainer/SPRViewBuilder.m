//
//  SPRViewBuilder.m
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "SPRViewBuilder.h"
#import "JsonToObjectMapper.h"
#import "SubViewComponent.h"
#import "ViewComponent.h"
#import "View.h"

@implementation SPRViewBuilder

- (UIView *)buildComponentViewFromComponent:(ViewComponent *)component {
    LayoutType layoutType = (LayoutType)[component.layout intValue];
    CGRect frame = CGRectMake(0, 0, 0, 0);
    View* mainView = [[View alloc] initWithLayoutType:layoutType];
    
    for (SubViewComponent *formComponent in component.forms) {
        frame = [self addViewOfComponent:formComponent toMainView:mainView withFrame:frame usingLayout:layoutType];
    }
    for (SubViewComponent *viewComponent in component.views) {
        frame = [self addViewOfComponent:viewComponent toMainView:mainView withFrame:frame usingLayout:layoutType];
    }
    for (SubViewComponent *buttonComponent in component.buttons) {
        frame = [self addViewOfComponent:buttonComponent toMainView:mainView withFrame:frame usingLayout:layoutType];
    }
    [mainView sizeToFit];
    return mainView;
}

- (CGRect)addViewOfComponent:(SubViewComponent *)component toMainView:(UIView *)view withFrame:(CGRect)frame usingLayout:(LayoutType)layoutType {
    UIView *componentView = (UIView *)[component renderView];
    [componentView setFrame:CGRectMake(frame.origin.x, frame.origin.y, componentView.frame.size.width, componentView.frame.size.height)];
    componentView.layer.borderColor = [[UIColor blackColor] CGColor];
    componentView.layer.borderWidth = 0.5;
    [view addSubview:componentView];
    return [self makeFrameForSize:componentView.frame.size withLayoutType:layoutType andRenderedFrame:frame];
}

- (CGRect)makeFrameForSize:(CGSize)size withLayoutType:(LayoutType)layout andRenderedFrame:(CGRect)frame {
    CGRect requiredFrame = CGRectZero;
    switch (layout) {
        case VERTICAL:
            requiredFrame = CGRectMake(frame.origin.x, frame.origin.y + size.height, 0, 0);
            break;
        case HORIZONTAL:
            requiredFrame = CGRectMake(frame.origin.x + size.width, frame.origin.y, 0, 0);
            break;
        default:
            requiredFrame = frame;
            break;
    }
    return requiredFrame;
}

@end
