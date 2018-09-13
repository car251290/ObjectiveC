//
//  Doctor.m
//  Lab7
//
//  Created by Javier Carreno Reyna on 2018-09-12.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import "Doctor.h"

@interface Doctor () {
@private NSMutableArray *patientList;
    NSMutableArray *prescriptions;
}
@end

@implementation Doctor

-(instancetype)initWithName:(NSString *)name Specialization:(NSString  *) specialization

{
    self=[super init];
    if(self){
        _name = name;
        _specialization = specialization;
        patientList = [NSMutableArray new];
        prescriptions = [NSMutableArray new];
    }
    return self;
}
-(Boolean)acceptPatient: (Patient *)patient withHealthCard : (Boolean)healthCard {
    if(healthCard){
        [patientList addObject: patient];
    NSlog(@"Sucessfully added the patient list:");
        return true;
    }else{
        NSLog(@"invalid added the patient list:");
        return false;
    }
    
}
-(Boolean) prescribeMedication :(Patient *) patient{
         if ([patientList containsObject:patient]) {
             NSLog(@"got the medication get prescription");
             NSString *symptom = [patient diagnostic];
             Prescription *prescription = [[Prescription alloc] initWithPatient:patient andDoctor:self anddiagnostic:diagnostic];
             [[patient prescriptions]addObject:prescription];
             [prescriptions addObject:prescription];
            return true;
        }else{
            NSLog(@"Do not get the prescription");
            return false;
        }
}
@end
