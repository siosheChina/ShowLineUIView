//
//  UIView+ShowLineUIView.h
//  TestDemo
//
//  Created by 骏大爷 on 15/11/23.
//  Copyright © 2015年 ZX. All rights reserved.
//

#import <UIKit/UIKit.h>


#define defaultLineWidth 1.0 //默认的线宽
#define defaultColor [UIColor blackColor] //默认的线颜色


@interface UIView (ShowLineUIView)


@property (nonatomic,assign) BOOL showLeftLine;//显示左边的边框
@property (nonatomic,assign) BOOL showTopLine;//显示上边的边框
@property (nonatomic,assign) BOOL showRightLine;//显示右边的边框
@property (nonatomic,assign) BOOL showBottomLine;//显示下边的边框


@property (nonatomic,assign) CGFloat lineWidth;//线宽
@property (nonatomic,strong) UIColor * lineColor;//线颜色


@end
