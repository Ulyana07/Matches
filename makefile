.PHONY: clean all test run runtest

BIN_DIR = ./bin
BUILD_DIR = ./build
TEST_DIR = ./test
FLAGS =-Wall -std=c++11

all: $(BIN_DIR)/main

$(BIN_DIR)/main: 100math.o $(BUILD_DIR)/function.o
	g++ $(FLAGS) 100math.o $(BUILD_DIR)/function.o -o $(BIN_DIR)/main

$(BUILD_DIR)/100math.o:
	g++ $(FLAGS) -c 100math.cpp -o $(BUILD_DIR)/100math.o
	
$(BUILD_DIR)/function.o:
	g++ $(FLAGS) -c function.cpp -o $(BUILD_DIR)/function.o

test: $(BUILD_DIR)/function.o $(BUILD_DIR)/test.o
	g++ $(FLAGS) $(BUILD_DIR)/test.o $(BUILD_DIR)/function.o -o $(BIN_DIR)/test

$(BUILD_DIR)/test.o:
	g++ $(FLAGS) -c $(TEST_DIR)/test.cpp -o $(BUILD_DIR)/test.o
	
	
run: 
	./bin/main
	
runtest:
	./bin/test

clean:
	rm -f build/*.o
	rm -f bin/main
	rm -f bin/test