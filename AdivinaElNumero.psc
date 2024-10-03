Algoritmo AdivinaElNumero
    // Declaraci�n de variables
    Definir numeroSecreto, intento Como Entero
    Definir intentosMaximos Como Entero
    Definir contador Como Entero
	
    // Inicializaci�n de variables
    intentosMaximos <- 7 // N�mero m�ximo de intentos permitidos
    contador <- 0
	
    // Generar n�mero aleatorio entre 1 y 100
    numeroSecreto <- Aleatorio(1, 100)
	
    // Inicio del juego
    Escribir "�Bienvenido al juego de adivinar el n�mero!"
    Escribir "He seleccionado un n�mero entre 1 y 100."
    Escribir "Tienes ", intentosMaximos, " intentos para adivinarlo."
	
    // Ciclo para permitir al jugador intentar adivinar
    Repetir
        Escribir "Introduce tu intento (", contador + 1, "/", intentosMaximos, "): "
        Leer intento
        contador <- contador + 1
		
        Si intento < numeroSecreto Entonces
            Escribir "Demasiado bajo. Intenta de nuevo."
        Sino
            Si intento > numeroSecreto Entonces
                Escribir "Demasiado alto. Intenta de nuevo."
            Sino
                Escribir "�Felicidades! Adivinaste el n�mero ", numeroSecreto, " en ", contador, " intentos."
                
            Fin Si
        Fin Si
		
    Hasta Que contador >= intentosMaximos
	
    // Fin del juego si no se adivina el n�mero
    Si contador >= intentosMaximos Entonces
        Escribir "Lo siento, has agotado tus intentos. El n�mero era: ", numeroSecreto
    Fin Si
	
Fin Algoritmo