Program LRevisaoEX15;

	// Descrição do exercício:
		// Faça um programa que:
		// Calcule o fatorial de um número inteiro fornecido pelo usuário.
		// Ex.: 5! = 5*4*3*2*1=120

			
Var

	X, I, Fatorial : Integer;
	
	// X = Valor que o usuário irá escolher para calcular o fatorial
	// I = Número de controle que usaremos com For
	// Fatorial = Resultado final do fatorial
	
Begin

	Writeln('Escreva um número para fazer o fatorial');
	Readln(X);
	
	Fatorial := 1;
		
	For I := 1 to X do
	
	Begin

		Fatorial := Fatorial * I;
	
	End;

	Writeln('O valor do fatorial de ', X, '! e: ', Fatorial);

End.
