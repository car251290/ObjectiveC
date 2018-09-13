//
//  main.m
//  Lab7
//
//  Created by Javier Carreno Reyna on 2018-09-12.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doctor *doctor = [[Doctor alloc] initWithName:@"Minami" andSpecialization:@"Cardiologists"];
        Patient *kenta = [[Patient alloc] initWithName:@"Kenta" andAge:80 andHealthCard:true andSymptom:@"lover"];
        Patient *Javier = [[Patient alloc] initWithName:@"Javier" andAge:75 andHealthCard:false andSymptom:@"heart breath"];
        if ([kenta visitDoctor:doctor]) {
            [kenta requestMedication:doctor];
            [Javier requestMedication:doctor];
        }
    }
    return 0;
}
