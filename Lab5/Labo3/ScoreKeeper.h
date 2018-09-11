//
//  ScoreKeeper.h
//  Lab5
//
//  Created by Javier Carreno Reyna on 2018-09-06.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) int right;
@property (nonatomic, assign) int wrong;
- (void) scoreRight: (int) right andWrong: (int) wrong;


@end
