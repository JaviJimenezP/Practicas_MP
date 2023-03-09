#Directorios usados

HOME = ./
BIN = ./bin
INCLUDE = ./include
OBJ = ./obj
SRC = ./src
LIB = ./lib


all : $(BIN)/I_PosMayor_Basico
	@echo Fin


#Ejercicio 6

$(BIN)/I_PosMayor_Basico : $(OBJ)/I_PosMayor_Basico.o $(LIB)/libGeneradorAleatorioEnteros.a $(LIB)/libProcesamientoArrayInt.a
	g++ -o $(BIN)/I_PosMayor_Basico $(OBJ)/I_PosMayor_Basico.o -L$(LIB) -lGeneradorAleatorioEnteros -lProcesamientoArrayInt -I$(INCLUDE)

$(OBJ)/I_PosMayor_Basico.o : $(SRC)/I_PosMayor_Basico.cpp 
	g++ -c -o $(OBJ)/I_PosMayor_Basico.o $(SRC)/I_PosMayor_Basico.cpp -I$(INCLUDE)

$(LIB)/libGeneradorAleatorioEnteros.a : $(OBJ)/GeneradorAleatorioEnteros.o
	ar rvs $(LIB)/libGeneradorAleatorioEnteros.a $(OBJ)/GeneradorAleatorioEnteros.o

$(OBJ)/GeneradorAleatorioEnteros.o : $(SRC)/GeneradorAleatorioEnteros.cpp
	g++ -c -o $(OBJ)/GeneradorAleatorioEnteros.o $(SRC)/GeneradorAleatorioEnteros.cpp -I$(INCLUDE)

$(LIB)/libProcesamientoArrayInt.a : $(OBJ)/ProcesamientoArrayInt.o
	ar rvs $(LIB)/libProcesamientoArrayInt.a $(OBJ)/ProcesamientoArrayInt.o

$(OBJ)/ProcesamientoArrayInt.o : $(SRC)/ProcesamientoArrayInt.cpp
	g++ -c -o $(OBJ)/ProcesamientoArrayInt.o $(SRC)/ProcesamientoArrayInt.cpp -I$(INCLUDE)

#Limpieza

clean : 
	@echo Borrando objetos
	@-rm $(OBJ)/*

mr.proper : 
	@echo Borrando archivos
	@-rm $(BIN)/* 
	@-rm $(OBJ)/*
	@-rm $(LIB)/*

