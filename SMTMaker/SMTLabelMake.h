//
//  SMTLabelMake.h
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/4.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMTViewMake.h"

@interface SMTLabelMake : SMTViewMake

@property (nonatomic, readonly, strong) UILabel *createdLabel;

#pragma mark - makes
@property (nonatomic, readonly, strong) SMTLabelMake *(^text)(NSString *);
@property (nonatomic, readonly, strong) SMTLabelMake *(^textColor)(UIColor *);
@property (nonatomic, readonly, strong) SMTLabelMake *(^systemFontWithSize)(CGFloat);

//supers
@property (nonatomic, readonly, strong) SMTLabelMake *(^intoView)(UIView *);
@property (nonatomic, readonly, copy) SMTLabelMake *(^tapBlock)(voidParamVoidReturnBlock);
//makes end

@end
