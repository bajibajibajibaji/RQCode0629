//
//  FBLayoutManager.m
//  RQCode0629
//
//  Created by 朱志先 on 16/6/29.
//  Copyright © 2016年 朱志先. All rights reserved.
//

#import "FBLayoutManager.h"


typedef NS_ENUM(NSInteger, FBLayoutManagerDeviceModel) {
    FBLayoutManagerDeviceModeliPhone4 = 1,
    FBLayoutManagerDeviceModeliPhone5 = 2,
    FBLayoutManagerDeviceModeliPhone6 = 3,
    FBLayoutManagerDeviceModeliPhone6P = 4,
};

@interface FBLayoutManager()
@property (nonatomic, assign) FBLayoutManagerDeviceModel deviceModel;
@property (nonatomic ,assign) CGFloat ratio;


@end

@implementation FBLayoutManager

static FBLayoutManager *_instance;

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}


+ (instancetype)sharedFBLayoutManagerWithBasedDevice:(FBLayoutManagerDeviceModel)basedDevice;
{
    if (_instance == nil) {
        _instance = [[FBLayoutManager alloc]init];
        _instance.ratio = 1;
        CGFloat deviceHight = CGRectGetHeight([UIScreen mainScreen].bounds);
        
        
        if (deviceHight <= 480) {
            _instance.deviceModel = FBLayoutManagerDeviceModeliPhone4;
            switch (basedDevice) {
                case FBLayoutManagerDeviceModeliPhone5:
                    _instance.ratio = 320.0/320.0;
                    break;
                case FBLayoutManagerDeviceModeliPhone6:
                    _instance.ratio = 320.0/375.0;
                    break;
                case FBLayoutManagerDeviceModeliPhone6P:
                    _instance.ratio = 320.0/414.0;;
                    break;
                default:
                    break;
            }
            
        }
        else if (deviceHight <= 568.0)
        {
            _instance.deviceModel = FBLayoutManagerDeviceModeliPhone5;
            switch (basedDevice) {
                case FBLayoutManagerDeviceModeliPhone5:
                    _instance.ratio = 320.0/320.0;
                    break;
                case FBLayoutManagerDeviceModeliPhone6:
                    _instance.ratio = 320.0/375.0;
                    break;
                case FBLayoutManagerDeviceModeliPhone6P:
                    _instance.ratio = 320.0/414.0;;
                    break;
                default:
                    break;
            }
            
        }
        else if(deviceHight <= 667)
        {
            _instance.deviceModel = FBLayoutManagerDeviceModeliPhone6;
            switch (basedDevice) {
                case FBLayoutManagerDeviceModeliPhone5:
                    _instance.ratio = 375.0/320.0;
                    break;
                case FBLayoutManagerDeviceModeliPhone6:
                    _instance.ratio = 375.0/375.0;
                    break;
                case FBLayoutManagerDeviceModeliPhone6P:
                    _instance.ratio = 375.0/414.0;;
                    break;
                default:
                    break;
            }
            
        }
        else
        {
            _instance.deviceModel = FBLayoutManagerDeviceModeliPhone6P;
            switch (basedDevice) {
                case FBLayoutManagerDeviceModeliPhone5:
                    _instance.ratio = 414.0/320.0;
                    break;
                case FBLayoutManagerDeviceModeliPhone6:
                    _instance.ratio = 414.0/375.0;
                    break;
                case FBLayoutManagerDeviceModeliPhone6P:
                    _instance.ratio = 414.0/414.0;;
                    break;
                default:
                    break;
            }
            
        }
        
    }
    return _instance;
}

+ (instancetype)sharedFBLayoutManagerBasedOniPhone5
{
    FBLayoutManager *manager = [self sharedFBLayoutManagerWithBasedDevice:(FBLayoutManagerDeviceModeliPhone5)];
    return manager;
}

+ (instancetype)sharedFBLayoutManagerBasedOniPhone6
{
    FBLayoutManager *manager = [self sharedFBLayoutManagerWithBasedDevice:(FBLayoutManagerDeviceModeliPhone6)];
    return manager;

}

+ (instancetype)sharedFBLayoutManagerBasedOniPhone6P
{
    FBLayoutManager *manager = [self sharedFBLayoutManagerWithBasedDevice:(FBLayoutManagerDeviceModeliPhone6P)];
    return manager;
}

- (CGFloat)value:(CGFloat)value
{
    return value * _ratio;
}

- (CGFloat)x:(CGFloat)x
{
    return [self value:x];
}

- (CGFloat)y:(CGFloat)y
{
    return [self value:y];
}

- (CGFloat)width:(CGFloat)width
{
    return [self value:width];
}

- (CGFloat)height:(CGFloat)height
{
    return [self value:height];
}


- (CGPoint)point:(CGPoint)point
{
    CGFloat x = [self value:point.x];
    CGFloat y = [self value:point.y];
    return CGPointMake(x, y);
}

- (CGRect)rect:(CGRect)rect
{
    CGFloat x = [self value:rect.origin.x];
    CGFloat y = [self value:rect.origin.y];
    CGFloat width = [self value:rect.size.width];
    CGFloat height = [self value:rect.size.height];
    return CGRectMake(x, y, width, height);
}

- (UIEdgeInsets)insets:(UIEdgeInsets)insets
{
    CGFloat top = [self value:insets.top];
    CGFloat left = [self value:insets.left];
    CGFloat bottom = [self value:insets.bottom];
    CGFloat right = [self value:insets.right];
    return UIEdgeInsetsMake(top, left, bottom, right);
}

- (CGSize)size:(CGSize)size
{
    CGFloat width = [self value:size.width];
    CGFloat height = [self value:size.height];
    return CGSizeMake(width, height);
}









@end
