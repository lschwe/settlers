//
//  HexView.m
//  Settlers
//
//  Created by Lucas Chwe on 3/8/14.
//  Copyright (c) 2014 Lucas Chwe. All rights reserved.
//

#import "HexView.h"

@implementation HexView

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
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 2.0);
    
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    
    CGFloat s = 50;
    CGFloat h = s/2;
    CGFloat r = h*sqrt(3);
    
    CGContextMoveToPoint(context, r, 0);
    CGContextAddLineToPoint(context, 2*r, h);
    CGContextAddLineToPoint(context, 2*r, h+s);
    CGContextAddLineToPoint(context, r, 2*s);
    CGContextAddLineToPoint(context, 0, s+h);
    CGContextAddLineToPoint(context, 0, h);
    CGContextAddLineToPoint(context, r, 0);
    
    CGContextStrokePath(context);
}

@end
