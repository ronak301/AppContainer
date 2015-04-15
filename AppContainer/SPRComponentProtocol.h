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

@protocol SPRComponentProtocol <NSObject>

+ (SPRComponent *)createComponentWithData: (NSDictionary *)dictionary;
- (UIView *)renderView;
+ (NSArray *)createStyleInvocationsFromStyleSheet:(NSDictionary *)styleData;
- (void)applyData;

@end
