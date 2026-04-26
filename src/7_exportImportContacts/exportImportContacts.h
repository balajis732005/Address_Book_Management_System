#ifndef EXPORT_IMPORT_CONTACTS_H
#define EXPORT_IMPORT_CONTACTS_H

#include <stdio.h>
#include "contact.h"

int validateUserName(char *);
int validateUserPhoneNumber(char *, AddressBook *);
int validateUserEmailId(char *, AddressBook *);

void loadContacts(AddressBook *);

#endif