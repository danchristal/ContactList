//
//  ContactList.h
//  Contact List
//
//  Created by Dan Christal on 2016-09-06.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contacts;

-(void)addContact:(Contact *)newContact;
-(void)listContacts;

@end
