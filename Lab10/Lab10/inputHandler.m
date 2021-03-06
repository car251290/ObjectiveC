//
//  inputHandler.m
//  Lab10
//
//  Created by Javier Carreno Reyna on 2018-09-15.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "inputHandler.h"

@implementation inputHandler
+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *)prompt {
    
    if (maxLength < 1) {
        maxLength = 255;
    }
    
    NSLog(@"%@",prompt);
    
    char inputChars[maxLength];
    
    
    const char *cstring = fgets(inputChars,maxLength,stdin);
    
    
    NSString *result = [NSString stringWithCString:cstring encoding:NSUTF8StringEncoding];
    NSCharacterSet *whitespaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    
    result = [result stringByTrimmingCharactersInSet:whitespaceAndNewLine];
    
    
    return result;
    
    
    
}
@end
