//
//  SMTLabelMake.m
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/4.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import "SMTLabelMake.h"

@implementation SMTLabelMake
@synthesize createdLabel = _createdLabel;
@dynamic intoView;
@dynamic tapBlock;

- (UILabel *)createdLabel {
    if (_createdLabel) {
        return _createdLabel;
    }
    _createdLabel = [[UILabel alloc] init];
    return _createdLabel;
}

- (UIView *)createdView {
    return self.createdLabel;
}

#pragma mark - makes
- (SMTLabelMake *(^)(NSString *))text {
    return ^SMTLabelMake *(NSString *text) {
        self.createdLabel.text = text;
        return self;
    };
}

- (SMTLabelMake *(^)(UIColor *))textColor {
    return ^SMTLabelMake *(UIColor *textColor) {
        self.createdLabel.textColor = textColor;
        return self;
    };
}

- (SMTLabelMake *(^)(CGFloat))systemFontWithSize {
    return ^SMTLabelMake *(CGFloat size) {
        self.createdLabel.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

@end
