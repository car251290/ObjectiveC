//
//  Patient.m
//  Lab7
//
//  Created by Javier Carreno Reyna on 2018-09-12.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"
@interface Patient() {
@private
    Boolean healthCard;
}
@end
@implementation Patient
-(instancetype)initWithName:(NSString *)name age:(NSUInteger *) age andHealthCard:(Boolean) card
{
    self=[super init];
    if(self){
        _name = name;
        _age = *age;
        healthCard = card;
    }
    return self;
}
- (Boolean) visitDoctor: (Doctor *) doctor {
    
    return [doctor acceptPatient: self withHealthCard: healthCard];
}

- (void) requestMedication: (Doctor *) doctor {
    // 1. doctor checking if self(patient) is in the patient list.
    if ([doctor prescribeMedication:self]) {
        NSLog(@"GOT the medication!");
    } else {
        NSLog(@"REJECTED! No medication...");
    }
    
}


@end
