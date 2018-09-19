//
//  main.m
//  Lab12
//
//  Created by Javier Carreno Reyna on 2018-09-18.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "ManagerWhoHatesAnchovies.h"
#import "CherryManager.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Kitchen *restaurantKitchen = [Kitchen new];
        DeliveryService *service = [DeliveryService new];
        CherryManager *manager = [[CherryManager alloc] initWithDeliveryService:service];
        
        while (TRUE) {
            restaurantKitchen.delegate = manager;
            NSLog(@"Please pick your pizza size and toppings:");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"Input was %@", inputString);
            
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
     
            if ([commandWords[0] isEqualToString:@"small"]) {
                int size = small;
                [restaurantKitchen makePizzaWithSize:size toppings:[NSArray arrayWithObjects:commandWords[1],commandWords[2],commandWords[3], nil]];
            } else if ([commandWords[0] isEqualToString:@"medium"]) {
                int size = medium;
                [restaurantKitchen makePizzaWithSize:size toppings:[NSArray arrayWithObjects:commandWords[1],commandWords[2],commandWords[3], nil]];
            } else if ([commandWords[0] isEqualToString:@"large"]) {
                int size = small;
                [restaurantKitchen makePizzaWithSize:size toppings:[NSArray arrayWithObjects:commandWords[1],commandWords[2],commandWords[3], nil]];
            }
            
            NSLog(@"See info? (yes/no)");
            NSLog(@"> ");
            char cstr[100];
            fgets (cstr, 100, stdin);
            NSString *option = [[NSString alloc] initWithUTF8String:cstr];
            option = [option stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if ([option isEqualToString:@"yes"]) {
                NSLog(@"%@", service);
            }
        }
    }
    return 0;
}
