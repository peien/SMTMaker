//
//  UILable+SMTChained.m
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/6.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import "UILabel+SMTLinked.h"

@implementation UILabel (SMTLinked)

- (UILabel *(^)(NSString *))textString {
    return ^UILabel *(NSString *string){
        self.text = string;
        return self;
    };
}

- (UILabel *(^)(UIView *))intoView {
    return ^UILabel *(UIView *view){
        [view addSubview:self];
        return self;
    };
}

@end
