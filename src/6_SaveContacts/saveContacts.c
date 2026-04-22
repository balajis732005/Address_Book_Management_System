#include "saveContacts.h"

void saveContacts(AddressBook *addressBook){
    FILE *contactsFp = fopen("../contacts/contacts.csv", "w");
    
    fprintf(contactsFp, "Total Contacts,%d\n", addressBook->contactCount);

    fprintf(contactsFp, "Name,PhoneNumber,EmailID\n");

    int iter = 0;
    for(; iter < addressBook->contactCount; iter++){
        fprintf(contactsFp, "%s,%s,%s\n", ((addressBook->contactsBook)[iter]).userName, 
                                          ((addressBook->contactsBook)[iter]).userPhoneNumber, 
                                          ((addressBook->contactsBook)[iter]).userEmailId
        );
    }
}
