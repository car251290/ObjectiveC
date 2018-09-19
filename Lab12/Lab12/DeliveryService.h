//
//  DeliveryService.h
//  Lab12
//
//  Created by Javier Carreno Reyna on 2018-09-18.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryCar.h"
@class Pizza;
@interface DeliveryService : NSObject
@property (nonatomic, strong) DeliveryCar *car;
@property (nonatomic, strong) NSMutableArray *allInformationOfPizza;
-(void) deliverPizza:(Pizza *)pizza;

@end
