//
//  PaymentGateway.h
//  Lab10
//
//  Created by Javier Carreno Reyna on 2018-09-14.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol PaymentDelegate <NSObject>

-(Boolean)canProcessPayment​;
-(void)processPaymentAmount :(NSInteger)paymentAmount;
@end

@interface PaymentGateway : NSObject
@property (nonatomic, strong) id<PaymentDelegate> paymentDelegate;
@property(nonatomic,strong)NSString* ID;
@end
