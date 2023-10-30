Program LRevisaoEX13;

	// Descrição do exercício:
		// Desenvolva um gerador de tabuada, capaz de gerar a tabuada de qualquer número inteiro entre 1 e 10. O usuário deve informar de qual numero ele deseja ver a tabuada. A saída deve ser EXATAMENTE conforme o exemplo abaixo:
		// Tabuada de 5:
		// 5 x 1 = 5
		// 5 x 2 = 10
		// ...
		// 5 x 10 = 50
	
		// 16) Faça um programa que, dado um conjunto de N números, determine o menor valor, o maior valor
			
Var

	Num, I : Integer;
	
Begin

	Writeln('Digite um número entre 1 e 10:');
	Readln(Num);
	
	Writeln('Tabuada de ', Num, ':');

	For I := 1 to Num do

	Writeln(Num, ' x ', I, ' = ', Num*I);

End.