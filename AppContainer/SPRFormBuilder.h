//
//  SPRFormBuilder.h
//  AppContainer
//
//  Created by Urvashi Gupta on 14/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SPRBuilderProtocol.h"

@interface SPRFormBuilder : NSObject<SPRBuilderProtocol>

@property (nonatomic) NSString* formXML;

@end
