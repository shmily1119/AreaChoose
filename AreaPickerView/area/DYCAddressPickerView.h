//
//  DYCAddressPickerView.h
//  AreaPickerView
//
//  Created by xiayong on 16/8/25.
//  Copyright © 2016年 bianguo. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Address;
@protocol DYCAddressPickerViewDelegate<NSObject>
-(void)selectAddressProvince:(Address *)province andCity:(Address *)city andCounty:(Address *)county;
@end
@interface DYCAddressPickerView : UIPickerView
@property (assign,nonatomic) id<DYCAddressPickerViewDelegate> DYCDelegate;
-(instancetype)initWithFrame:(CGRect)frame withAddressArray:(NSArray *)addressArray;
@end
