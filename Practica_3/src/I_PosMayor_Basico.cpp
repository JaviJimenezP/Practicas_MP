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
#include "ProcesamientoArrayInt.h"
using namespace std;

//*****************************************************************************


int main(){

	/* El ususario intorduce el tamaño del vector con el que quiere operar, 
		los valores entre los que se realizará la función y por último la 
		ejecuta
	*/
	
	const int TOPE = 1000;
	int vector[TOPE];
	int util_vector;
	int dcha, izq;
	int *pv = vector;
	GeneradorAleatorioEnteros g (1,100);

	cout << "Introduzca cuantas posiciones desea rellenar en el vector: ";
	cin >> util_vector;

	while(util_vector > TOPE)
	{
		cout << "Hay un máximo de 1000 casillas, pruebe de nuevo: ";
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

	int *mayor_pos = PosMayor(vector, dcha, izq);

	cout << *mayor_pos << endl;


	for(int i = 0; i < util_vector; i++){
		cout << *(vector+i) << " ";
	}

	cout << endl;
}