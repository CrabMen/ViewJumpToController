//
//  thirdTestView.h
//  ViewJumpToController
//
//  Created by CrabMan on 16/5/19.
//  Copyright © 2016年 CrabMan. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol thirdViewDelegate <NSObject>

- (void)jump ;

@end

@interface thirdTestView : UIView

@property (nonatomic,weak) id <thirdViewDelegate> MyDelegate;

@end
