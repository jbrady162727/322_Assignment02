INC_DIR = include
SRC_DIR = src
TEST_DIR = tests
OBJ_DIR = obj
BIN_DIR = bin


MAIN_OBJ = $(OBJ_DIR)/main.o
MATH_OBJ = $(OBJ_DIR)/math_ops.o
UNITY_OBJ = $(OBJ_DIR)/unity.o
TEST_OBJ = $(OBJ_DIR)/tests.o


MAIN_EXE = $(BIN_DIR)/main.exe
TEST_EXE = $(BIN_DIR)/tests.exe


CC = gcc
CFLAGS = -I$(INC_DIR) -I$(TEST_DIR) -Wall -Wextra -std=c11


all: build_dirs $(MAIN_EXE) $(TEST_EXE)


build_dirs:
	mkdir -p $(OBJ_DIR)
	mkdir -p $(BIN_DIR)



$(MAIN_EXE): $(MAIN_OBJ) $(MATH_OBJ)
	$(CC) $(CFLAGS) $(OBJ_DIR)/main.o $(OBJ_DIR)/math_ops.o -o $(BIN_DIR)/main.exe



$(TEST_EXE): $(TEST_OBJ) $(MATH_OBJ) $(UNITY_OBJ)
	$(CC) $(CFLAGS) $(OBJ_DIR)/tests.o $(OBJ_DIR)/math_ops.o $(OBJ_DIR)/unity.o -o $(BIN_DIR)/tests.exe



$(MAIN_OBJ):
	$(CC) $(CFLAGS) -c $(SRC_DIR)/main.c -o $(OBJ_DIR)/main.o

$(MATH_OBJ):
	$(CC) $(CFLAGS) -c $(SRC_DIR)/math_ops.c -o $(OBJ_DIR)/math_ops.o

$(TEST_OBJ):
	$(CC) $(CFLAGS) -c $(TEST_DIR)/tests.c -o $(OBJ_DIR)/tests.o

$(UNITY_OBJ):
	$(CC) $(CFLAGS) -c $(TEST_DIR)/unity.c -o $(OBJ_DIR)/unity.o



clean:
	rm -f $(OBJ_DIR)/*.o
	rm -f $(BIN_DIR)/*.exe
	rmdir --ignore-fail-on-non-empty $(OBJ_DIR) $(BIN_DIR)


.PHONY: all clean build_dirs
