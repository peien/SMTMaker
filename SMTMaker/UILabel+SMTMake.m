//
//  UILabel+SMTMake.m
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/4.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import "UILabel+SMTMake.h"

@implementation UILabel (SMTMake)

+ (UILabel *)smt_labelMake:(void(^)(SMTLabelMake *make))make {
    SMTLabelMake *labelMake = [[SMTLabelMake alloc] init];
    if (make) {
        make(labelMake);
    }
    return labelMake.createdLabel;
}

@end
