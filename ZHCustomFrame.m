//
//  ZHCustomFrame.m
//  28CustomFrame
//
//  Created by Edward on 13-6-28.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHCustomFrame.h"

@implementation ZHCustomFrame

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
}

- (void)layoutSubviews
{
  if (_center.x!=0.0 && _center.y!=0.0) {
    self.center = _center;
  }
}
#pragma UIView
- (id)initCustomViewWithX:(CGFloat)x
                        Y:(CGFloat)y
                    Width:(CGFloat)width
                   Height:(CGFloat)height
{
  self.x = x;
  self.y = y;
  self.width = width;
  self.height = height;
  CGRect rect = CGRectMake(x, y, width, height);
  self.frame = rect;
  self = [super initWithFrame:rect];
  if (self) {
    
  }
  return self;
}

#pragma Override Set Methods
- (void)setX:(CGFloat)x
{
  CGRect frame = self.frame;
  frame.origin.x = x;
  self.frame = frame;
}
- (void)setY:(CGFloat)y
{
  CGRect frame = self.frame;
  frame.origin.y = y;
  self.frame = frame;
}

- (void)setWidth:(CGFloat)width
{
  if (width != _width) {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
  }
}
- (void)setHeight:(CGFloat)height
{
  if (height != _height) {
  CGRect frame = self.frame;
  frame.size.height = height;
  self.frame = frame;
  }
}
@end
