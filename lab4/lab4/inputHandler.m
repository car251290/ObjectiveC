//
//  inputHandler.m
//  Labo3
//
//  Created by Javier Carreno Reyna on 2018-09-06.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "inputHandler.h"

@implementation inputHandler

+ (NSString *)getUserInputWithLength:(int) maxLength widthPrompt : (NSString *)prompt {
    // get c string
    // get rid of whitespaces
    
    if(maxLength < 1){
        maxLength = 255;
    }
    NSLog(@"%@", prompt);
    char inputChars[maxLength];
    const char *cstring = fgets(inputChars, maxLength,stdin);
    NSString *result = [NSString stringWithCString:cstring encoding:NSUTF8StringEncoding];
    NSCharacterSet *whitespaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [result stringByTrimmingCharactersInSet: whitespaceAndNewLine];
}
-(NSString *)description{
    int count = 0;
    NSMutableString *result = [NSMutableString new];
    NSInteger arrayLength = [inputHistory count] - 1;
    while(count < 3){
        NSString *commandHistory = [NSString stringWithFormat:@"%@", _inputHistory[arrayLength]];
        count++;
        arrayLength--;
        [result appendString:commandHistory];
    }
    return result;
}

@end

