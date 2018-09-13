//
//  Prescription.m
//  Lab7
//
//  Created by Javier Carreno Reyna on 2018-09-12.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "Prescription.h"

@interface Patient() {
@private
    Boolean healthCard;
}

@end

@implementation Prescription
-(instancetype)initWithPatient:(Patient *)patient andDoctor:(Doctor *)doctor andDiagnostic:(NSString *)diagnostic
{
    self =[super init];
    
    if(self){
        _patient = patient;
        _doctor = doctor;
        _diagnostic = diagnostic;
        
    }
    return self;
}

@end
