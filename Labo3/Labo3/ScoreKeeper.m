//
//  ScoreKeeper.m
//  Labo3
//
//  Created by Javier Carreno Reyna on 2018-09-06.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
-(instancetype) init
{
    self = [super init];
    if(self){
       // generate 2 random ints arc4random_uniform
        int right= 2;
        int left = 0;
         //make string representation
        _right = [NSString stringWithFormat:@"%d+%d=",left ,right];
         //get the answer and assign to answer
        _wrong_answer = left + right;
        
    }
    return self;
    
}

@end
