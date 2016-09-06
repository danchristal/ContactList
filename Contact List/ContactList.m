//
//  ContactList.m
//  Contact List
//
//  Created by Dan Christal on 2016-09-06.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

////Lazy instantiation
//-(NSMutableArray *)contacts {
//    if(!_contacts)
//         _contacts = [[NSMutableArray alloc] init];
//    return _contacts;
//}


-(instancetype)init{
    self = [super init];
    
    if(self){
        _contacts = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(void)addContact:(Contact *)newContact{
    [self.contacts addObject:newContact];
}


-(void)listContacts{
    for(int i = 0; i< self.contacts.count; i++)
        NSLog(@"%d. %@", i, self.contacts[i]);
}

@end
