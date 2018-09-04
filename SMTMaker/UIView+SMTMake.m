//
//  UIView+SMTMake.m
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/4.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import "UIView+SMTMake.h"
#import <objc/runtime.h>

@implementation UIView (SMTMake)

- (void)smtmake_tapBlock:(voidParamVoidReturnBlock)vpvrBlock {
    self.userInteractionEnabled = YES;
    SEL sel = @selector(_smthandleActionForTapGesture:);
    UITapGestureRecognizer *gesture = objc_getAssociatedObject(self, sel);
    if (!gesture){
        gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel];
        [self addGestureRecognizer:gesture];
        objc_setAssociatedObject(self, sel, gesture, OBJC_ASSOCIATION_RETAIN);
    }
    objc_setAssociatedObject(self, sel, vpvrBlock, OBJC_ASSOCIATION_COPY);
}

-(void)_smthandleActionForTapGesture:(UITapGestureRecognizer*)gesture {
    if (gesture.state == UIGestureRecognizerStateRecognized){
        voidParamVoidReturnBlock gestureBlock = objc_getAssociatedObject(self, _cmd);
        if (gestureBlock){
            gestureBlock();
        }
    }
}

@end
