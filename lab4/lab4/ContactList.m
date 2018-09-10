//
//  ContactList.m
//  lab4
//
//  Created by Javier Carreno Reyna on 2018-09-07.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "ContactList.h"

@implementation contactList
- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [NSMutableArray array];
        
    }
    return self;
}

-(void) addContact: (contact *) newContact{
    [_contactList addObject: newContact];
    
}

- (NSString *)description{
    NSMutableString *result = [NSMutableString new];
    int count = 0;
    for (contact *contact in _contactList) {
        NSString *contactStr = [NSString stringWithFormat:@"%d: %@\n",count,contact];
        count++;
        [result appendString: contactStr];
    }
  
    return result;
}

- (contact *) findContact: (NSString *) checkword{
    for(contact *contact in _contactList){
        if([[contact name] isEqualToString:checkword] || [[contact email] isEqualToString:checkword]){
            return contact;
        }
    }
    return nil;
}

- (BOOL)findDuplicate:(NSString *) sameEmail{
    for (contact *contact in _contactList) {
        if([[contact email] isEqualToString:sameEmail]){
            return TRUE;
        }
    }
    return FALSE;
}

@end
