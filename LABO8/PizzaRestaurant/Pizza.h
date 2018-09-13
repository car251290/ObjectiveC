//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Javier Carreno Reyna on 2018-09-13.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
enum PizzaSize{
    small,
    medium,
    large
}PizzaSize;

@interface Pizza : NSObject
@property(nonatomic,assign)enum PizzaSize size;
@property(nonatomic,strong)NSArray *toppings;
- (instancetype)initWithSize: (PizzaSize) size toppings:(NSArray *) toppings;
+ (Pizza *) largePepperoni;
+ (Pizza *)meatLoversWithSize:(PizzaSize)size;

@end
