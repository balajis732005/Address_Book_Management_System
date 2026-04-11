CC = gcc
CFLAGS = -Wall -Wextra -I1_CreateContact -I5_ListContacts

# Find all .c files in root and subfolders
SRC = $(wildcard *.c */*.c)

# Convert .c to .o
OBJ = $(SRC:.c=.o)

# Output binary
TARGET = addressBook.out

# Build target
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)

# Compile each .c to .o
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean build files
clean:
	rm -f $(OBJ) $(TARGET)