//
//  Pizza.m
//  Lab11
//
//  Created by Javier Carreno Reyna on 2018-09-16.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    
    return self;
}
+(Pizza *) largePepperoni {
    return[[Pizza alloc]initWithSize:large andToppings:[@"@Peperoni",@"@Cheess",@"@Salami"]];
}
    +(Pizza *) meatLoverWithSize:(PizzaSize)size{
        return[[Pizza alloc]initWithSize:size andTopping:[@"Chicken", @"Beef", @"Pork"]]
    }
    - (NSString *)description
    {
        NSString *PizzaSize;
        switch(_size){
            case small:
                pizzaSize = @"small";
                break;
            case medium:
                pizzaSize = @"medium";
                break;
            case large:
                pizzaSize = @"large";
                break;
            default:
                break;
        }
    }
    return[NSString stringWithFormat:@"Your Pizza! Size: %@, Toppings: %@, %@, %@.", pizzaSize, _toppings [0], _toppings[1], _toppings[2]];
}
@end
