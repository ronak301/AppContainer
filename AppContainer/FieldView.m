//
//  FieldView.m
//  AppContainer
//
//  Created by Urvashi Gupta on 15/04/15.
//  Copyright (c) 2015 Urvashi Gupta. All rights reserved.
//

#import "FieldView.h"

@interface FieldView ()
@property UIView* inputView;
@property UIView* displayView;
@end


@implementation FieldView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithDisplayComponent:(LabelFieldComponent *)displayComponent andInputComponent:(InputFieldComponent *)inputComponent {
    if (self = [super init]) {
        self.inputView = [inputComponent renderView];
        [self addSubview:self.inputView];
        self.displayView = [displayComponent renderView];
        [self addSubview:self.displayView];
    }
    return self;
}


- (void)layoutSubviews {
    CGRect frame = self.frame;
    self.displayView.frame = CGRectMake(0, 10, frame.size.width, [_displayView sizeThatFits:CGSizeMake(frame.size.width, CGFLOAT_MAX)].height);
    self.inputView.frame = CGRectMake(0, _displayView.frame.size.height + 10.0, frame.size.width, [_inputView sizeThatFits:CGSizeMake(frame.size.width, CGFLOAT_MAX)].height);
}

- (CGSize)sizeThatFits:(CGSize)size {
    [self.displayView sizeToFit];
    [self.inputView sizeToFit];
    CGSize s =  CGSizeMake(MAX(self.displayView.frame.size.width, self.inputView.frame.size.width), (self.displayView.frame.size.height + self.inputView.frame.size.height + 10.0));
    [self layoutIfNeeded];
    return s;
    
}

@end
