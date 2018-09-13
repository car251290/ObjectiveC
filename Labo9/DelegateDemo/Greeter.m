//
//  Greeter.m
//  DelegateDemo
//
//  
//  Copyright © 2018 Javier Jesus Carreño All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (void) greet {
	if ([_delegate shouldSayHello]) {
		NSLog(@"Hola");
	} else {
		NSLog(@"Adios");
	}
}

@end
