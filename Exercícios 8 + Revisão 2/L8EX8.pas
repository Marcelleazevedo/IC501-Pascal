Program L8EX8;

	// Descrição do exercício:
		// Escreva um programa que leia uma frase de até 100 caracteres
		// e imprime a quantidade total de vogais na frase e quantas vezes cada vogal aparece.

Var

	J, A, E, I, O, U : Integer;
	Letras : Array [1..100] of Char;
	
Begin

	A := 0;
	E := 0;
	I := 0;
	O := 0;
	U := 0;
	
	Writeln('Digite uma frase de ate 100 caracteres:');
	Readln(Letras);

	For J := 1 to 100 do

	Begin // Início do For para contar vogais individualmente

		If      (Lowercase(Letras[J]) = 'a') then A := A + 1
		Else If (Lowercase(Letras[J]) = 'e') then E := E + 1
		Else If (Lowercase(Letras[J]) = 'i') then I := I + 1
		Else If (Lowercase(Letras[J]) = 'o') then O := O + 1
		Else If (Lowercase(Letras[J]) = 'u') then U := U + 1;

	End; // Final do For para contar vogais individualmente

	Writeln('O numero de vogais e ', A + E + I + O + U, ' sendo:');
	Writeln('Letra A: ', A);
	Writeln('Letra E: ', E);
	Writeln('Letra I: ', I);
	Writeln('Letra O: ', O);
	Writeln('Letra U: ', U);
	
End.