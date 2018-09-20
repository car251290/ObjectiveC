//
//  piggame.h
//  lab13
//
//  Created by Javier Carreno Reyna on 2018-09-19.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Piggame)
-(NSString *)stringByPigLatinization​: (NSString *) input;
-(BOOL) hasCluster: (NSString *) word;
@end


