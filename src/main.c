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
        userChoice = -1;
        scanf("%d", &userChoice);
        __fpurge(stdin);

        switch(userChoice){
            // Create Contact
            case CREATE_CONTACT:
                createContact(&addressBook);
                break;

            // Search Contact
            case SEARCH_CONTACT:
                performSearch(&addressBook, &searchResult, multipleMatchFoundName);
                break;

            // Edit Contact
            case EDIT_CONTACT:
                performEdit(&addressBook, &searchResult, multipleMatchFoundName);
                break;

            // Delete Contact
            case DELETE_CONTACT:
                performDelete(&addressBook, &searchResult, multipleMatchFoundName);
                break;

            // List Contacts
            case LIST_CONTACT:
                listContacts(&addressBook);
                break;

            // Exit
            case SAVE_AND_EXIT:
                saveContacts(&addressBook);
                printf("\nContacts Saved!\nThank You for using Address Book Management Tool!\n");
                break;

            default:
                printf("Invalid Choice! Please choose again.\n");
        }
    } while(userChoice != SAVE_AND_EXIT);

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
    *searchOption = -1;
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

void performEdit(AddressBook *addressBook, int *searchResult, char *multipleMatchFoundName){
    printf("First Search the Contact to Edit:\n");
    performSearch(addressBook, searchResult, multipleMatchFoundName);

    while(*searchResult == SEARCH_RESULT_NOT_FOUND){
        performSearch(addressBook, searchResult, multipleMatchFoundName);
    }

    int editContactIndex;

    if(*searchResult == SERACH_RESULT_MULTIPLE_MATCHES){
    //Name Multiple found
    int editSerialNumber;
        printf("\nMultiple Matches found, Please Enter the number of which contact to edit: ");
        scanf("%d", &editSerialNumber);
        __fpurge(stdin);
        editContactIndex = findNthIndexOfName(addressBook, multipleMatchFoundName, editSerialNumber);
    } else {
        editContactIndex = *searchResult;
    }

    int editMemberIndex = -1;
    displayEditChoice();
    scanf("%d", &editMemberIndex);
    __fpurge(stdin);

    while(editMemberIndex < 1 && editMemberIndex > 3){
        printf("Invalid Edit Option, please choose edit option again\n");
        displayEditChoice();
        scanf("%d", &editMemberIndex);
        __fpurge(stdin);
    }

    editContact(addressBook, editContactIndex, editMemberIndex);
}

void displayDeleteChoice(){
    printf("\nOptions to Delete:\n");
    printf("1 - Delete by Name\n");
    printf("2 - Delete by Phone Number\n");
    printf("3 - Delete by Email Id\n");
    printf("Enter your choice for delete: ");
}

void performDelete(AddressBook *addressBook, int *searchResult, char *multipleMatchFoundName){
    printf("First Search the Contact to Delete:\n");
    performSearch(addressBook, searchResult, multipleMatchFoundName);

    while(*searchResult == SEARCH_RESULT_NOT_FOUND){
        performSearch(addressBook, searchResult, multipleMatchFoundName);
    }

    int deleteContactIndex;

    if(*searchResult == SERACH_RESULT_MULTIPLE_MATCHES){
        //Name Multiple found
        int deleteSerialNumber;
        printf("\nMultiple Matches found, Please Enter the number of which contact to delete: ");
        scanf("%d", &deleteSerialNumber);
        __fpurge(stdin);
        deleteContactIndex = findNthIndexOfName(addressBook, multipleMatchFoundName, deleteSerialNumber);
    } else {
        deleteContactIndex = *searchResult;
    }

    deleteContact(addressBook, deleteContactIndex);
}