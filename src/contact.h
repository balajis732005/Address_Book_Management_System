#ifndef CONTACT_H
#define CONTACT_H

// Maximum contacts to store
#define MAX_CONTACT 100

#define USERNAME_SIZE 31
#define USERPHONENUMBER_SIZE 11
#define USEREMAILID_SIZE 51

// Single User Contact
typedef struct {
    char userName[USERNAME_SIZE];
    char userPhoneNumber[USERPHONENUMBER_SIZE];
    char userEmailId[USEREMAILID_SIZE];
} Contact;

// Address Book
typedef struct {
    Contact contactsBook[MAX_CONTACT];
    int contactCount; // No.of Contacts stored
} AddressBook;

#endif
