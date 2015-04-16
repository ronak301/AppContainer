//
//  SPRBuilderProtocol.h
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppConstants.h"

@class SubViewComponent;

@protocol SPRBuilderProtocol <NSObject>

@optional
- (UIView *)buildComponentViewFromComponent:(SubViewComponent *)component withLayoutType:(LayoutType)layoutType;
- (UIView *)buildComponentViewFromComponent:(SubViewComponent *)component;

@end
