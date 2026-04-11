#include <stdio.h>
#include <stdio_ext.h>
#include <string.h>
#include "../contact.h"

#define SEARCH_BY_NAME 1
#define SEARCH_BY_PHONENUMBER 2
#define SEARCH_BY_EMAILID 3

void searchByName(AddressBook *, char *);
void searchByPhoneNumber(AddressBook *, char *);
void searchByEmailId(AddressBook *, char *);
