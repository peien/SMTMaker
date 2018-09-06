//
//  UILable+SMTChained.m
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/6.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import "UILabel+SMTLinked.h"
#import <objc/runtime.h>

@implementation UILabel (SMTLinked)

- (UILabel *(^)(NSString *))linked_text {
    return ^UILabel *(NSString *string){
        self.text = string;
        return self;
    };
}

- (UILabel *(^)(UIView *))linked_intoView {
    return ^UILabel *(UIView *view){
        [view addSubview:self];
        return self;
    };
}

- (UILabel *(^)(noParamNoReturnBlock))linked_tapBlock {
    return ^UILabel *(noParamNoReturnBlock nPnRBlock) {
        [self linkedMake_tapBlock:nPnRBlock];
        return self;
    };
}

- (void)linkedMake_tapBlock:(noParamNoReturnBlock)vpvrBlock {
    self.userInteractionEnabled = YES;
    SEL sel = @selector(_linkedHandleActionForTapGesture:);
    UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, sel);
    if (!gesture){
        gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, sel, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    objc_setAssociatedObject(self, sel, vpvrBlock, OBJC_ASSOCIATION_COPY);
}

-(void)_linkedHandleActionForTapGesture:(UITapGestureRecognizer*)gesture {
    if (gesture.state == UIGestureRecognizerStateRecognized){
        noParamNoReturnBlock gestureBlock = objc_getAssociatedObject(self, _cmd);
        if (gestureBlock){
            gestureBlock();
        }
    }
}

@end
