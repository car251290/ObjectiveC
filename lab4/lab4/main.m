//
//  main.m
//  lab4
//
//  Created by Javier Carreno Reyna on 2018-09-07.
//  Copyright © 2018 Javier Carreno Reyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "inputHandler.h"
#import "contact.h"
#import "ContactList.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contactList = [[ContactList alloc]init];
        inputHandler *inputHistory = [inputHandler new];
        
        while (true) {
            NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Applicatiom\n> _";
            NSString * option = [inputHandler getUserInputWithLength:20 widthPrompt:menu];
            NSLog(@"%@", option);
            
            if ([option isEqualToString:@"quit"]) {
                break;
            }else if([option isEqualToString:@"new"]){
                NSString *name = [inputHandler getUserInputWithLength:255 widthPrompt:@"Input the name: "];
                NSString *email = [inputHandler getUserInputWithLength:255 widthPrompt:@"Input the email: "];
                
                if([ContactList findDuplicate:email] == TRUE){
                    NSLog(@"This Email already exists");
                }else{
                    
                    contact *newcontact = [[contact alloc] initWithName:name andEmail:email];
                    
                    [contactList addcontact:newcontact];
                }
                
            }else if ([option isEqualToString:@"list"]){
                NSLog(@"%@", contactList);
                
            }else if([option isEqualToString:@"find"]){
                [[inputHistory inputHistory]addObject:option];
                NSString *search = [inputHandler getUserInputWithLength:255 withPrompt:@"Enter the search word"];
                 contact *result = [ContactList findcontact:search];
                if(result != nil){
                    NSLog(@"<%@> (%@)",[result name],[result email]);
                }else{
                    NSLog(@"%@", @"Not found");
                }
            }else if([option isEqualToString:@"history"]){
                NSLog(@"%@", inputHistory);
                [[inputhistory inputhistory]addObject:option];
            }
        }
    }
    
    
}
