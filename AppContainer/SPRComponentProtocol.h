//
//  SPRComponentProtocol.h
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class SPRComponent;
@class StyleModel;

@protocol SPRComponentProtocol <NSObject>

+ (SPRComponent *)createComponentWithData: (NSDictionary *)dictionary;
- (void)applyStyleFromStyleModel:(StyleModel *)styleModel;
- (UIView *)renderView;
- (void)applyData;

@end
