//
//  GameContoller.h
//  lab6
//
//  Created by Javier Carreno Reyna on 2018-09-11.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameContoller : NSObject
@property(nonatomic,strong)NSMutableArray *displayDice;
@property (nonatomic, strong) NSMutableArray *score;
@property (nonatomic, assign) NSUInteger bestShot;
-(void) displayCurrentDeck;
-(void) roll;
-(void)holdDie:(NSUInteger)die;
-(void)resetDice;
-(void)holdAll;
-(void) displayScore;
@end
