# Address Book Management System

This project is a command-line based Address Book Management System developed as part of an Advanced C learning module. It demonstrates the use of file handling, structures, and modular programming in C to manage contact information effectively.

## Features

The application supports the following operations:

1. Create Contact  
   Allows the user to add a new contact by entering name, phone number, and email address.

2. Search Contact  
   Enables searching for a contact using name, phone number, or email.

3. Edit Contact  
   Provides the ability to modify existing contact details.

4. Delete Contact  
   Removes a selected contact from the address book.

5. List All Contacts  
   Displays all stored contacts in a structured format.

6. Export Contacts  
   Writes all contacts to a file named `contacts.csv`.

7. Import Contacts  
   Reads contact data from the file and loads it into the system.

8. Save & Exit  
   Saves all current contacts to the file and exits the program.

9. Exit  
   Exits the application without saving changes.

## Project Structure

P1_Address_Book_Management_System/

├── src/                # Contains all source (.c) and header (.h) files  
├── contacts/           # Stores the contacts.csv file  
├── export_import/      # Stores exported and imported csv file  
├── addressBook.out     # Compiled executable file  
├── Makefile            # Build automation script  

## How to Build and Run

Compile the Project:

make run

This command will:
- Compile all .c files inside the src/ directory
- Generate intermediate files (.i, .s, .o)
- Create the executable file addressBook.out

Run the Program:

./addressBook.out

Clean Build Files:

make clean

This command removes:
- Object files (.o)
- Preprocessed files (.i)
- Assembly files (.s)
- Executable (addressBook.out)

## File Storage

All contact data is stored in:

contacts/contacts.csv

The file is used for both importing and exporting contacts.

## Concepts Used

- File Handling (fopen, fscanf, fprintf, fclose)
- Structures and arrays
- Modular programming using multiple source files
- Basic data management techniques
- Makefile for build automation

## Notes

- Ensure that the contacts/ directory exists before running the program.
- Use the correct file path (contacts/contacts.csv) in file operations.
- Always check file pointers to avoid runtime errors.
