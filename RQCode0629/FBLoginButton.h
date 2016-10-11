//
//  FBLoginButton.h
//  RQCode0629
//
//  Created by 朱志先 on 16/7/1.
//  Copyright © 2016年 朱志先. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^BLOCK)(void);
@interface FBLoginButton : UIView
@property (nonatomic, copy) BLOCK block;

@end
