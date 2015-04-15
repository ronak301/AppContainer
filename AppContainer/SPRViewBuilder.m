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

- (UIView *)buildComponentViewUsingData:(NSString *)data withLayoutType:(LayoutType)layoutType {
    ViewComponent *mainViewComponent = [JsonToObjectMapper getViewFromJsonString:@""];
    CGRect frame = CGRectMake(10, 100, 0, 0);
    View* mainView = [[View alloc] initWithLayoutType:(LayoutType)[mainViewComponent.layout intValue]];
    
    for (SubViewComponent *formComponent in mainViewComponent.forms) {
        frame = [self addViewOfComponent:formComponent toMainView:mainView withFrame:frame usingLayout:layoutType];
    }
    for (SubViewComponent *viewComponent in mainViewComponent.views) {
        frame = [self addViewOfComponent:viewComponent toMainView:mainView withFrame:frame usingLayout:layoutType];
    }
    for (SubViewComponent *buttonComponent in mainViewComponent.buttons) {
        frame = [self addViewOfComponent:buttonComponent toMainView:mainView withFrame:frame usingLayout:layoutType];
    }
//    for (NSString *key in views) {
//        NSArray* viewComponents = views[key];
//        for (SubViewComponent* component in viewComponents) {
//            frame = [self addViewOfComponent:component toMainView:mainView withFrame:frame usingLayout:layoutType];
//        }
//        
//    }
    [mainView sizeToFit];
    return mainView;
}

- (CGRect)addViewOfComponent:(SubViewComponent *)component toMainView:(UIView *)view withFrame:(CGRect)frame usingLayout:(LayoutType)layoutType {
    UIView *componentView = (UIView *)[component renderView];
    [componentView setFrame:frame];
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
