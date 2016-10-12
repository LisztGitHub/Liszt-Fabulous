//
//  ViewController.m
//  Fabulous
//
//  Created by Liszt on 16/10/12.
//  Copyright © 2016年 Liszt高级研发群:98787555. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+TintColor.h"

/** RGBA*/
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.f green:g/255.f blue:b/255.f alpha:a]
/** 随机颜色数组*/
#define RandomColor_Array @[RGBA(255, 91, 11, 1),RGBA(72, 165, 250, 1),RGBA(255, 162, 37, 1)]
#define RandomColor RandomColor_Array[arc4random_uniform(3)]

#import "UIView+Zam.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)tapAction:(id)sender {
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(CGRectGetWidth(self.view.frame) - 40, 400, 30, 30)];
    imageView.image = [[UIImage imageNamed:@"zam.png"] tintedImageWithColor:RandomColor];
    imageView.contentMode = UIViewContentModeCenter;
    [self.view addSubview:imageView];
    
    [imageView addAnimationFromView:self.view startPoint:CGPointMake(CGRectGetWidth(self.view.frame) - 40, 10) endY:194 duration:4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
