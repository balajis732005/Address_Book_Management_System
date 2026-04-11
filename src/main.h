#include <stdio.h>
#include <stdio_ext.h>
#include <string.h>
#include "contact.h"

// Operation options
#define CREATE_CONTACT 1
#define SEARCH_CONTACT 2
#define EDIT_CONTACT 3
#define DELETE_CONTACT 4
#define LIST_CONTACT 5
#define EXIT 6

#define SEARCH_RESULT_NOT_FOUND -1
#define SERACH_RESULT_MULTIPLE_MATCHES -2
#define SEARCH_RESULT_INVALID_OPTION -3

// Function prototypes
void displayChoice(); // DISPLAY CHOICE
void displaySearchChoice(); // DISPLAY SEARCH OPTIONS
void displayEditChoice();
void displayDeleteChoice();

void createContact(AddressBook *); // CREATE
void listContacts(AddressBook *); // LIST
void performSearch(AddressBook *, int *, char *);
void editContact(AddressBook *, int , int);
void deleteContact(AddressBook *, int);

void getSearchChoice(int *);
int searchContact(AddressBook *, int, char *); // SEARCH
int findNthIndexOfName(AddressBook *, char *,int);