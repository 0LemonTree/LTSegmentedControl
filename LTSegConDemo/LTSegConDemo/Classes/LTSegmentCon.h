//
//  LTSegmentCon.h
//  LTSegConDemo
//
//  Created by  abcxdx@sina.com on 2018/5/28.
//  Copyright © 2018年 LemnoTree. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LTSegConItem.h"

@interface LTSegmentCon : UIScrollView

@property(nonatomic, strong)NSArray* titlesArr;
@property(nonatomic, assign)CGSize  indicatorSize;
@property(nonatomic, strong)NSDictionary* selectAttr;
@property(nonatomic, strong)NSDictionary* normalAttr;
@property(nonatomic, assign)CGFloat       lineSpacing;
@property(nonatomic, assign)LTSegConIndicatorType indeicatorType;
@property(nonatomic, assign)NSInteger  currentSelectedIndex;
@property(nonatomic, assign)CGFloat    indicatorSpacing;

- (instancetype)initWithTitles:(NSArray*)titlesArr;
- (void)layoutMySubViews;
@end
