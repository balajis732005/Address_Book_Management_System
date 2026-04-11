#include "main.h"

int main(){

    AddressBook addressBook;
    addressBook.contactCount = 0;
    int userChoice;

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

            case EDIT_CONTACT:
                // Edit

            case DELETE_CONTACT:
                // Delete

            case LIST_CONTACT:
                // List
                listContacts(&addressBook);
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
