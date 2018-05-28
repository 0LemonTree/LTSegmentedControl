//
//  LTSegConItem.h
//  LTSegConDemo
//
//  Created by  abcxdx@sina.com on 2018/5/28.
//  Copyright © 2018年 LemnoTree. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 Indicator position
 
 - LTSegConBorderTypeNone: Indicator border
 - LTSegConBorderTypeTop: Indicator on top
 - LTSegConBorderTypeRight: Indicator on right
 - LTSegConBorderTypeBottom: Indicator on bottom
 - LTSegConBorderTypeLeft: Indicator on left
 */
typedef NS_ENUM(NSUInteger, LTSegConIndicatorType) {
    
    LTSegConIndicatorTypeNone,
    LTSegConIndicatorTypeTop,
    LTSegConIndicatorTypeRight,
    LTSegConIndicatorTypeBottom,
    LTSegConIndicatorTypeLeft,
};

@interface LTSegConItem : UIControl

@property(nonatomic, strong)UILabel* titleLabel;
@property(nonatomic, strong)UIView*  indicatorView;
@property(nonatomic, assign)LTSegConIndicatorType indicatorType;
@property(nonatomic, assign)CGSize   indicatorSize;
@property(nonatomic, assign)BOOL      isSelected;
@end
