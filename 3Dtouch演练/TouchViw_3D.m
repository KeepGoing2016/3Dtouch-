//
//  TouchViw_3D.m
//  3Dtouch演练
//
//  Created by lumf on 16/4/18.
//  Copyright © 2016年 lumf. All rights reserved.
//

#import "TouchViw_3D.h"

@implementation TouchViw_3D

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    self.backgroundColor=[UIColor colorWithRed:touch.force/touch.maximumPossibleForce green:0 blue:1 alpha:1.0];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.backgroundColor = [UIColor redColor];
}

@end
