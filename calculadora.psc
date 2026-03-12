Funcion mostrar_menu
	Escribir "Bienvenidos a la calculadora, ingrese"
	Escribir "1 Para sumar"
	Escribir "2 Para restar"
	Escribir "3 Para multiplicar"
	Escribir "4 Para salir"
FinFuncion

Funcion mostrar_separador
	Escribir "====================================================="
FinFuncion

Funcion resultado <- calcular (num1, num2, op)
	Definir resultado Como Real
	Segun op Hacer
		1:
			resultado <- num1 + num2
		2:
			resultado <- num1 - num2
		3:
			resultado <- num1 * num2
		De Otro Modo:
			resultado <- 0
	Fin Segun
FinFuncion

Funcion valor_entero <- pedir_entero(mensaje)
	Definir valor_entero Como Entero
	Escribir mensaje
	Leer valor_entero
FinFuncion

Funcion valor_real <- pedir_real(mensaje)
	Definir valor_real Como Real
	Escribir mensaje
	Leer valor_real
FinFuncion

Algoritmo calculadora
	
FinAlgoritmo
