//
//  Component.h
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PropertyMapper.h"
#import "SPRComponentProtocol.h"
#import <JSONModel/JSONModel.h>

@interface SPRComponent : JSONModel<SPRComponentProtocol, PropertyMapper, NSCopying>

@end
