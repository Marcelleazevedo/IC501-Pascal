Program L10EX11;

	// Descrição do exercício:
		// Escreva um programa que leia uma matriz de 10 linhas por 10 colunas contendo inteiros.
		// O programa deve ler um número N e imprimir em que posições da matriz ele foi encontrado.

Var

	I, J, Num : Integer;
	Matriz : Array [1..10, 1..10] of Integer;
	
Begin

	// Criando a matriz

	For I := 1 to 10 do

	Begin // Início Linhas

		For J := 1 to 10 do

		Begin // Início Colunas

			Writeln('Digite o valor da linha ', I, ' e coluna ', J, ':');
			Readln(Matriz[i, j]);

		End; // Fim Colunas

		Writeln;

	End; // Final Linhas
	
	// Comparando o valor dentro da matriz

	Num := 0;

	Repeat

		Writeln('Caso deseje encerrar o programa digite o numero -999');
		Writeln('Digite um numero para saber se ele esta na matriz:');
		Readln(Num);

		If (Num <> -999) then

		Begin
		
			For I := 1 to 10 do

				For J := 1 to 10 do

				Begin

					If (Num = Matriz[i, j]) then

					Writeln('Linha ', I, ' e coluna ', J);

				End;

		End;



	Until Num = -999;

End.