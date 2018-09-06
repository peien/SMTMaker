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
#import "UILabel+SMTLinked.h"
#import "MemoryedLabel.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *labels;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.labels = [[NSMutableArray alloc] init];
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
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(100);
    }];
    
    UILabel *label2 = [[MemoryedLabel alloc] init]
    .linked_intoView(self.view)
    .linked_text(@"detail")
    .linked_tapBlock(^(){
        [weakSelf tapLabel2];
    });
    [label2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(140);
    }];
    [self.labels addObject:label2];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"%@ dealloc", [self class]);
}

#pragma mark - actions
- (void)titleLabelTap {
    NSLog(@"titleLabelTap");
    [self.navigationController pushViewController:[[ViewController alloc] init] animated:YES];
}

- (void)tapLabel2 {
    NSLog(@"tapLabel2");
//    [self.labels removeAllObjects];
}

@end
