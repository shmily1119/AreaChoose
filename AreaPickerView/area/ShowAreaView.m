//
//  ShowAreaView.m
//  AreaPickerView
//
//  Created by xiayong on 16/8/28.
//  Copyright © 2016年 bianguo. All rights reserved.
//

#import "ShowAreaView.h"
#import "DYCAddress.h"
#import "DYCAddressPickerView.h"
#import "Address.h"

@interface ShowAreaView ()<DYCAddressDelegate,DYCAddressPickerViewDelegate>
@end

@implementation ShowAreaView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    DYCAddress *address = [[DYCAddress alloc] init];
    address.dataDelegate = self;
    [address handlerAddress];
}

-(void)layoutSubviews{
    
}

-(IBAction)cancelBtn:(id)sender{
    [self setHidden:YES];
}
-(IBAction)sureBtn:(id)sender{
//    [self removeFromSuperview];
//    DYCAddress *address = [[DYCAddress alloc] init];
//    address.dataDelegate = self;
//    [address handlerAddress];
    NSLog(@"-%@",self.areaLabel.text);
}
-(void)addressList:(NSArray *)array
{
    DYCAddressPickerView *pickerView = [[DYCAddressPickerView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 200) withAddressArray:array];
    pickerView.DYCDelegate = self;
    pickerView.backgroundColor = [UIColor colorWithRed:163/255 green:163/255 blue:163/255 alpha:0.1];
    [self.areaShowView addSubview:pickerView];
}
-(void)selectAddressProvince:(Address *)province andCity:(Address *)city andCounty:(Address *)county
{
    //    [_province setText:province.name];
    //    [_city setText:city.name];
    //    [_county setText:county.name];
    self.areaLabel.text = [NSString stringWithFormat:@"%@ %@ %@",province.name,city.name,county.name];
}



@end
