//
//  ZHViewController.m
//  28CustomFrame
//
//  Created by Edward on 13-6-28.
//  Copyright (c) 2013年 ZhiHu. All rights reserved.
//

#import "ZHViewController.h"
#import "ZHCustomFrame.h"

#define DefaultViewWidth 100
#define DefaultViewHeidht 30
@interface ZHViewController ()
{
  ZHCustomFrame *testCustomView_;
}

@end

@implementation ZHViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
  testCustomView_ = [[ZHCustomFrame alloc] initCustomViewWithX:0
                                                             Y:0
                                                         Width:DefaultViewWidth
                                                        Height:DefaultViewHeidht];
  [testCustomView_ setBackgroundColor:[UIColor orangeColor]];
  [testCustomView_ setCenter:CGPointMake(100, 100)];
  [self.view addSubview:testCustomView_];
}
- (void)viewDidAppear:(BOOL)animated
{
  [super viewDidAppear:animated];
  
  SEL mySelector = NSSelectorFromString(@"changeViewOriginRandomed");
  if ([self respondsToSelector:mySelector]) {  
    NSTimer *demoTimer = [NSTimer scheduledTimerWithTimeInterval:1.5f
                                                          target:self
                                                        selector:mySelector
                                                        userInfo:nil
                                                         repeats:YES];
    [demoTimer fire];
  }
}

- (void)changeViewOriginRandomed
{
  NSUInteger screenWidth = self.view.bounds.size.width;
  NSUInteger screenHeight = self.view.bounds.size.height;
  CGFloat randomOriginX = arc4random() % (screenWidth - DefaultViewWidth);
  CGFloat randomOriginY = arc4random() % (screenHeight - DefaultViewHeidht);
  testCustomView_.x = randomOriginX;
  testCustomView_.y = randomOriginY;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
