//
//  main.m
//  lab13
//
//  Created by Javier Carreno Reyna on 2018-09-19.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "piggame.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Input");
        NSLog(@"");
        char str[100];
        fgets(str, 100, stdin);
        NSString *input = [[NSString alloc] initWithUTF8String:str];
        input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
       NSLog(@"%@",[input stringByPigLatinization​:input]);
        
    }
    return 0;
}
