NAME := 4ku

ifeq ($(OS), Windows_NT)
	SUFFIX := .exe
else
	SUFFIX :=
endif

EXE := $(NAME)$(SUFFIX)

all:
	g++ ./src/main.cpp -std=c++17 -DNDEBUG -O3 -funroll-loops -march=native -pthread -o $(EXE)
