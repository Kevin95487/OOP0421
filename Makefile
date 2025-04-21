CXX = g++
CXXFLAGS = -std=c++11 -Wall -Wextra -O2
OBJ_DIR = obj
SRC_DIR = src
INC_DIR = inc

TARGET = Lab07

SRCS = main.cpp $(SRC_DIR)/Cylinder.cpp
OBJS = $(patsubst %.cpp, $(OBJ_DIR)/%.o, $(notdir $(SRCS)))

all: $(TARGET)

# Link all object files to create the executable
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS)

# Compile .cpp files to object files
$(OBJ_DIR)/%.o: %.cpp | $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -I$(INC_DIR) -c $< -o $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp | $(OBJ_DIR)
	$(CXX) $(CXXFLAGS) -I$(INC_DIR) -c $< -o $@

# Ensure obj/ directory exists
$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

clean:
	rm -f $(TARGET) $(OBJ_DIR)/*.o

rebuild: clean all
