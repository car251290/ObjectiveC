//
//  inputHandler.m
//  Labo3
//
//  Created by Javier Carreno Reyna on 2018-09-06.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "inputHandler.h"

@implementation inputHandler

- (instancetype)init
{
    self = [super init];
    if (self) {
        _commandHistory = [NSMutableArray new];
    }
    return self;
}

- (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *)prompt{
    if (maxLength < 1) {
        maxLength = 255;
    }
    
    NSLog(@"%@",prompt);
    char inputChars[maxLength];
    
    const char *cstring = fgets(inputChars,maxLength,stdin);
    NSString *result = [NSString stringWithCString:cstring encoding:NSUTF8StringEncoding];
    NSCharacterSet *whitespaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    result = [result stringByTrimmingCharactersInSet:whitespaceAndNewLine];
    [_commandHistory addObject:result];
    return result;
}

- (NSString *) getUserInputWithoutNewLine: (NSString *)prompt andLength: (int) maxLength{
    if (maxLength < 1) {
        maxLength = 255;
    }
    
    NSLog(@"%@",prompt);
    char inputChars[maxLength];
    
    const char *cstring = fgets(inputChars,maxLength,stdin);
    NSString *result = [NSString stringWithCString:cstring encoding:NSUTF8StringEncoding];
    NSCharacterSet *newLine = [NSCharacterSet newlineCharacterSet];
    result = [result stringByTrimmingCharactersInSet:newLine];
    return result;
}

- (void) showCommandHistory{
    int i = 0;
    while ([self.commandHistory count] > 3) {
        [self.commandHistory removeObjectAtIndex:i];
    }
    NSMutableString *last3comand = [NSMutableString new];
    for (NSString *command in self.commandHistory) {
        [last3comand appendString:@"\n"];
        [last3comand appendString:command];
    }
    NSLog(@"%@", last3comand);
    
}

@end

