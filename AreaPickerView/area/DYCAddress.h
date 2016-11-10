//
//  DYCAddress.h
//  AreaPickerView
//
//  Created by xiayong on 16/8/25.
//  Copyright © 2016年 bianguo. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol DYCAddressDelegate<NSObject>
@optional
-(void)addressList:(NSArray *)array;
@end
@interface DYCAddress : NSObject
@property (assign,nonatomic) id<DYCAddressDelegate> dataDelegate;
-(BOOL)handlerAddress;
@end
