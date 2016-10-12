//
//  UIView+Zam.h
//  Fabulous
//
//  Created by Liszt on 16/10/12.
//  Copyright © 2016年 Liszt高级研发群:98787555. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Zam)
/**
  * 添加点赞动画
  * @param view 来自哪一个视图
  */
- (void)addAnimationFromView:(UIView *)view startPoint:(CGPoint)startPoint endY:(CGFloat)y duration:(CGFloat)duration;
@end
