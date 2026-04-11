#include "deleteContact.h"

void deleteContact(AddressBook *addressBook, int deleteIndex){

    int iter = deleteIndex;

    while(iter < addressBook->contactCount){
        (addressBook->contactsBook)[iter] = (addressBook->contactsBook)[iter + 1];
        iter++;
    }

    (addressBook->contactCount)--;

    printf("Contact Deleted Successfully!\n");
}
