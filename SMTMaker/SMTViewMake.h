//
//  SMTViewMake.h
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/4.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^voidParamVoidReturnBlock)(void);

@interface SMTViewMake : NSObject

@property (nonatomic, readonly, strong) UIView *createdView;

#pragma mark - makes
@property (nonatomic, readonly, strong) SMTViewMake *(^intoView)(UIView *);
@property (nonatomic, readonly, copy) SMTViewMake *(^tapBlock)(voidParamVoidReturnBlock);
//makes end
//- (SMTViewMake *(^)(UIView *))intoView;
@end
