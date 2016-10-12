//
//  UIImage+TintColor.h
//  UIImage-RTTint
//
//  Created by LiuLei on 15/7/14.
//  Copyright (c) 2015年 Code4App. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TintColor)
-(UIImage*)tintedImageWithColor:(UIColor*)color;
-(UIImage*)tintedImageWithColor:(UIColor*)color level:(CGFloat)level;
-(UIImage*)tintedImageWithColor:(UIColor*)color rect:(CGRect)rect;
-(UIImage*)tintedImageWithColor:(UIColor*)color rect:(CGRect)rect level:(CGFloat)level;
-(UIImage*)tintedImageWithColor:(UIColor*)color insets:(UIEdgeInsets)insets;
-(UIImage*)intedImageWithColor:(UIColor*)color insets:(UIEdgeInsets)insets level:(CGFloat)level;

-(UIImage*)lightenWithLevel:(CGFloat)level;
-(UIImage*)lightenWithLevel:(CGFloat)level insets:(UIEdgeInsets)insets;
-(UIImage*)lightenRect:(CGRect)rect withLevel:(CGFloat)level;

-(UIImage*)darkenWithLevel:(CGFloat)level;
-(UIImage*)darkenWithLevel:(CGFloat)level insets:(UIEdgeInsets)insets;
-(UIImage*)darkenRect:(CGRect)rect withLevel:(CGFloat)level;

//对图片尺寸进行压缩--
-(UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;

@end
