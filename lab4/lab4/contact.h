//
//  contact.h
//  lab4
//
//  Created by Javier Carreno Reyna on 2018-09-07.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface contact : NSObject
@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *email;
@property(nonatomic,strong)NSString *id;
@property(nonatomic,assign)NSInteger number;
-(instancetype)initWithname:(NSString*)name andemail:(NSString*)email andid :(NSString*)id andnumber:(NSInteger)number;
@end
