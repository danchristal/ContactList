//
//  main.m
//  Contact List
//
//  Created by Dan Christal on 2016-09-06.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *mainMenu = [[InputCollector alloc] init];
       
        InputCollector *newContactName = [[InputCollector alloc] init];
        InputCollector *newContactEmail = [[InputCollector alloc] init];
        
        ContactList *contactList = [[ContactList alloc] init];
        
        NSString *userInput = [[NSString alloc] init];        
        do{
            userInput = [mainMenu inputForPrompt:@"\nContact List Manager:\n 1.New (Contact) \n 2.List (Contacts) \n 3.Exit\n"];
            userInput = [userInput lowercaseString];
            
            if([userInput containsString:@"new"]){
                Contact *newContact = [[Contact alloc] init];

                newContact.name = [newContactName inputForPrompt:@"\nEnter contact name:"];
                newContact.email = [newContactEmail inputForPrompt:@"\nEnter contact email:"];
                
                [contactList addContact:newContact];
                
            } else if([userInput containsString:@"list"]){

                [contactList listContacts];
                
            }
            
        } while(![userInput containsString:@"exit"]);
        
    }
    return 0;
}
