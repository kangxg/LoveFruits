//
//  KGHaveNavViewVCTR.m
//  LoveFruits
//
//  Created by kangxg on 16/9/9.
//  Copyright © 2016年 kangxg. All rights reserved.
//

#import "KGHaveNavViewVCTR.h"
#import "GlobelDefine.h"
#import "UIColor+Extension.h"
@implementation KGHaveNavViewVCTR
@synthesize KVTitleLabel = _KVTitleLabel;
-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = LFBNavigationHomeSearchColor;
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithHexString:@"#f9f9f9"]];
    self.navigationItem.titleView = self.KVTitleLabel;
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60)
                                                         forBarMetrics:UIBarMetricsDefault];
    
}

-(UILabel *)KVTitleLabel
{
    if (_KVTitleLabel == nil)
    {
        _KVTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 20, self.view.frame.size.width-120, 44)];
        _KVTitleLabel.textColor = [UIColor colorWithHexString:@"#585858"];
        _KVTitleLabel.font = [UIFont systemFontOfSize:15.0f];
        _KVTitleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _KVTitleLabel;
}
@end
