//
//  LabelFieldComponent.m
//  AppContainer
//
//  Created by Urvashi Gupta on 13/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "LabelFieldComponent.h"

@interface LabelFieldComponent()
@property NSDictionary* dataDictionary;
@end

@implementation LabelFieldComponent

+ (LabelFieldComponent *)createComponentWithData:(NSDictionary *)dictionary {
    return [LabelFieldComponent new];
}

+ (UIView *)renderViewForComponent:(SPRComponent *)component {
    UIView *mainView = [UIView new];
    UILabel *nameLabel = [UILabel new];
    [mainView addSubview:nameLabel];
    return mainView;
}
@end
