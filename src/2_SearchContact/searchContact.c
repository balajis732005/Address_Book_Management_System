#include "searchContact.h"

int searchContact(AddressBook *addressBook, int searchOption){

    int searchResult = 1;

    switch(searchOption){
        case SEARCH_BY_NAME:
            // name 
            char nameToSearch[USERNAME_SIZE];
            printf("Enter the user name to search: ");
            scanf("%30[^\n]", nameToSearch);
            searchByName(addressBook, nameToSearch);
            break;

        case SEARCH_BY_PHONENUMBER:
            // Phone Number
            char phoneNumberToSearch[USERPHONENUMBER_SIZE];
            printf("Enter the phone number to search: ");
            scanf("%10[^\n]", phoneNumberToSearch);
            searchByPhoneNumber(addressBook, phoneNumberToSearch);
            break;

        case SEARCH_BY_EMAILID:
            // Email Id
            char emailIdToSerach[USEREMAILID_SIZE];
            printf("Enter the email id to search: ");
            scanf("%50[^\n]", emailIdToSerach);
            searchByEmailId(addressBook, emailIdToSerach);
            break;

        default:
            searchResult = 0;
    }

    return searchResult;
}

void searchByName(AddressBook *addressBook, char *nameToSerach){
    int iter = 0;

    printf("Serached by name as \"%s\":\n", nameToSerach);

    int matchCount = 0;

    while(iter < addressBook->contactCount){

        int checkDiff = strcmp(nameToSerach, ((addressBook->contactsBook)[iter]).userName);

        if(!checkDiff){
            printf("\nContact %d:\n", (matchCount + 1));
            printf("Name: %s\n", ((addressBook->contactsBook)[iter]).userName);
            printf("PhoneNumber: %s\n", ((addressBook->contactsBook)[iter]).userPhoneNumber);
            printf("EmailId: %s\n", ((addressBook->contactsBook)[iter]).userEmailId);
            matchCount++;
        }

        iter++;
    }

    if(!matchCount){
        printf("-No Match Found with this name\n");
    }
}

void searchByPhoneNumber(AddressBook *addressBook, char *phoneNumberToSerach){
    int iter = 0;

    printf("Serached by phone number as \"%s\":\n", phoneNumberToSerach);

    while(iter < addressBook->contactCount){

        int checkDiff = strcmp(phoneNumberToSerach, ((addressBook->contactsBook)[iter]).userPhoneNumber);

        if(!checkDiff){
            printf("Name: %s\n", ((addressBook->contactsBook)[iter]).userName);
            printf("PhoneNumber: %s\n", ((addressBook->contactsBook)[iter]).userPhoneNumber);
            printf("EmailId: %s\n", ((addressBook->contactsBook)[iter]).userEmailId);
            break;
        }

        iter++;
    }

    if(iter == addressBook->contactCount){
        printf("No Match Found with this phone number\n");
    }
}

void searchByEmailId(AddressBook *addressBook, char *emailIdToSerach){
    int iter = 0;

    printf("Serached by email id as \"%s\":\n", emailIdToSerach);

    while(iter < addressBook->contactCount){

        int checkDiff = strcmp(emailIdToSerach, ((addressBook->contactsBook)[iter]).userEmailId);

        if(!checkDiff){
            printf("Name: %s\n", ((addressBook->contactsBook)[iter]).userName);
            printf("PhoneNumber: %s\n", ((addressBook->contactsBook)[iter]).userPhoneNumber);
            printf("EmailId: %s\n", ((addressBook->contactsBook)[iter]).userEmailId);
            break;
        }

        iter++;
    }

    if(iter == addressBook->contactCount){
        printf("No Match Found with this email\n");
    }
}
