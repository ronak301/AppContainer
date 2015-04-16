//
//  SubViewComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "SubViewComponent.h"

@implementation SubViewComponent

- (instancetype)init {
    if (self = [super init]) {
        //Default vertical layout
//        self.layout = @1;
    }
    return self;
}

- (NSObject<SPRBuilderProtocol> *)getComponentViewBuilder {
    //Override in subclass
    return nil;
}

- (void)applyStyleFromStyleModel:(StyleModel *)styleModel {
    //Override in subclass
}
@end
