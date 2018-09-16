//
//  StripePaymentService.m
//  Lab10
//
//  Created by Javier Carreno Reyna on 2018-09-16.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
- (void)processPaymentAmount:(NSInteger)paymentAmount {
    NSLog(@"Stripe processed amount $%ld", paymentAmount);
}

- (Boolean)canProcessPayment​ {
    if (arc4random_uniform(2)) {
        return true;
    }else {
        return false;
    }
    return false;
}
@end
