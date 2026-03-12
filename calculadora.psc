Funcion mostrar_menu
	mostrar_separador
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
	Definir opc Como Entero
	Definir valor1, valor2, resultado Como Real
	Repetir
		mostrar_menu
		opc = pedir_entero("Ingrese la opción deseada")
		Si opc = 1 O opc = 2 O opc = 3 Entonces
			valor1 <- pedir_real("Ingrese el primer número")
			valor2 <- pedir_real("Ingrese el segundo número")
			resultado <- calcular(valor1, valor2, opc)
			Escribir "Resultado: ", resultado
		SiNo
			Si opc = 4 Entonces
				Escribir "Bye Bye"
			SiNo
				Escribir "Opción no válida"
			FinSi
		FinSi
	Hasta Que opc = 4
FinAlgoritmo
