//
//  inputHandler.h
//  Labo3
//
//  Created by Javier Carreno Reyna on 2018-09-06.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface inputHandler : NSObject
//commands
+ (NSString *)getUserInputWithLength:(int) maxLength widthPrompt : (NSString *)prompt;
@end