//
//  SPRFormBuilder.m
//  AppContainer
//
//  Created by Urvashi Gupta on 14/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "SPRFormBuilder.h"
#import "XMLMapper.h"
#import "SPRComponentProtocol.h"
#import "RXMLElement.h"
#import <objc/runtime.h>
#import "LabelFieldComponent.h"

typedef enum  {
    VERTICAL = 1,
    HORIZONTAL
} LayoutType ;

@implementation SPRFormBuilder

- (instancetype)init {
    if (self = [super init]) {
        return self;
    }
    return nil;
}

- (UIView *)buildFormUsingData:(NSDictionary *)formData {
    
    NSDictionary *dictionary = @{@"UIView":@{@"layoutType": @"", @"style":@"", @"components": @[@{@"type": @"labelField", @"labelName": @"This is a label"}, @{@"type": @"labelField", @"labelName": @"This is a label again"}]}};
    
    UIView *formView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGFLOAT_MAX, CGFLOAT_MAX)];
    //Read & store type of layout
    LayoutType type = VERTICAL;
    
    //Read & create style dictionary
    //Map the dictionary
    NSDictionary* containerStyleDictionary = @{ @"systemFontOfSize" : @"17.0", @"setBackgroundColor" : @"gray", @"setTextColor" : @"black", @"alpha" : @"1.0"};
    
    SPRComponent *component1 = [[XMLMapper objectForTag:@"labelField"] copy];
    SPRComponent *component2 = [[XMLMapper objectForTag:@"labelField"] copy];
    
    NSDictionary *dict1 = @{@"labelName": @"This is a label"};
    NSDictionary *dict2 = @{@"labelName": @"This is a label again"};
    
    for (NSString* key in dict1) {
        SEL selector = NSSelectorFromString([NSString stringWithFormat:@"set%@:",[component1 getPropertyNameForTag:key]]);
       if ([component1 respondsToSelector:selector]) {
            [component1 performSelectorOnMainThread:selector withObject:[NSString stringWithFormat:@"%@",dict1[key]] waitUntilDone:YES];
        }
    }
    for (NSString* key in dict2) {
        SEL selector = NSSelectorFromString([NSString stringWithFormat:@"set%@:",[component2 getPropertyNameForTag:key]]);
        if ([component2 respondsToSelector:selector]) {
            [component2 performSelectorOnMainThread:selector withObject:dict2[key] waitUntilDone:YES];
        }
    }
    
    UIView *componentView = [component1 renderView];
    [componentView setFrame:CGRectMake(0, 100, 300, 300)];
    [component1 applyData];
    [componentView sizeToFit];
    [formView addSubview:componentView];
    
    UIView* newcomponentView = [component2 renderView];
    [newcomponentView setFrame:CGRectMake(0, 500, 300, 300)];
    [component2 applyData];
    [newcomponentView sizeToFit];
    [formView addSubview:newcomponentView];
    
    return formView;
}

- (CGRect)makeFrameForSize:(CGSize)size withLayoutType:(LayoutType)layout andRenderedFrame:(CGRect)frame {
    CGRect requiredFrame = CGRectZero;
    switch (layout) {
        case VERTICAL:
            requiredFrame = CGRectMake(frame.origin.x, frame.origin.y + frame.size.height, size.width, size.height);
            break;
        case HORIZONTAL:
            requiredFrame = CGRectMake(frame.origin.x + frame.size.width, frame.origin.y, size.width, size.height);
            break;
        default:
            requiredFrame = frame;
            break;
    }
    return requiredFrame;
}

#pragma mark - Style Dictionary Creation

//- (NSDictionary *)createStyleDictionary:(XML) {
//    
//}

@end
