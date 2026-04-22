#ifndef SEARCH_CONTACT_H
#define SEARCH_CONTACT_H

#include <stdio.h>
#include <stdio_ext.h>
#include <string.h>
#include "../contact.h"

#define SEARCH_BY_NAME 1
#define SEARCH_BY_PHONENUMBER 2
#define SEARCH_BY_EMAILID 3

int searchByName(AddressBook *, char *);
int searchByPhoneNumber(AddressBook *, char *);
int searchByEmailId(AddressBook *, char *);

#endif
