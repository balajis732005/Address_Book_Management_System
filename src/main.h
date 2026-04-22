#ifndef MAIN_H
#define MAIN_H

#include <stdio.h>
#include <stdio_ext.h>
#include <string.h>
#include <ctype.h>
#include "contact.h"

// Operation options
#define CREATE_CONTACT 1
#define SEARCH_CONTACT 2
#define EDIT_CONTACT 3
#define DELETE_CONTACT 4
#define LIST_CONTACT 5
#define SAVE_AND_EXIT 6

#define SEARCH_RESULT_NOT_FOUND -1
#define SERACH_RESULT_MULTIPLE_MATCHES -2
#define SEARCH_RESULT_INVALID_OPTION -3

// Function prototypes
void displayChoice(); // DISPLAY CHOICE OF OPERATION
void displaySearchChoice(); // DISPLAY SEARCH OPTION
void displayEditChoice(); // DISPLAY EDIT OPTION
void displayDeleteChoice(); // DISPLAY DELETE OPTION

void createContact(AddressBook *); // CREATE

void getSearchChoice(int *); // GET SEARCH CHOICE FROM USER
int searchContact(AddressBook *, int, char *); // SEARCH
void performSearch(AddressBook *, int *, char *); // PERFORM SEARCH

int findNthIndexOfName(AddressBook *, char *,int); // GET INDEX IF MULTIPLE MATCHES FOUND

void editContact(AddressBook *, int , int); // EDIT
void performEdit(AddressBook *, int *, char *); // PERFORM EDIT

void deleteContact(AddressBook *, int); // DELETE
void performDelete(AddressBook *, int *, char *); // PERFORM DELETE

void listContacts(AddressBook *); // LIST

void saveContacts(AddressBook *); // SAVE
void loadContacts(AddressBook *); // LOAD

#endif
