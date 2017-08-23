//
//  KGAddMerchantsInfoAlertView.m
//  LoveFruits
//
//  Created by kangxg on 16/9/17.
//  Copyright © 2016年 kangxg. All rights reserved.
//

#import "KGAddMerchantsInfoAlertView.h"
#import "UIView+Extension.h"
#import "UIColor+Extension.h"
#import "GlobelDefine.h"
@implementation KGAddMerchantsInfoAlertView
-(void)initView
{
    [super initView];
    self.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.4f];
    [self createbodyImageView];
    [self createBodyView];
    [self createTitleView];
    [self createBodyMessageView];
    [self createButton];
}
-(void)createBodyView
{
    [super createBodyView];
    m_BodyView.backgroundColor = [UIColor whiteColor];
    m_BodyView.frame = CGRectMake(50, 190, ScreenWidth-100, 119);
    m_BodyView.backgroundColor = [UIColor whiteColor];
    
}
-(void)createTitleView
{
    [super createTitleView];
//        UIView * la = [[UIView alloc]init];
//        la.frame =  CGRectMake(0, 0, m_BodyView.v_width, 78);
//    la .backgroundColor = [UIColor colorWithHexString:@"#ec4746"];
//    [m_BodyView addSubview:la];
//    m_title.numberOfLines = 0;
//    m_title.lineBreakMode = NSLineBreakByWordWrapping;
    m_title.font = [UIFont systemFontOfSize:13.0f];
    m_title.frame = CGRectMake(0, 0, m_BodyView.v_width, 78);
    m_title .backgroundColor = [UIColor colorWithHexString:@"#ec4746"];
    m_title.textColor = [UIColor whiteColor];
//    m_title.text      = @"您的认证已提交，请等待审核通过后购物，谢谢合作！";
    
    UILabel * lab  = [[UILabel alloc]init];
    lab.textAlignment = NSTextAlignmentCenter;
    lab.font = [UIFont systemFontOfSize:13.0f];
    lab.textColor  = [UIColor whiteColor];
    lab.numberOfLines = 0;
    lab.lineBreakMode = NSLineBreakByWordWrapping;
    lab.text = @"您的认证已提交，请等待审核通过后购物！";
    lab.frame = CGRectMake(20, 10,m_BodyView.v_width-40, 68);
//    lab.backgroundColor = [UIColor greenColor];
   
    [m_BodyView addSubview:lab];
   
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:m_title.bounds byRoundingCorners:UIRectCornerTopLeft | UIRectCornerTopRight cornerRadii:CGSizeMake(6, 6)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = m_title.bounds;
    maskLayer.path = maskPath.CGPath;
    m_title.layer.mask = maskLayer;
    
//     [m_BodyView addSubview:la];
    
    
    
   
    
}
-(void)createButton
{
    [super createButton];
    m_EnterBt.frame = CGRectMake(0, 78,m_BodyView.v_width, 41);
//    m_EnterBt.backgroundColor = [UIColor blackColor];
    [m_EnterBt setTitleColor:[UIColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
    
    m_EnterBt.titleLabel.font = [UIFont systemFontOfSize:15.0f];
}
-(void)createLable
{
    
}
-(void)createbodyImageView
{
    
}
-(void)createBodyMessageView
{
//    UIView * backview = [[UIView alloc]initWithFrame:self.bounds];
//    backview.backgroundColor= [UIColor blackColor];
//    backview.alpha = 0.5;
//    [self sendSubviewToBack:backview];
//    [self addSubview:backview];
}
@end