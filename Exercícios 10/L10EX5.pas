Program L10EX5;

	// Descrição do exercício:
		// Escrever um programa que leia uma frase de até 80 caracteres
		// Troque todas as letras que seguem um caracter branco por letras maiúsculas.
		
		// Exemplo:
		// Texto de entrada: este é um texto de exemplo!
		// Texto de saída: Este É Um Texto De Exemplo!
		
Var

	I : Integer;
	Letras : Array[1..80] of Char;
	
Begin

	Writeln('Digite uma frase de no maximo 80 caracteres:');
	Readln(Letras);

	For I := 1 to 80 do // For para deixar todas as letras em minúsculo

		Letras[I] := Lowercase(Letras[I]);

	Letras[1] := Upcase(Letras[1]);

	For I := 1 to 80 do // For para deixar as primeiras letras em maiúsculo

		If (Letras[I] = ' ') then Letras[I+1] := Upcase(Letras[I+1]);

		Writeln;

	For I := 1 to 80 do

	Write(Letras[I]);

End.