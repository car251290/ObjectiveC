//
//  QuestionFactory.h
//  Lab5
//
//  Created by Javier Carreno Reyna on 2018-09-10.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionFactory : NSObject

@property(nonatomic,strong)NSArray *questionTypes;

-(Question *)generateRandomQuestion;

@end
