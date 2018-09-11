//
//  QuestionManager.h
//  Lab5
//
//  Created by Javier Carreno Reyna on 2018-09-10.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject
@property(nonatomic,strong)NSMutableArray *questions;
-(NSString *)timeOutput;
@end
