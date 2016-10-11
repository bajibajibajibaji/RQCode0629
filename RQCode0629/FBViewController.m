//
//  FBViewController.m
//  RQCode0629
//
//  Created by 朱志先 on 16/6/29.
//  Copyright © 2016年 朱志先. All rights reserved.
//

#import "FBViewController.h"
#import "FBMyQRCodeViewController.h"
#import "FBNearByShopViewController.h"
#import "FBScanQRCodeViewController.h"

@interface FBViewController ()
- (IBAction)myQrCodeButton:(UIButton *)sender;
- (IBAction)nearByShopButton:(UIButton *)sender;
- (IBAction)scanQRCodeButton:(UIButton *)sender;

@end

@implementation FBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)myQrCodeButton:(UIButton *)sender {
    FBMyQRCodeViewController *vc = [FBMyQRCodeViewController new];
    [self presentViewController:vc animated:YES completion:nil];}

- (IBAction)nearByShopButton:(UIButton *)sender {
    FBNearByShopViewController *vc = [FBNearByShopViewController new];
    [self presentViewController:vc animated:YES completion:nil];

}

- (IBAction)scanQRCodeButton:(UIButton *)sender {
    FBScanQRCodeViewController *vc = [FBScanQRCodeViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
