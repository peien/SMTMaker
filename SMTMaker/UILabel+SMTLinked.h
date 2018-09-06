//
//  UILable+SMTChained.h
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/6.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (SMTLinked)

@property (nonatomic, readonly, strong) UILabel *(^textString)(NSString *);

- (UILabel *(^)(UIView *))intoView;

@end
