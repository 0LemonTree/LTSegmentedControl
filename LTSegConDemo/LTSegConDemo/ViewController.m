//
//  ViewController.m
//  LTSegConDemo
//
//  Created by  abcxdx@sina.com on 2018/5/28.
//  Copyright © 2018年 LemnoTree. All rights reserved.
//

#import "ViewController.h"
#import "LTSegmentCon.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    LTSegmentCon* segCon = [[LTSegmentCon alloc]initWithTitles:@[@"0",@"1",@"2"]];
    segCon.frame = CGRectMake(0, 0, self.view.frame.size.width, 50);
    segCon.lineSpacing = 10;
    segCon.normalAttr = @{NSForegroundColorAttributeName:[UIColor redColor]};
    segCon.selectAttr = @{NSForegroundColorAttributeName:[UIColor blueColor]};
    segCon.indeicatorType = LTSegConIndicatorTypeLeft;
    segCon.indicatorSize = CGSizeMake(3, 10);
    segCon.indicatorSpacing = 30.f;
    [segCon layoutMySubViews];
    segCon.currentSelectedIndex = 0;
    [self.view addSubview:segCon];
    
    [segCon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(20.f);
        make.left.equalTo(self.view).offset(20.f);
        make.right.equalTo(self.view);
        make.height.mas_equalTo(50.f);
    }];
}


@end
