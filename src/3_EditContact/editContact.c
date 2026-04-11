#include "editContact.h"

void editContact(AddressBook *addressBook, int editIndex, int editMemeberIndex){

    switch(editMemeberIndex){

        case EDIT_NAME:
            // name
            char updatedName[USERNAME_SIZE];

            getUpdatedUserName(updatedName);
            while(!validateUserName(updatedName)){
                printf("Invalid user name! Please give the valid name again.\n");
                getUpdatedUserName(updatedName);
            }

            strcpy(((addressBook->contactsBook)[editIndex]).userName, updatedName);
            break;
        
        case EDIT_PHONENUMBER:
            // phone number
            char updatePhoneNumber[USERPHONENUMBER_SIZE];

            getUpdatedUserPhoneNumber(updatePhoneNumber);

            int phoneNumberValidationResult = validateUserPhoneNumber(updatePhoneNumber, addressBook);
            while(phoneNumberValidationResult == -1 || phoneNumberValidationResult == 0){
                if(phoneNumberValidationResult == -1){
                    printf("Phone Number Alreday Exists!\n");
                    getUpdatedUserPhoneNumber(updatePhoneNumber);
                }
                if(phoneNumberValidationResult == 0){
                    printf("Invalid phone number! Please give the phone number again.\n");
                    getUpdatedUserPhoneNumber(updatePhoneNumber);
                }
                phoneNumberValidationResult = validateUserPhoneNumber(updatePhoneNumber, addressBook);
            }

            strcpy(((addressBook->contactsBook)[editIndex]).userPhoneNumber, updatePhoneNumber);
            break;
        
        case EDIT_EMAILID:
            // email id
            char updateEmailId[USERPHONENUMBER_SIZE];

            getUpdatedUserEmailId(updateEmailId);

            int emailIdValidationResult = validateUserEmailId(updateEmailId, addressBook);
            while(emailIdValidationResult == -1 || emailIdValidationResult == 0){
                if(emailIdValidationResult == -1){
                    printf("Email Id Alreday Exists!\n");
                    getUpdatedUserEmailId(updateEmailId);
                }
                if(emailIdValidationResult == 0){
                    printf("Invalid email id! Please give the email id again.\n");
                    getUpdatedUserEmailId(updateEmailId);
                }
                emailIdValidationResult = validateUserEmailId(updateEmailId, addressBook);
            }

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

void getUpdatedUserName(char *updatedName){
    printf("Enter the new name to update: ");
    scanf("%30[^\n]", updatedName);
    __fpurge(stdin);
}

void getUpdatedUserPhoneNumber(char *updatedPhoneNumber){
    printf("Enter the new phone number to update: ");
    scanf("%10[^\n]", updatedPhoneNumber);
    __fpurge(stdin);
}

void getUpdatedUserEmailId(char *updatedEmailId){
    printf("Enter the new email id to update: ");
    scanf("%50[^\n]", updatedEmailId);
    __fpurge(stdin);
}