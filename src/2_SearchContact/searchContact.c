#include "searchContact.h"

int searchContact(AddressBook *addressBook, int searchOption, char *multipleMatchFoundName){

    int searchResult = -1;

    switch(searchOption){
        case SEARCH_BY_NAME:
            // name 
            printf("------------------------\n");
            printf("Selected Search By Name:\n");
            printf("------------------------\n");
            char nameToSearch[USERNAME_SIZE];
            printf("\nEnter the user name to search: ");
            scanf("%30[^\n]", nameToSearch);
            __fpurge(stdin);
            searchResult = searchByName(addressBook, nameToSearch);
            if(searchResult == -2){
                strcpy(multipleMatchFoundName, nameToSearch);
            }
            break;

        case SEARCH_BY_PHONENUMBER:
            // Phone Number
            printf("--------------------------------\n");
            printf("Selected Search By Phone Number:\n");
            printf("--------------------------------\n");
            char phoneNumberToSearch[USERPHONENUMBER_SIZE];
            printf("\nEnter the phone number to search: ");
            scanf("%10[^\n]", phoneNumberToSearch);
            __fpurge(stdin);
            searchResult = searchByPhoneNumber(addressBook, phoneNumberToSearch);
            break;

        case SEARCH_BY_EMAILID:
            // Email Id
            printf("----------------------------\n");
            printf("Selected Search By Email ID:\n");
            printf("----------------------------\n");
            char emailIdToSerach[USEREMAILID_SIZE];
            printf("\nEnter the email id to search: ");
            scanf("%50[^\n]", emailIdToSerach);
            __fpurge(stdin);
            searchResult = searchByEmailId(addressBook, emailIdToSerach);
            break;

        default:
            searchResult = -3;
    }

    return searchResult;
}

int searchByName(AddressBook *addressBook, char *nameToSerach){
    int iter = 0;

    printf("-----------------------------\n");
    printf("Result of Serached by name as \"%s\":\n", nameToSerach);
    printf("-----------------------------\n");

    int matchCount = 0, foundIndex = -1;

    while(iter < addressBook->contactCount){

        int checkDiff = strcmp(nameToSerach, ((addressBook->contactsBook)[iter]).userName);

        if(!checkDiff){
            printf("\nContact %d:\n", (matchCount + 1));
            printf("Name: %s\n", ((addressBook->contactsBook)[iter]).userName);
            printf("PhoneNumber: %s\n", ((addressBook->contactsBook)[iter]).userPhoneNumber);
            printf("EmailId: %s\n", ((addressBook->contactsBook)[iter]).userEmailId);
            matchCount++;
            foundIndex = iter;
        }

        iter++;
    }

    if(!matchCount){
        printf("\n[Result] No Match Found with this name\n");
        return -1;
    } else if(matchCount == 1){
        return foundIndex;
    }
    
    return -2;
}

int searchByPhoneNumber(AddressBook *addressBook, char *phoneNumberToSerach){
    int iter = 0;

    printf("-------------------------------------\n");
    printf("Result of Serached by phone number as \"%s\":\n", phoneNumberToSerach);
    printf("-------------------------------------\n");

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
        printf("\n[Result] No Match Found with this phone number\n");
        return -1;
    }

    return iter;
}

int searchByEmailId(AddressBook *addressBook, char *emailIdToSerach){
    int iter = 0;

    printf("---------------------------------\n");
    printf("Result of Seaached by email id as \"%s\":\n", emailIdToSerach);
    printf("---------------------------------\n");

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
        printf("\n[Result] No Match Found with this email\n");
        return -1;
    }

    return iter;
}

int findNthIndexOfName(AddressBook *addressBook, char *multipleMatchFoundName, int n){
    int iter = 0, numberOfTimesFound = 0, indexFound;

    while(iter < addressBook->contactCount){

        int checkDiff = strcmp(multipleMatchFoundName, ((addressBook->contactsBook)[iter]).userName);

        if(!checkDiff){
            numberOfTimesFound++;
        }

        if(numberOfTimesFound == n){
            indexFound = iter;
            break;
        }

        iter++;
    }

    return indexFound;
}
