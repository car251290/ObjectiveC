//
//  Additionquestion.m
//  Lab5
//
//  Created by Javier Carreno Reyna on 2018-09-06.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "Question.h"

@implementation Question
-(instancetype)init
{
    self = [super init];
    if(self){
        //generate 2 random ints arc4random_uniform
         _leftValue = arc4random_uniform(90)+10;
         _rightValue = arc4random_uniform(90)+ 10;
       // make question string
       // _question = [NSString stringWithFormat:@"%d+%d=",left,right];
        // get the answer and assign to answer
       // _answer = left + right;
        
        _starttime=[NSDate date];
    }
    return self;
}
-(NSInteger)answer{
    _endtime=[NSDate date];
    return _answer;
    
}
-(NSTimeInterval)answerTime{
    return[_endtime timeIntervalSinceDate:_starttime];
}
-(void)generateQuestion{
    
}

@end

