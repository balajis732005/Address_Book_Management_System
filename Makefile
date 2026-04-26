# Compiler
CC = gcc

# Flags
CFLAGS = -Wall -I./src

# Find all .c files recursively inside src
SRC = $(shell find src -name "*.c")

# Object, Assembly, and Preprocessed files
OBJ = $(SRC:.c=.o)
ASM = $(SRC:.c=.s)
PRE = $(SRC:.c=.i)

# Output executable
TARGET = addressBook.out

# Default target
run: $(PRE) $(ASM) $(OBJ)
	$(CC) $(OBJ) -o $(TARGET)
	@echo "Build complete -> $(TARGET)"

# Generate .i files
%.i: %.c
	$(CC) $(CFLAGS) -E $< -o $@

# Generate .s files
%.s: %.c
	$(CC) $(CFLAGS) -S $< -o $@

# Generate .o files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean everything
clean:
	rm -f $(OBJ) $(ASM) $(PRE) $(TARGET)
	@echo "Clean complete"