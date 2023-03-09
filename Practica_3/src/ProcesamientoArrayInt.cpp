#ifndef PROCESAMIENTO_ARRAY_INT
#define PROCESAMIENTO_ARRAY_INT

#include "GeneradorAleatorioEnteros.h"
#include <iostream>
using namespace std;

int * PosMayor(int *pv, int dcha, int izq)
{
	int *pm = &pv[izq];
	for (int i=izq+1 ; i<dcha ; i++)
	{
		if (*(pv+i) > *pm)
		{
			pm = pv+i;
		}
	}
	return pm;
}

#endif