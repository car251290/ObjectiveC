//
//  ScoreKeeper.h
//  Labo3
//
//  Created by Javier Carreno Reyna on 2018-09-06.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
+(NSString *)getUserInputWithLength:(int) maxright widthPrompt:(NSString *)prompt;
@property(nonatomic,assign) NSInteger *right;
@property (nonatomic,assign)NSInteger wrong;

@end
