//
//  Doctor.h
//  Lab7
//
//  Created by Javier Carreno Reyna on 2018-09-12.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Prescription.h"
@class Patient

@interface Doctor : NSObject
@property (nonatomic,strong)NSString *name;
@property (nonatomic,strong)NSString *specialization;
-(instancetype)initWithName:(NSString *)name andSpecialization:(NSString  *);
//-(Boolean) visitDoctor: (Doctor *) doctor;
-(Boolean)acceptPatient: (Patient *)patient withHealthCard :(Boolean)healthCard;
-(Boolean) prescribeMedication :(Patient *) patient;
@end
