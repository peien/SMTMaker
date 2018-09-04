//
//  SMTViewMake.m
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/4.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import "SMTViewMake.h"
#import "UIView+SMTMake.h"

@implementation SMTViewMake
@synthesize createdView = _createdView;

- (UIView *)createdView {
    if (_createdView) {
        return _createdView;
    }
    _createdView = [[UIView alloc] init];
    return _createdView;
}

#pragma mark - makes
- (SMTViewMake *(^)(UIView *))intoView {
    return ^SMTViewMake *(UIView *superView) {
        [superView addSubview:self.createdView];
        return self;
    };
}

- (SMTViewMake *(^)(voidParamVoidReturnBlock))tapBlock {
    return ^SMTViewMake *(voidParamVoidReturnBlock vpvrBlock) {
        if (vpvrBlock) {
            [self.createdView smtmake_tapBlock:vpvrBlock];
        }
        return self;
    };
}

@end
