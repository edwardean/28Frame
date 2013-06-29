//
//  ZHCustomFrame.h
//  28CustomFrame
//
//  Created by Edward on 13-6-28.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHCustomFrame : UIView

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGPoint center;

- (id)initCustomViewWithX:(CGFloat)x
                        Y:(CGFloat)y
                    Width:(CGFloat)width
                   Height:(CGFloat)height;


- (void)changeCustomViewBySpecifiedX:(CGFloat)x
                                   Y:(CGFloat)y
                               Width:(CGFloat)width
                              Heidht:(CGFloat)height;
@end
