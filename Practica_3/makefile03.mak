#Directorios usados

HOME = ./
BIN = ./bin
INCLUDE = ./include
OBJ = ./obj
SRC = ./src
LIB = ./lib


mr.proper : 
	@echo Borrando archivos
	@-rm ./bin *
	@-rm ./obj *
	@-rm ./lib *

all : $(BIN)/I_PosMayor_Basico
	@echo Fin

$(BIN)/I_PosMayor_Basico : $(OBJ)/I_PosMayor_Basico.o $(LIB)/libGeneradorAleatorioEnteros.a
	g++ -o bin/I_PosMayor_Basico obj/I_PosMayor_Basico.o -L$(LIB) -l GeneradorAleatorioEnteros -I ./include 

$(OBJ)/I_PosMayor_Basico.o : $(SRC)/I_PosMayor_Basico.cpp $(INCLUDE)/GeneradorAleatorioEnteros.h
	g++ -c -o $(OBJ)/I_PosMayor_Basico.o $(SRC)/I_PosMayor_Basico.cpp -I ./include

$(LIB)/libGeneradorAleatorioEnteros.a : $(OBJ)/GeneradorAleatorioEnteros.o
	ar rvs $(LIB)/GeneradorAleatorioEnteros.a $(OBJ)/GeneradorAleatorioEnteros.o

$(OBJ)/GeneradorAleatorioEnteros.o : $(SRC)/GeneradorAleatorioEnteros.cpp
	g++ -c -o $(OBJ)/GeneradorAleatorioEnteros.o $(SRC)/GeneradorAleatorioEnteros.cpp