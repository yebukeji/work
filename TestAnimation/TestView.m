//
//  TestView.m
//  TestAnimation
//
//  Created by songyanming on 13-8-27.
//  Copyright (c) 2013年 songyanming. All rights reserved.
//

#import "TestView.h"

@implementation TestView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    //[self stroke_my_line];//画直线
    //[self stroke_my_rect];//画矩形
    [self stroke_my_curve];//画弧线
    [self stroke_my_Ellipe];//画圆
}
-(void)stroke_my_line
{
       CGContextRef context = UIGraphicsGetCurrentContext();
    
//    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
//    CGContextSetLineWidth(context, 5);
//    CGContextMoveToPoint(context, 0, 0);
//    CGContextAddLineToPoint(context, 320, 460);
//    CGContextStrokePath(context);
//    
//    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
//    CGContextSetLineWidth(context, 10);
//    CGContextMoveToPoint(context, 320, 0);
//    CGContextAddLineToPoint(context, 0, 460);
//    CGContextStrokePath(context);
    
    CGPoint points[4] = {0};
    points[0] = CGPointMake(20, 20);
    points[1] = CGPointMake(300, 440);
    points[2] = CGPointMake(300, 20);
    points[3] = CGPointMake(20, 400);
    
    CGContextStrokeLineSegments(context, points,3 );
    CGContextAddLines(context, points, 3);
    CGContextStrokePath(context);
    
}

-(void)stroke_my_rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 5);
//    CGContextSetStrokeColorWithColor(context, [UIColor orangeColor].CGColor);
//    CGContextStrokeRect(context, CGRectMake(10, 10, 300, 440));
//    CGContextStrokePath(context);
    
    CGRect rects[3] = {0};
    rects[0] = CGRectMake(10, 10, 300, 440);
    rects[1] = CGRectMake(30, 30, 260, 400);
    rects[2] = CGRectMake(50, 50, 220, 360);
    
    CGContextAddRects(context, rects, 3);
    
    CGContextStrokePath(context);

    

 
    
}

-(void)stroke_my_curve
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(context, 0,250);
    //    CGContextAddQuadCurveToPoint(<#CGContextRef c#>, <#CGFloat cpx#>, <#CGFloat cpy#>, <#CGFloat x#>, <#CGFloat y#>)
    
    CGContextAddCurveToPoint(context, 100, 400, 0, 100, 320, 250);
    CGContextStrokePath(context);
}

-(void)stroke_my_Ellipe
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
     CGContextStrokeEllipseInRect(context, self.bounds);
    //CGContextAddEllipseInRect(context, self.bounds);
    
    CGContextStrokePath(context);
}


@end
