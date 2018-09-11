//
//  AdditionQuestion.m
//  Lab5
//
//  Created by Javier Carreno Reyna on 2018-09-10.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(instancetype)init
{
    self=[super init];
    if(self){
        [self generateQuestion];
    }
    return self;
}
-(void)generateQuestion{
    super.question=[NSString stringWithFormat:@"@%ld+ %ld =",(long) super.leftValue,(long)super.rightValue];
    super.answer = super.leftValue + super.rightValue;

}

@end
