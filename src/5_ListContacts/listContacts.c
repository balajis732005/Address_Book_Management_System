#include "listContacts.h"

void listContacts(AddressBook *addressBook){
    int iter = 0;

    while(iter < addressBook->contactCount){
        printf("\nContact %d:\n", (iter + 1));
        printf("Name: %s\n", ((addressBook->contactsBook)[iter]).userName);
        printf("PhoneNumber: %s\n", ((addressBook->contactsBook)[iter]).userPhoneNumber);
        printf("EmailId: %s\n", ((addressBook->contactsBook)[iter]).userEmailId);

        iter++;
    }
}
