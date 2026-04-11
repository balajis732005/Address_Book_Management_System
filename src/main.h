#include <stdio.h>
#include <stdio_ext.h>
#include "contact.h"

// Operation options
#define CREATE_CONTACT 1
#define SEARCH_CONTACT 2
#define EDIT_CONTACT 3
#define DELETE_CONTACT 4
#define LIST_CONTACT 5
#define EXIT 6

// Function prototypes
void displayChoice(); // DISPLAY CHOICE
void createContact(AddressBook *); // CREATE
void listContacts(AddressBook *); // LIST
