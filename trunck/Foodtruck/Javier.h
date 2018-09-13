//
//  Javier.h
//  Foodtruck
//
//  Created by Javier Carreno Reyna on 2018-09-13.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

@interface Javier : NSObject <FoodTruckDelegate>
-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food ;

@end
