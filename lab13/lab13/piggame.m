//
//  piggame.m
//  lab13
//
//  Created by Javier Carreno Reyna on 2018-09-19.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "piggame.h"

#define MAX_CLUSTER 2
@implementation piggame : NSObject

-(NSString *)stringByPigLatinization​:(NSString *) input {
    NSMutableString *piglatin = [NSMutableString string];
    input = [input lowercaseString];
    
    NSArray *strArr = [input componentsSeparatedByString:@" "];
    NSArray *vowel = [NSArray arrayWithObjects:@"a",@"e",@"i",@"o",@"u", nil];
    
    for (NSString * word in strArr) {
        NSMutableString *pigOrder = [NSMutableString string];
        NSUInteger firstVow = word.length;
        
        if ([self hasCluster:word]) {
            NSRange range = NSMakeRange( MAX_CLUSTER, word.length - MAX_CLUSTER);
            [pigOrder appendFormat:@"%@", [word substringWithRange:range]];
            NSRange clusterRange = NSMakeRange(0, 2);
            [pigOrder appendFormat:@"%@", [word substringWithRange:clusterRange]];
           
            } if (firstVow < word.length) {
                NSRange rangeAfterVow = NSMakeRange(firstVow, (word.length - firstVow));
                [pigOrder appendFormat:@"%@", [word substringWithRange:rangeAfterVow]];
                
            }else {
                for (NSString *v in vowel) {
                    NSRange vowRange = [word rangeOfString:v];
                    if (vowRange.location < firstVow) {
                        firstVow = vowRange.location;
                    }
            
                } [piglatin appendFormat:@" %@", [pigOrder capitalizedString]];
                [piglatin appendFormat:@" awwww "];
          
            }NSRange rangeBeforeVow = NSMakeRange(0, firstVow);
        [pigOrder appendFormat:@" %@", [word substringWithRange:rangeBeforeVow]];
       
    }
    return [NSString stringWithFormat:@" %@", piglatin];
}

-(BOOL) hasCluster: (NSString *) word {
    NSArray *clusters = @[@"js", @"lo", @"bg", @"tg", @"op", @"fr", @"hi", @"ba", @"po"];
    for (NSString *c in clusters) {
        if ([word hasPrefix:c]) {
            return true;
        }
    }
    return false;
}


@end
