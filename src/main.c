#include "main.h"

int main(){

    AddressBook addressBook;
    addressBook.contactCount = 0;

    strcpy(((addressBook.contactsBook)[0]).userName, "Balaji S");
    strcpy(((addressBook.contactsBook)[0]).userPhoneNumber, "7397644597");
    strcpy(((addressBook.contactsBook)[0]).userEmailId, "balajis07032005@gmail.com");
    strcpy(((addressBook.contactsBook)[1]).userName, "Balaji S");
    strcpy(((addressBook.contactsBook)[1]).userPhoneNumber, "1234567890");
    strcpy(((addressBook.contactsBook)[1]).userEmailId, "balajis@gmail.com");
    strcpy(((addressBook.contactsBook)[2]).userName, "Balaji S");
    strcpy(((addressBook.contactsBook)[2]).userPhoneNumber, "0987654321");
    strcpy(((addressBook.contactsBook)[2]).userEmailId, "balajis12345@gmail.com");

    addressBook.contactCount = 3;

    int userChoice;
    int searchResult;
    char multipleMatchFoundName[USERNAME_SIZE];

    do {
        displayChoice();
        scanf("%d", &userChoice);
        __fpurge(stdin);

        switch(userChoice){
            case CREATE_CONTACT:
                // Create
                createContact(&addressBook);
                break;

            case SEARCH_CONTACT:
                // Search
                performSearch(&addressBook, &searchResult, multipleMatchFoundName);
                break;

            case EDIT_CONTACT:
                // Edit
                printf("First Search the Contact to Edit:\n");
                performSearch(&addressBook, &searchResult, multipleMatchFoundName);

                while(searchResult == SEARCH_RESULT_NOT_FOUND){
                    performSearch(&addressBook, &searchResult, multipleMatchFoundName);
                }

                int editContactIndex;

                if(searchResult == SERACH_RESULT_MULTIPLE_MATCHES){
                    //Name Multiple found
                    int editSerialNumber;
                    printf("\nMultiple Matches found, Please Enter the number of which contact to edit: ");
                    scanf("%d", &editSerialNumber);
                    editContactIndex = findNthIndexOfName(&addressBook, multipleMatchFoundName, editSerialNumber);
                } else {
                    editContactIndex = searchResult;
                }

                int editMemberIndex;
                displayEditChoice();
                scanf("%d", &editMemberIndex);
                __fpurge(stdin);

                while(editMemberIndex < 1 && editMemberIndex > 3){
                    printf("Invalid Edit Option, please choose edit option again\n");
                    displayEditChoice();
                    scanf("%d", &editMemberIndex);
                    __fpurge(stdin);
                }

                editContact(&addressBook, editContactIndex, editMemberIndex);
                break;

            case DELETE_CONTACT:
                // Delete
                break;

            case LIST_CONTACT:
                // List
                listContacts(&addressBook);
                break;

            case EXIT:
                printf("\nThank You for using Address Book Management Tool!\n");
                break;

            default:
                printf("Invalid Choice! Please choose again.\n");
        }
    } while(userChoice != EXIT);

    return 0;
}

void displayChoice(){
    printf("\nWelcome to Address Book! Choice an option to perform operation:\n");
    printf("1 - Create contact\n");
    printf("2 - Search contact\n");
    printf("3 - Edit contact\n");
    printf("4 - Delete contact\n");
    printf("5 - List all contacts\n");
    printf("6 - Exit\n");
    printf("Enter your choice: ");
}

void displaySearchChoice(){
    printf("\nOptions to Search:\n");
    printf("1 - Search by name\n");
    printf("2 - Search by phone number\n");
    printf("3 - Search by email id\n");
    printf("Enter your choice for search: ");
}

void getSearchChoice(int *searchOption){
    scanf("%d", searchOption);
    __fpurge(stdin);
}

void performSearch(AddressBook *addressBook, int *searchResult, char *multipleMatchFoundName){
    int searchOption;
    displaySearchChoice();
    getSearchChoice(&searchOption);

    *searchResult = searchContact(addressBook, searchOption, multipleMatchFoundName);
    while(*searchResult == SEARCH_RESULT_INVALID_OPTION){
        printf("Invalid Search Choice! Please choose the search choice again.\n");
        displaySearchChoice();
        getSearchChoice(&searchOption);
        *searchResult = searchContact(addressBook, searchOption, multipleMatchFoundName);
    }
}

void displayEditChoice(){
    printf("\nOptions to Edit:\n");
    printf("1 - Edit by Name\n");
    printf("2 - Edit by Phone Number\n");
    printf("3 - Edit by Email Id\n");
    printf("Enter your choice for edit: ");
}
