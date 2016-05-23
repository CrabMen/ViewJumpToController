//
//  secondTestView.m
//  ViewJumpToController
//
//  Created by CrabMan on 16/5/18.
//  Copyright © 2016年 CrabMan. All rights reserved.
//

#import "secondTestView.h"
#import "UIView+UIViewController.h"
#import "secondViewController.h"

@implementation secondTestView

-(instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor blueColor];
        
        self.frame = CGRectMake(150, 200, 100, 100);
        
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.width)];
        
        [button addTarget:self action:@selector(jump:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:button];
        
        
    }
    return self;
}

- (void)jump:(id)sender {
    [self.navigationController pushViewController:[secondViewController new] animated:YES];
}
@end
