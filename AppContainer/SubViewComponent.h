//
//  SubViewComponent.h
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "SPRComponent.h"
#import "SPRBuilderProtocol.h"
#import "StyleModel.h"

@interface SubViewComponent : SPRComponent

@property (nonatomic) NSNumber* layout;
@property (nonatomic) StyleModel* style;
- (NSObject<SPRBuilderProtocol> *)getComponentViewBuilder;

@end
