//
//  thirdTestView.m
//  ViewJumpToController
//
//  Created by CrabMan on 16/5/19.
//  Copyright © 2016年 CrabMan. All rights reserved.
//

#import "thirdTestView.h"
#import "ViewController.h"
#import "UIView+Tap.h"

@implementation thirdTestView
-(instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor purpleColor];
        
        self.frame = CGRectMake(250, 200, 100, 100);
        
//        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.width)];
//        
//        [button addTarget:self action:@selector(jumpToSecondVC:) forControlEvents:UIControlEventTouchUpInside];
//        
//        [self addSubview:button];
        
        [self tapHandle:^{
            [self.MyDelegate jump];
        }];
        
    }
    return self;
}

- (void)jumpToSecondVC:(id)sender {

    [self.MyDelegate jump];
    
}

@end
