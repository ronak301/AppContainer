//
//  ViewComponent.h
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "SPRComponent.h"
#import "SubViewComponent.h"
#import "FormComponent.h"
#import "JSONModel.h"

@interface ViewComponent :SubViewComponent

@property (nonatomic) NSNumber* layout;
@property (nonatomic) NSArray<Optional>* forms;
@property (nonatomic) NSArray<Optional>* views;
@property (nonatomic) NSArray<Optional>* buttons;

@end
