//
//  LTSegConItem.m
//  LTSegConDemo
//
//  Created by  abcxdx@sina.com on 2018/5/28.
//  Copyright © 2018年 LemnoTree. All rights reserved.
//

#import "LTSegConItem.h"
#import "Masonry.h"

@implementation LTSegConItem

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self layoutMySubViews];
    }
    return self;
}

#pragma mark --- set isSelected
- (void)setIsSelected:(BOOL)isSelected {
    _isSelected = isSelected;
    
    [self.indicatorView setHidden:!isSelected];
}

#pragma mark --- layout
- (void)layoutMySubViews {
    
    _titleLabel = [[UILabel alloc]init];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_titleLabel];
    [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self);
    }];
}

- (void)setIndicatorType:(LTSegConIndicatorType )indicatorType {
    _indicatorType = indicatorType;
    
    if (!_indicatorView) {
        
        _indicatorView = [[UIView alloc]init];
        _indicatorView.backgroundColor = self.tintColor;
        [_indicatorView setHidden:YES];
        [self addSubview:_indicatorView];
    }
    
    if (_indicatorType == LTSegConIndicatorTypeLeft) {

        [_indicatorView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self);
            make.left.equalTo(self);
            make.size.mas_equalTo(self.indicatorSize);
        }];
    }
}

@end
