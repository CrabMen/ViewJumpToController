//
//  ViewController.m
//  ViewJumpToController
//
//  Created by CrabMan on 16/5/18.
//  Copyright © 2016年 CrabMan. All rights reserved.
//

#import "ViewController.h"
#import "firstTestView.h"
#import "secondTestView.h"
#import "thirdTestView.h"
#import "secondViewController.h"

@interface ViewController () <thirdViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    firstTestView *firstView = [[firstTestView alloc]init];
    

    firstView.block = ^{
        [self.navigationController pushViewController:[secondViewController new] animated:YES];
    };
    
    [self.view addSubview:firstView];
    
    
    secondTestView *secondView = [[secondTestView alloc]init];
    [self.view addSubview:secondView];
    
    
    thirdTestView *thirdView = [ [thirdTestView alloc]init];
    
    thirdView.MyDelegate = self;
    
    [self.view addSubview:thirdView];
    
}

- (void)jump {
    
//thirdTestView *thirdView = [ [thirdTestView alloc]init];
//    thirdView.MyDelegate = self;
    
    [self.navigationController pushViewController:[secondViewController new] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
