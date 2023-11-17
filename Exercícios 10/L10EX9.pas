Program L10EX9;

	// Descrição do exercício:
		// Escreva um programa que lê uma matriz 4x5
		// imprima o maior número de cada linha, indicando a que linha cada número pertence

Var

	I, J : Integer;
	Matriz : Array [1..4, 1..5] of Real; // 4 linhas, 5 colunas
	Maior, Posicao : Array [1..4] of Real;

Begin

	For I := 1 to 4 do // Igualando todos os valores de Maior[1..4] a zero para transformá-la em uma matriz nula.
		Maior[i] := 0;

	// Montando a matriz 4 x 5

	For I := 1 to 4 do

	Begin // Início Linhas

		For J := 1 to 5 do

		Begin // Início Colunas

			Writeln('Digite um valor para a linha ', I, ' e a coluna ', J);
			Readln(Matriz[i, j]);

			If (Matriz[i, j] > Maior[i]) then

				Begin // Início do If

					Maior[i]   := Matriz[i, j];
					Posicao[i] := J;

				End; // Final do If

		End; // Final Colunas

		Writeln;

	End; // Final Linhas


	For I := 1 to 4 do

		Writeln('O maior número da linha ', I, ' esta na coluna ', Trunc(Posicao[i]), ' e possui o valor ', Maior[i]:1:2);

End.