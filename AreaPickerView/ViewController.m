//
//  ViewController.m
//  AreaPickerView
//
//  Created by xiayong on 16/8/25.
//  Copyright © 2016年 bianguo. All rights reserved.
//

#import "ViewController.h"

#import "ShowAreaView.h"
#import "DYCAddress.h"
#import "DYCAddressPickerView.h"
#import "Address.h"

@interface ViewController ()
@property (nonatomic,strong) ShowAreaView * areaView;

@property (nonatomic,strong) IBOutlet UILabel * areaLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _areaView = [[[NSBundle mainBundle] loadNibNamed:@"ShowAreaView" owner:nil options:nil] firstObject];
    _areaView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    _areaView.hidden = YES;
    [self.view addSubview:_areaView];
    [_areaView.sureBtn addTarget:self action:@selector(sureBtnClick) forControlEvents:UIControlEventTouchUpInside];
//    _areaLabel.text = _areaView.areaLabel.text;
    
   
}
-(void)sureBtnClick{
    [_areaView setHidden:YES];
    _areaLabel.text = _areaView.areaLabel.text;
}

#pragma mark - 点击选择地址
-(IBAction)areaBtn:(id)sender{
    
    [_areaView setHidden:NO];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//-(void)addressList:(NSArray *)array
//{
//    DYCAddressPickerView *pickerView = [[DYCAddressPickerView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 200) withAddressArray:array];
//    pickerView.DYCDelegate = self;
//    pickerView.backgroundColor = [UIColor colorWithRed:163/255 green:163/255 blue:163/255 alpha:0.3];
//    [_areaView.areaShowView addSubview:pickerView];
//}
//-(void)selectAddressProvince:(Address *)province andCity:(Address *)city andCounty:(Address *)county
//{
////    [_province setText:province.name];
////    [_city setText:city.name];
////    [_county setText:county.name];
//    _areaView.areaLabel.text = [NSString stringWithFormat:@"%@ %@ %@",province.name,city.name,county.name];
//}

@end
