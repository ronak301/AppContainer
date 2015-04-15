//
//  FieldComponent.h
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SPRComponent.h"
#import "SPRComponentProtocol.h"
#import "PropertyMapper.h"
@interface InputFieldComponent: SPRComponent

@property (nonatomic) NSString* placeholder;
@property (nonatomic) NSArray* options;

@end
