//
//  FBLoginButton.m
//  RQCode0629
//
//  Created by 朱志先 on 16/7/1.
//  Copyright © 2016年 朱志先. All rights reserved.
//

#import "FBLoginButton.h"

@implementation FBLoginButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *backgroundImage = [[UIImageView alloc]init];
        backgroundImage.backgroundColor = [UIColor whiteColor];
        [self addSubview:backgroundImage];
        [backgroundImage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
        }];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        [self addSubview:button];
        [button setTitle:@"开始" forState:(UIControlStateNormal)];
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
        }];
        [button addTarget:self action:@selector(tap) forControlEvents:(UIControlEventTouchUpInside)];
        
        
    }
    return self;
}

- (void)tap
{
    !self.block?:self.block();
}
@end
