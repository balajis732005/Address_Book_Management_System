#include "saveContacts.h"

void loadContacts(AddressBook *addressBook){
    FILE *contactsFp = fopen("contacts/contacts.csv", "r");

    if (contactsFp == NULL) {
        perror("\n----Error opening contacts file----\n");
        return;
    }

    fscanf(contactsFp, "Total Contacts,%d\n", &(addressBook->contactCount));
    fscanf(contactsFp, "Name,PhoneNumber,EmailID\n");

    for(int iter = 0; iter < addressBook->contactCount; iter++){
        fscanf(contactsFp, "%[^,],%[^,],%s\n",
               addressBook->contactsBook[iter].userName,
               addressBook->contactsBook[iter].userPhoneNumber,
               addressBook->contactsBook[iter].userEmailId);
    }

    fclose(contactsFp);
}

void saveContacts(AddressBook *addressBook){
    FILE *contactsFp = fopen("contacts/contacts.csv", "w");

    if (contactsFp == NULL) {
        perror("\n----Error opening contacts file----\n");
        return;
    }

    fprintf(contactsFp, "Total Contacts,%d\n", addressBook->contactCount);
    fprintf(contactsFp, "Name,PhoneNumber,EmailID\n");

    for(int iter = 0; iter < addressBook->contactCount; iter++){
        fprintf(contactsFp, "%s,%s,%s\n",
                addressBook->contactsBook[iter].userName,
                addressBook->contactsBook[iter].userPhoneNumber,
                addressBook->contactsBook[iter].userEmailId);
    }

    fclose(contactsFp);
}
