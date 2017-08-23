//
//  KGShopSettlementView.h
//  LoveFruits
//
//  Created by kangxg on 16/10/2.
//  Copyright © 2016年 kangxg. All rights reserved.
//

#import "KGBaseView.h"
#import "KGEnum.h"
@interface KGShopSettlementView : KGBaseView
-(void)setState:(KGShopCarEditType)state;
-(void)setTotalAmount:(NSString *)sum;
-(void)setAllSeleted:(BOOL)allSeleted;
-(void)resetViews;
@end
