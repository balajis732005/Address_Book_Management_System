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

void importContacts(){
    
}