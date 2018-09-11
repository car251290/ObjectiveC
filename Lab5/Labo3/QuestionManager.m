//
//  QuestionManager.m
//  Lab5
//
//  Created by Javier Carreno Reyna on 2018-09-10.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"


@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
        
    }
    return self;
}

- (NSString *) timeOutput {
    Question *last = [_questions objectAtIndex:[_questions count] - 1];
    Question *first = [_questions objectAtIndex:0];
    
    NSTimeInterval timeInterval = [[last endtime] timeIntervalSinceDate:[first starttime]];
    long second = lroundf(timeInterval);
    
    // long unsigned -> lus
    return [NSString stringWithFormat:@"total time: %lds, average time: %lus", second, second / [_questions count]];
}
@end
