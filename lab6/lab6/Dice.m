//
//  Dice.m
//  lab6
//
//  Created by Javier Carreno Reyna on 2018-09-11.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "Dice.h"

@implementation Dice
-(instancetype)init
{
    self =[super init];
    if(self){
        _faceValue = arc4random_uniform(6)+1;
        _held = false;
    }
    return self;
}
-(void)roll{
    _faceValue = arc4random_uniform(6) +1;
}
+(instancetype) dice {
    return [[self alloc]init];
}

- (NSString *)description
{
    switch (_faceValue) {
        case 1:
            if(_held){
                return @"😗";
               
            
            }case 2:
            if(_held){
                return @"😅";
               
            }
        case 3:
            if(_held){
                return @"😙";
                
            }
        case 4:
            if(_held){
                return @"🤪";
               
            
            }case 5:
            if(_held){
                return @"😛";
               
            }
        case 6:
            if(_held){
                return @"😎";
               
            }
            
            
        default:
            return @"Invalid Die";
    }
}

@end
