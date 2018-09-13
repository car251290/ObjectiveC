//
//  Prescription.h
//  Lab7
//
//  Created by Javier Carreno Reyna on 2018-09-12.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.m"
#import "Patient.h"

@interface Prescription : NSObject
@property(nonatomic,strong)Patient *patient;
@property(nonatomic,strong)NSString *diagnostic;
@property(nonatomic,strong)Doctor *doctor;

-(instancetype)initWithPatient:(Patient *)patient andDoctor:(Doctor *)doctor andDiagnostic:(NSString *)diagnostic;



@end
