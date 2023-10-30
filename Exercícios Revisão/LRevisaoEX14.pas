Program LRevisaoEX14;

	// Descrição do exercício:
		// Faça um programa que peça:
		// Dois números, base e expoente, calcule e mostre o primeiro número elevado ao segundo número.
		// Não utilize a função de potência da linguagem.
			
Var
	
	Base, Expoente, I, Resultado : Integer;
	
Begin

	Writeln('Digite um número inteiro para ser a base:');
	Readln(Base);
	
	Writeln('Digite um número inteiro para ser o expoente:');
	Readln(Expoente);
	
	
	Resultado := 1;
	
	For I := 1 to Expoente do
	
	Begin

		Resultado := Resultado * Base;

		Writeln;
		Writeln(Resultado);

	End;
	
	Writeln(Resultado)

End.