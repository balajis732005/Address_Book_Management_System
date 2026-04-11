#include "editContact.h"

void editContact(AddressBook *addressBook, int editIndex, int editMemeberIndex){

    switch(editMemeberIndex){

        case EDIT_NAME:
            // name
            char updatedName[USERNAME_SIZE];
            printf("Enter the new name to update: ");
            scanf("%30[^\n]", updatedName);
            __fpurge(stdin);
            strcpy(((addressBook->contactsBook)[editIndex]).userName, updatedName);
            break;
        
        case EDIT_PHONENUMBER:
            // phone number
            char updatePhoneNumber[USERPHONENUMBER_SIZE];
            printf("Enter the new phone number to update: ");
            scanf("%10[^\n]", updatePhoneNumber);
            __fpurge(stdin);
            strcpy(((addressBook->contactsBook)[editIndex]).userPhoneNumber, updatePhoneNumber);
            break;
        
        case EDIT_EMAILID:
            // email id
            char updateEmailId[USERPHONENUMBER_SIZE];
            printf("Enter the new email to update: ");
            scanf("%50[^\n]", updateEmailId);
            __fpurge(stdin);
            strcpy(((addressBook->contactsBook)[editIndex]).userEmailId, updateEmailId);
            break;
    }

    displayUpdatedData(addressBook, editIndex);
}

void displayUpdatedData(AddressBook *addressBook, int index){
    printf("Updated Contact:\n");
    printf("Name: %s\n", ((addressBook->contactsBook)[index]).userName);
    printf("PhoneNumber: %s\n", ((addressBook->contactsBook)[index]).userPhoneNumber);
    printf("EmailId: %s\n", ((addressBook->contactsBook)[index]).userEmailId);
}
