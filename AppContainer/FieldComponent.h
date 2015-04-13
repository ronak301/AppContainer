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

@interface FieldComponent: SPRComponent<SPRComponentProtocol>

@property (nonatomic) NSInteger fieldId;
@property (nonatomic) NSString* type;
@property (nonatomic) BOOL isMandatory;

@end
