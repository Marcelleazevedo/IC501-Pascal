Program L10EX1;

	// Descrição do exercício:
		// Leia um vetor de 10 inteiros e, após encerrar a leitura, informe:
		// o maior número, o menor número e a média dos números lidos.
		// Informe também a posição em que o maior e o menor foram encontrados.

Var

	MaiorN, MenorN, MaiorPos, MenorPos, I : Integer;
	Media : Real;

	Numeros : Array[1..10] of Integer;
	
Begin

	MaiorN := 0;
	MenorN := 32700;
	Media := 0;

	For I := 1 to 10 do

	Begin // Início do For

		Writeln('Digite o ', I, 'º valor do vetor:');
		Readln(Numeros[i]);

		// Maior numero

		If (Numeros[i] > MaiorN) then

		Begin

			MaiorN := Numeros[i];
			MaiorPos := I;

		End;

		// Menor numero

		If (Numeros[i] < MenorN) then

		Begin

			MenorN := Numeros[i];
			MenorPos := I;

		End;

		Media := Media + Numeros[i];

	End; // Final do For

	Writeln;
	Writeln('O maior numero e ', MaiorN, ' e esta na posicao ', MaiorPos);
	Writeln('O menor numero e ', MenorN, ' e esta na posicao ', MenorPos);
	Writeln;
	Writeln('A media dos numeros digitados e ', Media / 10:1:2);
	
End.