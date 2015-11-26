//
//  ViewController.m
//  ViewBorderDemo
//
//  Created by 骏大爷 on 15/11/26.
//  Copyright © 2015年 ZX. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ShowLineUIView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton * btn1 = [UIButton buttonWithType:0];
    btn1.frame = CGRectMake(110, 110, 100, 100);
    btn1.backgroundColor = [UIColor orangeColor];
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    btn1.showLeftLine = YES;
    btn1.lineWidth = 5;
    btn1.lineColor = [UIColor cyanColor];
    
    [self.view addSubview:btn1];
    
    
    
    UIButton * btn2 = [UIButton buttonWithType:0];
    btn2.frame = CGRectMake(110, 250, 100, 100);
    btn2.backgroundColor = [UIColor orangeColor];
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    btn2.showLeftLine = YES;
    [self.view addSubview:btn2];
    
}


-(void)btnClick:(UIButton *)button
{
    button.showLeftLine = !button.showLeftLine;
    button.showRightLine = !button.showRightLine;

}






@end
