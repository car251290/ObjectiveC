//
//  inputHandler.h
//  Labo3
//
//  Created by Javier Carreno Reyna on 2018-09-06.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//
#import <Foundation/Foundation.h>

@interface inputHandler : NSObject
@property (nonatomic, strong) NSMutableArray *commandHistory;
- (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *)prompt;
- (NSString *) getUserInputWithoutNewLine: (NSString *)prompt andLength: (int) maxLength;
- (void) showCommandHistory;
@end
