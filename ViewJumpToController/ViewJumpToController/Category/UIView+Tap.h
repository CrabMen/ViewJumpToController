//
//  UIView+Tap.h
//  ViewJumpToController
//
//  Created by CrabMan on 16/5/19.
//  Copyright © 2016年 CrabMan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Tap)
- (void)tapHandle:(void(^)())tapBlock ;
@end
