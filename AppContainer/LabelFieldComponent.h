//
//  LabelFieldComponent.h
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "FieldComponent.h"
#import "Mapper.h"
@interface LabelFieldComponent : FieldComponent<Mapper> 
    
@property (nonatomic) NSString* labelName;

@end
