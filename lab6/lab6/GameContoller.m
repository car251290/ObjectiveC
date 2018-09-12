//
//  GameContoller.m
//  lab6
//
//  Created by Javier Carreno Reyna on 2018-09-11.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "GameContoller.h"
#define MAX_ROLL 5
#define MAX_FACE_VALUE 50
@interface GameContoller (){
@private int rollCount;
@private int sumOfRollCount;
}
@end

@implementation GameContoller

-(instancetype)init
{
    self=[super init];
    if(self){
        _displayDice= [NSMutableArray arrayWithObjects:[Dice dice], [Dice dice],[Dice dice],[Dice dice],[Dice dice],nil];
        rollCount = MAX_ROLL;
        sumOfRollCount = 0;
        _score = [NSMutableArray new];
        _bestShot = MAX_FACE_VALUE;
    }
    return self;
}
-(void)roll{
    //if I have more than 1 roll counts left, I can roll all 5 dice in the array
    // except for the one that are held by user.
    if(rollCount >0) {
        for(Dice *die in _displayDice){
            if(![die held]){
                [die roll];
            }
        }
        rollCount --;
        sumOfRollCount++;
        NSLog(@"Remaining roll:%d",rollCount);
        
        if (rollCount == 0) {
            [self holdAll];
        }
        
    }else{
        NSLog(@"YOU canot roll more tha %d times.",MAX_ROLL);
    }
    
}
- (void) displayCurrentDeck {
    NSMutableString *currentDeck = [NSMutableString string];
    for (Dice *die in _displayDice) {
        [currentDeck appendFormat:@" %@ ", [die description]];
    }
    NSLog(@"%@", currentDeck);
    [self displayScore];
}
-(void)holdDie:(NSUInteger)dice {
    //1. check if the die is already holder
    Dice *die = [_displayDice objectAtIndex:(dice - 1)];
    [die setHeld:![die held]];

    // 2. change the held proporty
   
}
-(void)resetDice{
    
    // 1. iterate thought each die , un holder very hold"
    for (Dice *die in _displayDice) {
        if ([die held]) {
            [die setHeld:false];
        }
    }
}
-(void)holdAll{
    
    // 1. iterate thought each die , hold every display
    for (Dice *die in _displayDice) {
        if (![die held]) {
            [die setHeld:true];
        }
    }
}

- (void) displayScore {
    NSUInteger score = 0;
    NSMutableString *displayMessage = [NSMutableString string];
    // 1. check if the game is over (rollCount)
    if (rollCount == 0) {
        //    - GAME OVER
        [displayMessage appendString:@"\n- GAME OVER\nYour "];
        //    - print the currentDeck and the score (the sum of faceValues)
        for (Dice *die in _displayDice) {
            if ([die held]) {
                score += [die faceValue];
            }
        }
        if (score < _bestShot) {
            _bestShot = score;
        }
        NSLog(@"%@%ld\nRolls in total: %d\nScore to beat: %ld",displayMessage, score,sumOfRollCount, _bestShot);
    } else {
        // 2. not over
        [displayMessage appendString:@"\nYour current "];
        for (Dice *die in _displayDice) {
            if ([die held]) {
                score += [die faceValue];
            }
        }
        //    - print the currentDeck and the score (the sum of faceValues)
        [displayMessage appendString:@"score is "];
        NSLog(@"%@%ld\nRolls in total: %d",displayMessage, score,sumOfRollCount);
    }
    
}
@end
