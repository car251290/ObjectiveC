//
//  main.m
//  Lab11
//
//  Created by Javier Carreno Reyna on 2018-09-16.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
# import "Kitchen.h"
#import "Pizza.h"
#import "ManagerWhoHatesAnchovies.h"
#import "CherryManager.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        ManagerWhoHatesAnchovies *managera = [ManagerWhoHatesAnchovies new];
        CherryManager *managerB = [CherryManager new];
        int rand = arc4random_uniform(2);
        NSArray *managers = [NSArray arrayWithObjects: managera, managerB, nil];
        restaurantKitchen.delegate = managers[rand];
        
        while (TRUE) {
            if (managers) {
              
                
                //return true;
            };
            // input
            NSLog(@"Please pick choose your favorite  pizza size and toppings: ");
            NSLog(@" ");
            char str[100];
            fgets (str, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"Input was %@", inputString);
            
            NSArray *commandWords = [inputString componentsSeparatedByString:@"  "];
            
            // send some message
            if ([commandWords[0] isEqualToString:@"small"]) {
                int size = small;
                NSLog(@"%@",[restaurantKitchen makePizzaWithSize:size toppings:[NSArray arrayWithObjects:commandWords[1],commandWords[2],commandWords[3], nil]]);
            } else if ([commandWords[0] isEqualToString:@"medium"]) {
                int size = medium;
                NSLog(@"%@",[restaurantKitchen makePizzaWithSize:size toppings:[NSArray arrayWithObjects:commandWords[1],commandWords[2],commandWords[3], nil]]);
            } else if ([commandWords[0] isEqualToString:@" large "]) {
                int size = small;
                NSLog(@"%@",[restaurantKitchen makePizzaWithSize:size toppings:[NSArray arrayWithObjects:commandWords[1],commandWords[2],commandWords[3], nil]]);
            }
            NSLog(@"Do you want to change a manager or no manager at all? : yes or no ");
            NSLog(@" ");
            char cstr[100];
            fgets (cstr, 100, stdin);
            NSString *option = [[NSString alloc] initWithUTF8String:cstr];
            option = [option stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if ([option isEqualToString:@"yes"]) {
                rand = (rand == 0) ? 1: 0;
                restaurantKitchen.delegate = managers[rand];
            } else if ([option isEqualToString:@"no"]) {
                restaurantKitchen.delegate = nil;
            }
            
        }
        
    }
    return 0;
}
        

