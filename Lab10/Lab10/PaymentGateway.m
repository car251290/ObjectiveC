//
//  PaymentGateway.m
//  Lab10
//
//  Created by Javier Carreno Reyna on 2018-09-14.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "PaymentGateway.h"
@implementation PaymentGateway
-(void) processPaymentAmount :(NSInteger) paymentAmount{
    if([self.paymentDelegate canProcessPayment​]){
        [self.paymentDelegate processPaymentAmount:paymentAmount];
    }
}
@end

