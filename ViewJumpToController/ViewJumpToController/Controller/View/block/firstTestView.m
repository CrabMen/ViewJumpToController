//
//  firstTestView.m
//  ViewJumpToController
//
//  Created by CrabMan on 16/5/18.
//  Copyright © 2016年 CrabMan. All rights reserved.
//

#import "firstTestView.h"


@implementation firstTestView
-(instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor redColor];

        self.frame = CGRectMake(50, 200, 100, 100);
    
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.width)];
        
        [button addTarget:self action:@selector(jump:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:button];
        
        
    }
    return self;
}


- (void)jump:(id)sender {
    
    self.block();
}

@end
