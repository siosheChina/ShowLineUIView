//
//  UIView+ShowLineUIView.m
//  TestDemo
//
//  Created by 骏大爷 on 15/11/23.
//  Copyright © 2015年 ZX. All rights reserved.
//

#import "UIView+ShowLineUIView.h"
#import <objc/message.h>

static void *topKey = &topKey;
static void *leftKey = &leftKey;
static void *rightKey = &rightKey;
static void *bottomKey = &bottomKey;

static void *kLineColor = &kLineColor;
static void *kLineWidth = &kLineWidth;


@implementation UIView (ShowLineUIView)


-(void)setLineColor:(UIColor *)lineColor
{
    objc_setAssociatedObject(self, kLineColor, lineColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    if(self.showTopLine) self.showTopLine = YES;
    if(self.showLeftLine) self.showLeftLine = YES;
    if(self.showBottomLine) self.showBottomLine = YES;
    if(self.showRightLine) self.showRightLine = YES;
 }

-(UIColor *)lineColor
{
    id topLayer = objc_getAssociatedObject(self, kLineColor);
    return topLayer;
}



-(void)setLineWidth:(CGFloat)lineWidth
{
    objc_setAssociatedObject(self, kLineWidth, @(lineWidth), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    if(self.showTopLine) self.showTopLine = YES;
    if(self.showLeftLine) self.showLeftLine = YES;
    if(self.showBottomLine) self.showBottomLine = YES;
    if(self.showRightLine) self.showRightLine = YES;
}

-(CGFloat)lineWidth
{
    id topLayer = objc_getAssociatedObject(self, kLineWidth);
    return ((NSNumber*)topLayer).floatValue;
    
}



-(void)setShowTopLine:(BOOL)showTopLine
{
    UIColor * lineColorShow = self.lineColor?:defaultColor;
    CGFloat lineWidthShow = (self.lineWidth >0)?self.lineWidth:defaultLineWidth;
    
    id topLayer = objc_getAssociatedObject(self, topKey);
    if(topLayer)
    {
        CALayer * layer = topLayer;
        layer.frame = CGRectMake(0, 0, CGRectGetWidth(self.bounds), lineWidthShow);
        layer.backgroundColor = lineColorShow.CGColor;
        layer.hidden = !showTopLine;
        
    }else
    {
        CALayer * layer = [CALayer layer];
        layer.frame = CGRectMake(0, 0, CGRectGetWidth(self.bounds), lineWidthShow);
        layer.backgroundColor = lineColorShow.CGColor;
        [self.layer addSublayer:layer];
        
        objc_setAssociatedObject(self, topKey, layer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        layer.hidden = !showTopLine;
    }
 
}



-(void)setShowLeftLine:(BOOL)showLeftLine
{
    UIColor * lineColorShow = self.lineColor?:defaultColor;
    CGFloat lineWidthShow = (self.lineWidth >0)?self.lineWidth:defaultLineWidth;
    
    id topLayer = objc_getAssociatedObject(self, leftKey);
    if(topLayer)
    {
        CALayer * layer = topLayer;
        layer.frame = CGRectMake(0, 0, lineWidthShow, CGRectGetHeight(self.bounds));
        layer.backgroundColor = lineColorShow.CGColor;
        layer.hidden = !showLeftLine;
        
    }else
    {
        CALayer * layer = [CALayer layer];
        layer.frame = CGRectMake(0, 0, lineWidthShow, CGRectGetHeight(self.bounds));
        layer.backgroundColor = lineColorShow.CGColor;
        [self.layer addSublayer:layer];
        
        objc_setAssociatedObject(self, leftKey, layer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        layer.hidden = !showLeftLine;
    }
}


-(void)setShowBottomLine:(BOOL)showBottomLine
{
    UIColor * lineColorShow = self.lineColor?:defaultColor;
    CGFloat lineWidthShow = (self.lineWidth >0)?self.lineWidth:defaultLineWidth;
    
    id topLayer = objc_getAssociatedObject(self, bottomKey);
    if(topLayer)
    {
        CALayer * layer = topLayer;
        layer.frame = CGRectMake(0, CGRectGetHeight(self.bounds)-lineWidthShow, CGRectGetWidth(self.bounds), lineWidthShow);
        layer.backgroundColor = lineColorShow.CGColor;
        layer.hidden = !showBottomLine;
        
    }else
    {
        CALayer * layer = [CALayer layer];
        layer.frame = CGRectMake(0, CGRectGetHeight(self.bounds)-lineWidthShow, CGRectGetWidth(self.bounds), lineWidthShow);
        layer.backgroundColor = lineColorShow.CGColor;
        [self.layer addSublayer:layer];
        
        objc_setAssociatedObject(self, bottomKey, layer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        layer.hidden = !showBottomLine;
    }
}


-(void)setShowRightLine:(BOOL)showRightLine
{
    UIColor * lineColorShow = self.lineColor?:defaultColor;
    CGFloat lineWidthShow = (self.lineWidth >0)?self.lineWidth:defaultLineWidth;
    
    id topLayer = objc_getAssociatedObject(self, rightKey);
    if(topLayer)
    {
        CALayer * layer = topLayer;
        layer.frame = CGRectMake( CGRectGetWidth(self.bounds)-lineWidthShow,0, lineWidthShow, CGRectGetHeight(self.bounds));
        layer.backgroundColor = lineColorShow.CGColor;
        layer.hidden = !showRightLine;
        
    }else
    {
        CALayer * layer = [CALayer layer];
        layer.frame = CGRectMake( CGRectGetWidth(self.bounds)-lineWidthShow,0, lineWidthShow, CGRectGetHeight(self.bounds));
        layer.backgroundColor = lineColorShow.CGColor;
        [self.layer addSublayer:layer];
        
        objc_setAssociatedObject(self, rightKey, layer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        layer.hidden = !showRightLine;
    }
    
}


-(BOOL)showTopLine
{
    id topLayer = objc_getAssociatedObject(self, topKey);
    if(topLayer)
    {
        CALayer * layer = topLayer;
        return !layer.hidden;
    }else
    {
        return NO;
    }
    
}

-(BOOL)showRightLine
{
    id topLayer = objc_getAssociatedObject(self, rightKey);
    if(topLayer)
    {
        CALayer * layer = topLayer;
        return !layer.hidden;
    }else
    {
        return NO;
    }
    
}

-(BOOL)showLeftLine
{
    id topLayer = objc_getAssociatedObject(self, leftKey);
    if(topLayer)
    {
        CALayer * layer = topLayer;
        return !layer.hidden;
    }else
    {
        return NO;
    }
    
}

-(BOOL)showBottomLine
{
    id topLayer = objc_getAssociatedObject(self, bottomKey);
    if(topLayer)
    {
        CALayer * layer = topLayer;
        return !layer.hidden;
    }else
    {
        return NO;
    }
    
}


@end
