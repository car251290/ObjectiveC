//
//  StripePaymentService.h
//  Lab10
//
//  Created by Javier Carreno Reyna on 2018-09-16.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject <PaymentDelegate>
@end
