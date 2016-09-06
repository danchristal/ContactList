//
//  main.m
//  Contact List
//
//  Created by Dan Christal on 2016-09-06.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputCollector *mainMenu = [[InputCollector alloc] init];
        NSString *userInput = [[NSString alloc] init];
        
        do{
            userInput = [mainMenu inputForPrompt:@"\nContact List Manager:\n 1.Add new contact\n 2.Edit contact\n 3.Quit\n"];
        } while(![userInput containsString:@"quit"]);
        
    }
    return 0;
}
