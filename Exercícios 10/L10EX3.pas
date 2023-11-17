Program L10EX3;

	// Descrição do exercício:
		// Leia os valores de um vetor de 10 inteiros.
		// Realize uma busca dentro deste vetor informando se um elemento pertence ou não ao vetor.
		// Se pertencer, também em que posição o mesmo se encontra.

	{ATENÇÃO!
			
	 Na resolução do exercício eu também adicionei duas condições:

	 1 - O usuário consegue verificar quantos números ele quiser, ao digitar um número negativo a verificação finaliza;
	 2 - Se o número não for encontrado o programa irá avisar ao usuário. }

Var

	Numeros, Posicoes : Array [1..10] of Integer; 
	I, Num, Contador : Integer;
	
Begin

	For I := 1 to 10 do

	Begin // Inicio do For

		Writeln('Digite um valor para a posicao ', I);
		Readln(Numeros[I]);

		Posicoes[I] := I;

	End; // Final do For

	Num := 0; 

	Repeat

		Contador := 0;

		Writeln('Digite um numero para saber se ele esta na lista:');
		Readln(Num);

	If (Num > 0) then
	
	Begin // Inicio do If INICIAL

		For I := 1 to 10 do

		Begin // Inicio do For

			If (Num = Numeros[I]) then
		
			Begin

				Writeln('O numero ', Num, ' esta na posicao ', Posicoes[I], ' da lista.');
				Writeln;

				Contador := Contador + 1;

			End;

		End; // Final do For

	End; // Final do If INICIAL

	If (Contador = 0) then Writeln('O numero ', Num, ' nao foi encontrado nessa lista.');

	Writeln;
	Writeln('Caso queira encerrar o programa, digite um numero negativo.');


	Until Num < 0;

End.