//
//  contact.m
//  lab4
//
//  Created by Javier Carreno Reyna on 2018-09-07.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "contact.h"

@implementation contact

- (instancetype)initWithName: (NSString *) name andEmail: (NSString *)email andPhone: (NSMutableDictionary *)phoneBook

{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phoneBook = phoneBook;
    }
    return self;
}

- (NSString *)description
{
    
    return [NSString stringWithFormat:@"<%@> (%@)", self.name, self.email];
    
}

@end
