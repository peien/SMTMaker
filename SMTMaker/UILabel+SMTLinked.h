//
//  UILable+SMTChained.h
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/6.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^noParamNoReturnBlock)(void);

@interface UILabel (SMTLinked)

@property (nonatomic, readonly, strong) UILabel *(^linked_text)(NSString *);
@property (nonatomic, readonly, strong) UILabel *(^linked_intoView)(UIView *);
@property (nonatomic, readonly, copy) UILabel *(^linked_tapBlock)(noParamNoReturnBlock);


@end
