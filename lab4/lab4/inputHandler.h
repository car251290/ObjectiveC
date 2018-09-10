//
//  inputHandler.h
//  Labo3
//
//  Created by Javier Carreno Reyna on 2018-09-06.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface inputHandler : NSObject
+ (NSString *)getUserInputWithLength:(int) maxLength widthPrompt : (NSString* )prompt;
@property (nonatomic,copy) NSString *copied;
@property (nonatomic,strong) NSMutableArray *inputHistory;
+ (NSString *)getUserInputWithLength: (int) maxLength withPrompt: (NSString *) prompt;
-(void) addHistory:(inputHandler *) addHistory;
-(NSString *)description;
@end
