//
//  Kitchen.h
//  Lab11
//
//  Created by Javier Carreno Reyna on 2018-09-16.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
@class Kitchen;

@protocol KitchenDelegate <NSObject>
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;
@optional
- (void)kitchenDidMakePizza:(Pizza *)pizza;
@end
@interface Kitchen : NSObject
@property (nonatomic, weak) id<KitchenDelegate> delegate;
- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;
@end
