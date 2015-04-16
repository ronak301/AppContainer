//
//  ViewComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "ViewComponent.h"
#import "SPRViewBuilder.h"
#import "View.h"
#import "ColorUtils.h"

@interface ViewComponent ()
@property (nonatomic) View* view;
@end

@implementation ViewComponent

- (NSObject<SPRBuilderProtocol> *)getComponentViewBuilder {
    return [SPRViewBuilder new];
}

#pragma mark - SPRComponentProtocol

- (UIView *)renderView {
    _view = (View *)[[self getComponentViewBuilder] buildComponentViewFromComponent:self];
    return _view;
}

#pragma mark -

- (void)applyStyleFromStyleModel:(StyleModel *)styleModel {
    for (SubViewComponent* component in self.forms) {
        [component applyStyleFromStyleModel:(component.style ? component.style : styleModel)];
    }
    for (SubViewComponent* component in self.views) {
        [component applyStyleFromStyleModel:(component.style ? component.style : styleModel)];
    }
    for (SubViewComponent* component in self.buttons) {
        [component applyStyleFromStyleModel:(component.style ? component.style : styleModel)];
    }
}

@end
