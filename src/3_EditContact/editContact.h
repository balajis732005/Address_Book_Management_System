#ifndef EDIT_CONTACT_H
#define EDIT_CONTACT_H

#include <stdio.h>
#include <stdio_ext.h>
#include <string.h>
#include "../contact.h"

#define EDIT_NAME 1
#define EDIT_PHONENUMBER 2
#define EDIT_EMAILID 3

void displayUpdatedData(AddressBook *, int);

void getUpdatedUserName(char *);
void getUpdatedUserPhoneNumber(char *);
void getUpdatedUserEmailId(char *);

int validateUserName(char *);
int validateUserPhoneNumber(char *, AddressBook *);
int validateUserEmailId(char *, AddressBook *);

#endif
