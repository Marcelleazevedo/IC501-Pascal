Program L8EX1;

	// Descrição do exercício:
		// Leia um vetor de 10 inteiros e, após encerrar a leitura, informe:
		// a) o maior número e o menor número e a posição em que foram encontrados
		// b) a média dos números lidos
		// c) a quantidade de números pares no vetor
		// d) o maior múltiplo de 5 do vetor

Var

	Numeros : Array[1..10] of Integer;
	I, MaiorN, MenorN, MaiorPos, MenorPos, ContPar, Multiplo5, MaiorMultiplo5 : Integer;
	Soma : Real;

Begin

	MaiorN := 0;
	MenorN := 32000;
	Soma := 0;
	ContPar := 0;
	MaiorMultiplo5 := 0;

	For I := 1 to 10 do

	Begin // Início do For

	Writeln('Digite o numero inteiro que ficara na posicao ', I, ':');
	Readln(Numeros[I]);

	// a) o maior número e o menor número e a posição em que foram encontrados

	If (MaiorN < Numeros[I]) then

		Begin

		MaiorN := Numeros[I];
		MaiorPos := I;

		End;

	If (MenorN > Numeros[I]) then

		Begin

		MenorN := Numeros[I];
		MenorPos := I;

		End;


	// b) a média dos números lidos

	Soma := Soma + Numeros[I];

	// c) a quantidade de números pares no vetor

	If (Numeros[I] Mod 2 = 0) then ContPar := ContPar + 1;

	// d) o maior múltiplo de 5 do vetor

	If (Numeros[I] Mod 5 = 0) then

		Begin

		Multiplo5 := Numeros[I];

		If (Multiplo5 > MaiorMultiplo5) then MaiorMultiplo5 := Multiplo5;

		End;


	End; // Final do For

	// a) o maior número e o menor número e a posição em que foram encontrados

	Writeln('O maior numero e ', MaiorN, ' ele esta na posicao: ', MaiorPos);
	Writeln('O menor numero e ', MenorN, ' ele esta na posicao: ', MenorPos);

	// b) a média dos números lidos

	Writeln('A media dos numeros e ', Soma/10:1:2);

	// c) a quantidade de números pares no vetor

	Writeln('A quantidade de numeros pares no vetor e ', ContPar);	

	// d) o maior múltiplo de 5 do vetor

	If (MaiorMultiplo5 <> 0) then Writeln('O maior multiplo de 5 no vetor e ', MaiorMultiplo5)
	Else Writeln('Nao tem multiplos de 5 na lista de numeros');

End.