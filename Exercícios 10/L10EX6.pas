Program L10EX6;

	// Descrição do exercício:
		// Leia uma palavra de 20 letras e imprima:
		// a) A quantidade de vogais da palavra.
		// b) As posições em que aparecem as consoantes.

Var

	I, Largura, Vogal, Consoante : Integer;
	Letras : Array[1..20] of String;
	Posicao : Array[1..20] of Integer;
	Palavra : String;

Begin

	Vogal := 0;
	Consoante := 0;

	Writeln('Digite uma palavra de até 20 letras:');
	Readln(Palavra);

	Largura := Length(Palavra);

	For	I := 1 to Largura do // For para inserir as letras no Array

		Letras[I] := Copy(Palavra, I, 1);


	For I := 1 to Largura do

	Begin	// Início do For para verificar se a letra é vogal ou consoante

		If (Lowercase(Letras[I]) = 'a') or (Lowercase(Letras[I]) = 'e') or (Lowercase(Letras[I]) = 'i')  or (Lowercase(Letras[I]) = 'o') or (Lowercase(Letras[I]) = 'u')
			
			then Vogal := Vogal + 1

			Else

				Begin

					Consoante := Consoante + 1;
					Posicao[I] := I;

				End;

	End; // Final do For para verificar se a letra é vogal ou consoante

	Writeln;
	Writeln('A palavra digitada possui ', Vogal, ' vogais e ', Consoante, ' consoantes.');
	Writeln('As consoantes estao nas posicoes:');

	For I := 1 to Largura do

		If (Posicao[I] <> 0) then Write(I, ' ');

End.