//
//  MemoryedLabel.m
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/6.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import "MemoryedLabel.h"

@implementation MemoryedLabel

- (void)dealloc {
    NSLog(@"%@ dealloc", [self class]);
}


@end
