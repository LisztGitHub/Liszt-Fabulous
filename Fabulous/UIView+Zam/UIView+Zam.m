//
//  UIView+Zam.m
//  Fabulous
//
//  Created by Liszt on 16/10/12.
//  Copyright © 2016年 Liszt高级研发群:98787555. All rights reserved.
//

#import "UIView+Zam.h"

@implementation UIView (Zam)
-(void)addAnimationFromView:(UIView *)view startPoint:(CGPoint)startPoint endY:(CGFloat)y duration:(CGFloat)duration{
    NSTimeInterval totalAnimationDuration = duration;
    CGFloat heartSize = CGRectGetWidth(self.bounds);
    CGFloat heartCenterX = startPoint.x;
    
    //Pre-Animation setup
    self.transform = CGAffineTransformMakeScale(0, 0);
    self.alpha = 0;
    
    //Bloom
    [UIView animateWithDuration:0.5 delay:0.0 usingSpringWithDamping:0.6 initialSpringVelocity:0.8 options:UIViewAnimationOptionCurveEaseOut animations:^{
        self.transform = CGAffineTransformIdentity;
        self.alpha = 0.9;
    } completion:NULL];
    
    NSInteger i = arc4random_uniform(2);
    // -1 OR 1
    NSInteger rotationDirection = 1 - (2 * i);
    NSInteger rotationFraction = arc4random_uniform(10);
    [UIView animateWithDuration:totalAnimationDuration animations:^{
        self.transform = CGAffineTransformMakeRotation(rotationDirection * M_PI / (16 + rotationFraction * 0.2));
    } completion:NULL];
    
    UIBezierPath *heartTravelPath = [UIBezierPath bezierPath];
    [heartTravelPath moveToPoint:self.center];
    
    //random end point
    CGPoint endPoint = CGPointMake(heartCenterX, y);
    
    //random Control Points
    NSInteger j = arc4random_uniform(2);
    NSInteger travelDirection = 1- (2*j);// -1 OR 1
    
    //randomize x and y for control points
    CGFloat xDelta = (heartSize/2.0 + arc4random_uniform(heartSize)) * travelDirection;
    CGFloat yDelta = MAX(endPoint.y ,MAX(heartSize, heartSize));
    CGPoint controlPoint1 = CGPointMake(heartCenterX + xDelta, 0);
    CGPoint controlPoint2 = CGPointMake(heartCenterX, yDelta);
    
    [heartTravelPath addCurveToPoint:endPoint controlPoint1:controlPoint1 controlPoint2:controlPoint2];
    
    CAKeyframeAnimation *keyFrameAnimation = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    keyFrameAnimation.path = heartTravelPath.CGPath;
    keyFrameAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    keyFrameAnimation.duration = totalAnimationDuration + 2;
    [self.layer addAnimation:keyFrameAnimation forKey:@"positionOnPath"];
    
    // Alpha & remove from superview
    [UIView animateWithDuration:totalAnimationDuration animations:^{
        self.alpha = 0.0;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];

}
@end
