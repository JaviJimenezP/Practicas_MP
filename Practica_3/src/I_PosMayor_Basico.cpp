//////////////////////////////////////////////////
//
// 		Javier Jiménez Peláez
//			1ºB --> B1
// 	Metodología de la Programación
//
//	Archivo --> I_PosMayor_Basico.cpp			
//												
/////////////////////////////////////////////////

#include<iostream>
#include "GeneradorAleatorioEnteros.h"
using namespace std;

//*****************************************************************************


int * PosMayor(int *pv, int dcha, int izq)
{
	int *pm = &pv[izq];
	for (int i=izq+1 ; i<dcha ; i++)
	{
		if (*(pv+i) > *pm)
		{
			pm = pv+i
		}
	}
	return mayor;
}

int main(){

	const int TOPE = 100;
	int vector[TOPE];
	int util_vector;
	int dcha, izq;
	int *pv = vector;
	GeneradorAleatorioEnteros g (1,100);

	cout << "Introduzca cuantas posiciones desea rellenar en el vector: ";
	cin >> util_vector;

	while(util_vector > TOPE)
	{
		cout << "Hay un máximo de 100 casillas, pruebe de nuevo: ";
		cin >> util_vector;
	}

	cout << endl << endl;

	for(int i = 0; i < util_vector; i++, pv++){
		*pv = g.Siguiente();
	}

	cout << "Introduzca las posiciones entre las que se calculará el mayor: ";
	cin >> izq;
	cin >> dcha;

	while(dcha > util_vector){
		cout << "El valor debe de estar entre 0 y " << util_vector << ":";
		cin >> dcha;
	}

	//int mayor_pos = PosMayor(pv, izq, dcha);

	//cout << mayor_pos;

	for(int i = 0; i < util_vector; i++){
		cout << *(vector+i);
	}
}