Program L10EX4;

	// Descrição do exercício:
		// Escreva um programa que leia uma linha do teclado de até 80 caracteres
		// e imprima: o número de pares de consoantes dobradas (rr e ss) que foram encontrados.

Var

	I, ContadorR, ContadorS : Integer;
	Letras : Array[1..80] of Char;
	
Begin

	ContadorR := 0;
	ContadorS := 0;

	Writeln('Digite uma frase de até 80 caracteres');
	Readln(Letras);

	Largura := Length(Letras);

	For I := 1 to Largura do // For para verificar se a palavra tem rr
	
		If (Lowercase(Letras[I]) = 'r') and (Lowercase(Letras[I+1]) = 'r') then
			ContadorR := ContadorR + 1;

	For I := 1 to Largura do // For para verificar se a palavra tem ss
	
		If (Lowercase(Letras[I]) = 's') and (Lowercase(Letras[I+1]) = 's') then
			ContadorS := ContadorS + 1;

	Writeln;
	Writeln('O numero de pares de consoantes "rr" e de ', ContadorR);
	Writeln('O numero de pares de consoantes "ss" e de ', ContadorS);
	Writeln;
	Writeln('O numero total de pares de consoantes "rr" e "ss" e de ', ContadorR + ContadorS);

End.