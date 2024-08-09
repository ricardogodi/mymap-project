CXX = g++
CXXFLAGS = -std=c++17 -Wall -g
LDFLAGS = -lgtest -lgtest_main -pthread

# Modify these paths according to your GoogleTest installation
GTEST_DIR = /path/to/googletest/include
GTEST_LIB_DIR = /path/to/googletest/lib

# Source files
SOURCES = tests.cpp
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = tests.exe

# Include paths
INCLUDES = -I$(GTEST_DIR)

# Build target
build: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -L$(GTEST_LIB_DIR) $(LDFLAGS) -o $@

# Object files
%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $<

# Run tests
run:
	./$(EXECUTABLE)

# Memory check
valgrind:
	valgrind --tool=memcheck --leak-check=yes ./$(EXECUTABLE)

# Clean the build
clean:
	rm -f $(OBJECTS) $(EXECUTABLE)

.PHONY: build run valgrind clean