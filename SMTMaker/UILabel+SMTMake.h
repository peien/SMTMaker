//
//  UILabel+SMTMake.h
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/4.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SMTLabelMake.h"

@interface UILabel (SMTMake)

+ (UILabel *)smt_labelMake:(void(^)(SMTLabelMake *make))make;

@end
