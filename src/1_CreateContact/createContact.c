#include "createContact.h"

void createContact(AddressBook *addressBook){
    char userName[USERNAME_SIZE];
    char userPhoneNumber[USERPHONENUMBER_SIZE];
    char userEmailId[USEREMAILID_SIZE];

    // Get user name
    getUserName(userName);

    while(!validateUserName(userName)){
        printf("Invalid user name! Please give the valid name again.\n");
        getUserName(userName);
    }

    // Get user phone number
    getUserPhoneNumber(userPhoneNumber);

    int phoneNumberValidationResult = validateUserPhoneNumber(userPhoneNumber, addressBook);
    while(phoneNumberValidationResult == -1 || phoneNumberValidationResult == 0){
        if(phoneNumberValidationResult == -1){
            printf("Phone Number Alreday Exists!\n");
            getUserPhoneNumber(userPhoneNumber);
        }
        if(phoneNumberValidationResult == 0){
            printf("Invalid phone number! Please give the phone number again.\n");
            getUserPhoneNumber(userPhoneNumber);
        }
        phoneNumberValidationResult = validateUserPhoneNumber(userPhoneNumber, addressBook);
    }

    // Get user email id
    getUserEmailId(userEmailId);

    int emailIdValidationResult = validateUserEmailId(userEmailId, addressBook);
    while(emailIdValidationResult == -1 || emailIdValidationResult == 0){
        if(emailIdValidationResult == -1){
            printf("Email Id Alreday Exists!\n");
            getUserEmailId(userEmailId);
        }
        if(emailIdValidationResult == 0){
            printf("Invalid email id! Please give the email id again.\n");
            getUserEmailId(userEmailId);
        }
        emailIdValidationResult = validateUserEmailId(userEmailId, addressBook);
    }

    // Store the Contact
    Contact newContact;
    strcpy(newContact.userName, userName);
    strcpy(newContact.userPhoneNumber, userPhoneNumber);
    strcpy(newContact.userEmailId, userEmailId);

    (addressBook->contactsBook)[addressBook->contactCount] = newContact;
    (addressBook->contactCount)++;

}

void getUserName(char *userName){
    printf("\nEnter the user name of the contact: ");
    scanf("%30[^\n]", userName);
    __fpurge(stdin);
}

int validateUserName(char *userName){
    return (*userName >= 'A' && *userName <= 'Z') || (*userName >= 'a' && *userName <= 'z');
}

void getUserPhoneNumber(char *userPhoneNumber){
    printf("\nEnter the user phone number of the contact: ");
    scanf("%10[^\n]", userPhoneNumber);
    __fpurge(stdin);
}

int validateUserPhoneNumber(char *userPhoneNumber, AddressBook *addressBook){

    int iter = 0;
    while(iter < addressBook->contactCount){
        Contact contact = (addressBook->contactsBook)[iter];
        int checkDuplicate = strcmp(userPhoneNumber, contact.userPhoneNumber);
        if(!checkDuplicate){
            return -1;
        }
        iter++;
    }

    if(strlen(userPhoneNumber) < 10){
        return 0;
    }

    char *ptrOfPhoneNumber = userPhoneNumber;
    while(*ptrOfPhoneNumber != '\0'){
        if(*ptrOfPhoneNumber < '0' || *ptrOfPhoneNumber > '9'){
            return 0;
        }
        ptrOfPhoneNumber++;
    }

    return 1;
}

void getUserEmailId(char *userEmailId){
    printf("\nEnter the user email id of the contact: ");
    scanf("%50[^\n]", userEmailId);
    __fpurge(stdin);
}

int validateUserEmailId(char *userEmailId, AddressBook *addressBook){

    int iter = 0;
    while(iter < addressBook->contactCount){
        Contact contact = (addressBook->contactsBook)[iter];
        int checkDuplicate = strcmp(userEmailId, contact.userEmailId);
        if(!checkDuplicate){
            return -1;
        }
        iter++;
    }

    char copiedUserEmailId[USEREMAILID_SIZE];
    strcpy(copiedUserEmailId, userEmailId);

    char delimeters[3] = "@.";
    int tokenCount = 0;

    char *token = strtok(copiedUserEmailId, delimeters);
    while(token){
        tokenCount++;
        token = strtok(NULL, delimeters);
    }

    if(tokenCount < 3){
        return 0;
    }

    return 1;
}
