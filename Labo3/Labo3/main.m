//
//  main.m
//  Labo3
//
//  Created by Javier Carreno Reyna on 2018-09-06.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Additionquestion.h"
#import "inputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        //float Scorekeeper = 0.0;
        while(gameOn){
            Additionquestion *q = [[Additionquestion alloc] init]; // [AdditionQuestion new]; same
            NSString *userAnswer = [inputHandler getUserInputWithLength: 10 widthPrompt:[q question]];
            NSInteger userAnsInt = [userAnswer integerValue];
            //NSUInteger userScoreAnsInt =[userScore  intergerValue];
            if([q answer] == userAnsInt){
                NSLog(@"Right!");
            } else if([userAnswer isEqualToString:@"quit"]){
                gameOn = NO;
            } else {
                NSLog(@"Wrong!");
            }
            
        }
    }
    return 0;
}
