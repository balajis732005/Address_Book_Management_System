#include <stdio.h>
#include <stdio_ext.h>
#include <string.h>
#include "../contact.h"

void getUserName(char *);
int validateUserName(char *);

void getUserPhoneNumber(char *);
int validateUserPhoneNumber(char *, AddressBook *);

void getUserEmailId(char *);
int validateUserEmailId(char *, AddressBook *);
