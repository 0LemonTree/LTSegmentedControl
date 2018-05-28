//
//  LTSegmentCon.m
//  LTSegConDemo
//
//  Created by  abcxdx@sina.com on 2018/5/28.
//  Copyright © 2018年 LemnoTree. All rights reserved.
//

#import "LTSegmentCon.h"

@implementation LTSegmentCon {
    LTSegConItem* _oldItem;
}

- (instancetype)initWithTitles:(NSArray*)titlesArr
{
    self = [super init];
    if (self) {
        _titlesArr = titlesArr;
    }
    return self;
}

#pragma mark ---  titlesArr setter

- (void)setTitlesArr:(NSArray *)titlesArr {
    _titlesArr = titlesArr;
}

#pragma mark ---  currentSelectedIndex setter
- (void)setCurrentSelectedIndex:(NSInteger)currentSelectedIndex {
    _currentSelectedIndex = currentSelectedIndex;
    
    LTSegConItem* conItem = [self viewWithTag:8888+currentSelectedIndex];
    [self selectItem:conItem isSelected:YES];
}

#pragma mark --- layout
- (void)layoutMySubViews {
    
    self.scrollEnabled = NO;
    
    CGFloat leftLength = 0;
    for (int i = 0; i < _titlesArr.count; i++) {
        
        LTSegConItem* segConItem = [self itemWithTitle:_titlesArr[i]];
        segConItem.frame = CGRectMake(leftLength, 0, [[NSAttributedString alloc]initWithString:_titlesArr[i] attributes:_normalAttr].size.width + 2 + _indicatorSpacing, self.frame.size.height);
        segConItem.tag = 8888+i;
        leftLength += segConItem.frame.size.width + _lineSpacing;
        [self addSubview:segConItem];
    }
    
}

#pragma mark single item
-(LTSegConItem*)itemWithTitle:(NSString*)title {
    
    LTSegConItem* control = [[LTSegConItem alloc]init];
    [control addTarget:self action:@selector(segConItemSelectAction:) forControlEvents:UIControlEventTouchUpInside];
    control.titleLabel.attributedText = [[NSAttributedString alloc]initWithString:title attributes:_normalAttr];
    control.indicatorSize = _indicatorSize;
    control.indicatorType = _indeicatorType;
    control.indicatorView.backgroundColor = [_normalAttr objectForKey:NSForegroundColorAttributeName];
    return control;
}

#pragma mark --- method
- (void)segConItemSelectAction:(LTSegConItem*)control {
    
    if (_oldItem != control) {
        
        [self selectItem:control isSelected:YES];
    }
}

- (void)selectItem:(LTSegConItem*)segconItem isSelected:(BOOL)isSelected {
    
    if (_oldItem == segconItem) {
        return;
    }
    
    segconItem.isSelected = isSelected;
    UIColor* currentColor;
    
    if (isSelected) {
        
        currentColor = [_selectAttr objectForKey:NSForegroundColorAttributeName];
        _oldItem.isSelected = NO;
        _oldItem.titleLabel.textColor = [_normalAttr objectForKey:NSForegroundColorAttributeName];
        _oldItem.indicatorView.backgroundColor = [_normalAttr objectForKey:NSForegroundColorAttributeName];
    } else {
        currentColor = [_normalAttr objectForKey:NSForegroundColorAttributeName];
    }
    segconItem.indicatorView.backgroundColor = currentColor;
    segconItem.titleLabel.textColor = currentColor;
    _oldItem = segconItem;
}

@end
