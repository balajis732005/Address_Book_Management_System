#include "exportImportContacts.h"

void exportContacts(){
    FILE *srcFp = fopen("contacts/contacts.csv", "r");
    if(srcFp == NULL){
        perror("\n----Error opening contacts.csv file----\n");
        return;
    }

    FILE *destFp = fopen("export_import/exportedContacts.csv", "w");

    char ch;
    while((ch = getc(srcFp)) != EOF){
        putc(ch, destFp);
    }

    fclose(srcFp);
    fclose(destFp);
}

void importContacts(char *importContactsFilePath, AddressBook *addressBook){

    FILE *importContactsFp = fopen(importContactsFilePath, "r");
    if (importContactsFp == NULL) {
        perror("Error opening importContacts.csv file");
        return;
    }

    FILE *contactsFp = fopen("contacts/contacts.csv", "r+");
    if (contactsFp == NULL) {
        perror("Error opening contacts.csv file");
        fclose(importContactsFp);
        return;
    }

    printf("\nStarted Importing Contacts........\n");

    int previousContactsCount = 0;

    fseek(contactsFp, 0, SEEK_SET);
    fscanf(contactsFp, "Total Contacts,%d\n", &previousContactsCount);

    fseek(contactsFp, 0, SEEK_END);

    int noOfContactsImported = 0;

    char userName[USERNAME_SIZE];
    char userPhoneNumber[USERPHONENUMBER_SIZE];
    char userEmailId[USEREMAILID_SIZE];

    while (fscanf(importContactsFp, "%[^,],%[^,],%s\n",
                  userName, userPhoneNumber, userEmailId) == 3)
    {
        if (!validateUserName(userName)) {
            printf("[NOT IMPORTED] Invalid Name : %s\n", userName);
            continue;
        }

        int phoneNumberValidationResult =
            validateUserPhoneNumber(userPhoneNumber, addressBook);

        if (phoneNumberValidationResult == -1) {
            printf("[NOT IMPORTED] Phone Number Already Exists : %s\n", userPhoneNumber);
            continue;
        }

        if (phoneNumberValidationResult == 0) {
            printf("[NOT IMPORTED] Invalid Phone Number : %s\n", userPhoneNumber);
            continue;
        }

        int emailIdValidationResult =
            validateUserEmailId(userEmailId, addressBook);

        if (emailIdValidationResult == -1) {
            printf("[NOT IMPORTED] EmailID Already Exists : %s\n", userEmailId);
            continue;
        }

        if (emailIdValidationResult == 0) {
            printf("[NOT IMPORTED] Invalid EmailID : %s\n", userEmailId);
            continue;
        }

        fprintf(contactsFp, "%s,%s,%s\n",
                userName, userPhoneNumber, userEmailId);

        noOfContactsImported++;
    }

    int newTotal = previousContactsCount + noOfContactsImported;

    rewind(contactsFp);
    fprintf(contactsFp, "Total Contacts,%d\n", newTotal);

    printf("\nImported %d Contacts!\n\n", noOfContactsImported);

    fclose(importContactsFp);
    fclose(contactsFp);

    loadContacts(addressBook);
}
