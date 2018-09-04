//
//  ViewController.m
//  SMTMakerExample
//
//  Created by KaiChe on 2018/9/4.
//  Copyright © 2018年 KaiChe. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+SMTMake.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    __weak typeof(self) weakSelf = self;
    UILabel *titleLabel = [UILabel smt_labelMake:^(SMTLabelMake *make) {
        make
        .intoView(self.view)
        .text(@"title")
        .systemFontWithSize(20)
        .tapBlock(^{
            [weakSelf titleLabelTap];
        })
        .textColor([UIColor blackColor]);
    }];
    
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - actions
- (void)titleLabelTap {
    NSLog(@"titleLabelTap");
}

@end
