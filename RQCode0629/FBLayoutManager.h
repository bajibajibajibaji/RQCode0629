//
//  FBLayoutManager.h
//  RQCode0629
//
//  Created by 朱志先 on 16/6/29.
//  Copyright © 2016年 朱志先. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@interface FBLayoutManager : NSObject
//同一个工程类只能基于一个尺寸的设备换算坐标
+ (instancetype)sharedFBLayoutManagerBasedOniPhone5;
+ (instancetype)sharedFBLayoutManagerBasedOniPhone6;
+ (instancetype)sharedFBLayoutManagerBasedOniPhone6P;
- (CGFloat)x:(CGFloat)x;
- (CGFloat)y:(CGFloat)y;
- (CGFloat)width:(CGFloat)width;
- (CGFloat)height:(CGFloat)height;
- (CGPoint)point:(CGPoint)point;
- (CGSize)size:(CGSize)size;
- (CGRect)rect:(CGRect)rect;
- (UIEdgeInsets)insets:(UIEdgeInsets)insets;




@end
