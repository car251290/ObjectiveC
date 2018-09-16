//
//  main.m
//  Lab10
//
//  Created by Javier Carreno Reyna on 2018-09-14.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "AmazonPaymentService.h"
#import "StripePaymentService.h"
#import"PaypalPaymentService.h"
#import "ApplePaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger paymentAmount = arc4random_uniform(900) + 100;
        NSString *message = [NSString stringWithFormat: @"\nThank you for your money Your total today is $%ld\nPlease select your  method: 1: Paypal, 2: Stripe, 3: Amazon 4: Apple", paymentAmount];
        NSInteger paymentMethod = [[inputHandler getUserInputWithLength:10 withPrompt:message] integerValue];
        PaymentGateway *paymentGateway = [PaymentGateway new];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        ApplePaymentService *apple = [ApplePaymentService new];
        switch (paymentMethod) {
            case 1:
                paymentGateway.paymentDelegate = paypal;
                break;
            case 2:
                paymentGateway.paymentDelegate = stripe;
                break;
            case 3:
                paymentGateway.paymentDelegate = amazon;
                break;
            case 4:
                paymentGateway.paymentDelegate = apple;
                break;
            default:
                break;
        }
        [paymentGateway processPaymentAmount:paymentAmount];
        
    }
    return 0;
        
       
    
}
