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
        NSInteger positiveC = 0;
        NSInteger negativeC = 0;
        while (gameOn) {
            AdditionQuestion *q = [AdditionQuestion new];
            NSString *userAnswer = [InputHandler getUserInputWithLength:10 widthPrompt: [q question]];
            NSInteger userAnsInt = [userAnswer integerValue];
            NSString *scoreOutput = [ScoreKeeper totalScore:positiveC count:negativeC];
            if ([q answer] == userAnsInt) {
                NSLog(@"Right!");
                positiveC++;
                NSLog(@"%@", scoreOutput);
                
            } else if([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
            } else {
                NSLog(@"Wrong!");
                negativeC++;
                NSLog(@"%@", scoreOutput);
            }
        }
    }
    return 0;
}
