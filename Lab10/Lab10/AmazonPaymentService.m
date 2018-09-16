//
//  AmazonPaymentService.m
//  Lab10
//
//  Created by Javier Carreno Reyna on 2018-09-14.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "AmazonPaymentService.h"


@implementation AmazonPaymentService
-(void)processPaymentAmount:(NSInteger)paymentAmount {
    NSLog(@"Amazon processed amount $%ld",paymentAmount);
}

- (Boolean)canProcessPayment​ {
       if(arc4random_uniform(2)){
        return true;
    }else{
     return false;
    }
    return false;
}

@end
