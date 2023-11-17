Program L8EX11;

	// Descrição do exercício:
		// Ler uma matriz 5x5 e apresentar os elementos da diagonal principal,
		// os números acima dela e a média dos números abaixo da diagonal.

Var

	Matriz : Array[1..5, 1..5] of Integer;
	SomaAbaixo, ContadorX : Real;
	I, J, X, Y : Integer;
	
Begin

	Writeln('Digite os valores da matriz:');

	For I := 1 to 5 do

	Begin

		For J := 1 to 5 do

		Begin

			Writeln('Linha ', I, ' Coluna ', J, ':');
			Readln(Matriz[i, j]);

		End;

	End;
	
	Writeln('A matriz:');
	Writeln;

	For I := 1 to 5 do

	Begin

		For J := 1 to 5 do

		Begin

			Write(Matriz[i, j], ' ');

		End;

		Writeln;

	End;

	Writeln;
	Writeln('Os numeros que estao na diagonal principal:');

	For I := 1 to 5 do

		Write(Matriz[i, i], ' ');

	Writeln;
	Writeln;

	ContadorX := 0;
	SomaAbaixo := 0;

	X := 1;
	Y := 1;

	Writeln('Os numeros que estao acima da matriz :');

	For I := 1 to 5 do

	Begin // Início da Linha

		For J := 1 to 5 do

		Begin // Início da Coluna

			If (I <> 5) and (Y + J < 6) then // Exibir os valores acima da diagonal principal

				Write(Matriz[i, Y + j], ' ');

			If (I <> 1) and (X - J > 0) then // Média dos elementos abaixo da diagonal principal

			Begin

				SomaAbaixo := SomaAbaixo + Matriz [i, X - j];
				ContadorX := ContadorX + 1;

			End; 

		End; // Final da Coluna

		Writeln;

		X := X + 1;
		Y := Y + 1;

	End; // Final da Linha

	Writeln;
	Writeln;

	Writeln('A media dos numeros abaixo da matriz: ', SomaAbaixo / ContadorX:1:2);

End.