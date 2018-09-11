//
//  QuestionFactory.m
//  Lab5
//
//  Created by Javier Carreno Reyna on 2018-09-10.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory
    -(instancetype)init
    //return an instance of +, -,/,* question object.
    //AdditionQuestion , subtractionquestion , multiplication,divisionquestion
    {
        self=[super init];
        if(self){
            _questionTypes = @[@"AdditionQuestion",@"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
            
        }
        return self;
        
    }
-(Question *)generateRandomQuestion
{
    NSString *type =[_questionTypes objectAtIndex:arc4random_uniform(4)];
    //[AdditionQuestion alloc]init];
    return[[NSClassFromString(type)alloc]init];
}
@end
