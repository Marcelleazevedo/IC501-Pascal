Program L10EX7;

	// Descrição do exercício:
		// Escreva um programa que contenha uma função chamada contadígitos onde,
		// dado um inteiro n e um inteiro d, 0 < d < 9, informe quantas vezes o dígito d aparece em n.

		{Eu adicionei na resolução do exercício a posição em que o número é encontrado}
Var

	N : Array[1..10] of Char;
	ContaDigitos, I : Integer;
	D : Char;
	
Begin

	Writeln('Digite um valor de até 10 caracteres para representar N:');
	Readln(N);

	Writeln('Digite um valor entre 1 e 9 de um unico digito para D:');
	Readln(D);

	ContaDigitos := 0;

	Writeln('Posicoes em que o numero D foi encontrado:');

	For I := 1 to 10 do

	Begin // Início do For

		If (N[I] = D) then

		Begin // Início do If

			ContaDigitos := ContaDigitos + 1;
			Writeln('Posicao: ', I);

		End; // Final do If

		If (I = 10) and (ContaDigitos = 0) then

			Writeln('O numero D não foi encontrado nenhuma vez.');

		If (I = 10) and (ContaDigitos > 0) then

				Writeln('O numero D foi encontrado ', ContaDigitos, ' vezes.');

	End; // Final do For

End.