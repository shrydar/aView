//
//  AOEView.m
//  aView
//
//  Created by Christopher Phillips on 15/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AOEView.h"

@implementation AOEView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGRect    myFrame = self.bounds;
    CGContextSetLineWidth(ctx, 8);
    myFrame=CGRectInset(myFrame, 8, 8);
    [[UIColor redColor] set];
    UIRectFrame(myFrame);
    
    CGContextSetLineWidth(ctx, 1);
    
    CGContextSetRGBFillColor (ctx, 0, 0, 1, .5); //5
    CGContextFillRect (ctx, CGRectMake (0, 0, 100, 200));
    CGContextFillRect (ctx, myFrame);
    
}

@end
