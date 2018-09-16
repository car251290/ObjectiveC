//
//  inputHandler.h
//  Lab10
//
//  Created by Javier Carreno Reyna on 2018-09-15.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface inputHandler : NSObject

+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *)prompt;
@end
