CC = gcc
CFLAGS = -g -Wall -std=c99 -pedantic

SRC_DIR = src
TEST_DIR = tests
BIN_DIR = bin
OBJ_DIR = obj


APP_OBJS   = $(OBJ_DIR)/main.o $(OBJ_DIR)/code.o
TEST_OBJS  = $(OBJ_DIR)/tests.o $(OBJ_DIR)/code.o $(OBJ_DIR)/unity.o

APP_TARGET  = $(BIN_DIR)/main.exe
TEST_TARGET = $(BIN_DIR)/tests.exe

.PHONY: all app test clean

all: app test

app: $(APP_TARGET)
test: $(TEST_TARGET)

$(APP_TARGET): $(APP_OBJS)
	$(CC) $(APP_OBJS) -o $@

$(TEST_TARGET): $(TEST_OBJS)
	$(CC) $(TEST_OBJS) -o $@

# compilation
$(OBJ_DIR)/main.o: $(SRC_DIR)/main.c 
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR)/code.o: math_ops.c		# $(OBJ_DIR)/code.o: $(SRC_DIR)/code.c
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR)/tests.o: $(TEST_DIR)/tests.c
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR)/unity.o: $(TEST_DIR)/unity.c
	$(CC) $(CFLAGS) -c $< -o $@

