//
//  Patient.h
//  Lab7
//
//  Created by Javier Carreno Reyna on 2018-09-12.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Doctor;

@interface Patient : NSObject
@property (nonatomic,assign)NSUInteger age;
@property (nonatomic,strong)NSString *name;
@property (nonatomic, strong) NSMutableArray *prescriptions;
-(Boolean) visitDoctor: (Doctor *) doctor;
-(instancetype)initWithName:(NSString *)name age:(NSUInteger *) age andHealthCard:(Boolean) card : (Boolean) card andDiagnostic: (NSString *) diagnostic;
- (void) requestMedication: (Doctor *) doctor;


@end
