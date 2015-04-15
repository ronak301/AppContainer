//
//  SPRBuilderProtocol.h
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppConstants.h"

@protocol SPRBuilderProtocol <NSObject>

- (UIView *)buildComponentViewUsingData:(NSString *)data withLayoutType:(LayoutType)layoutType;

@end