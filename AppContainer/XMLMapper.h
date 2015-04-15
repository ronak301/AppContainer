//
//  XMLMapper.h
//  AppContainer
//
//  Created by Urvashi Gupta on 14/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SPRComponent.h"

@interface XMLMapper : NSObject

+ (SPRComponent *)objectForTag:(NSString *) tag;

@end
