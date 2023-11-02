Program L7EX7;

	// Descrição do exercício:
		// Leia um conjunto de números inteiros, até que um número negativo seja digitado.
		// Ao final, calcule e imprima:

		// a) A quantidade de números válidos lida
		// b) O percentual de números pares
		// c) A média dos números ímpares
		// d) O maior e o menor número lido
			
Var

	Num, Contador, ContPares, ContImpares, Maior, Menor : Integer;
	SomaImpares : Real;
	
Begin

	Contador := 0;
	ContPares := 0;
	ContImpares := 0;
	Maior := 0;
	Menor := 32760;


	Repeat
	
	Writeln('Digite um numero inteiro: ');
	Readln(Num);

	If Num > 0 then

	Begin // Início do If INICIAL

		// a) A quantidade de números válidos lida

		Contador := Contador + 1;

		// b) O percentual de números pares

		If (Num Mod 2 = 0) then ContPares := ContPares + 1;

		// c) A média dos números ímpares

		If (Num Mod 2 <> 0) then

							Begin
								ContImpares := ContImpares + 1;
								SomaImpares := SomaImpares + Num;
							End;

		// d) O maior e o menor número lido

		If (Maior < Num) then Maior := Num;

		If (Menor > Num) then Menor := Num;

	End; // Fim do If INICIAL

	Until Num < 0;

	// a) A quantidade de números válidos lida

	Writeln('A quantidade de numeros validos lida e: ', Contador);

	// b) O percentual de números pares

	Writeln('O percentual de numeros pares e ', (ContPares*100) Div Contador, ' %');

	// c) A média dos números ímpares

	Writeln('A media dos numeros impares e ', SomaImpares / ContImpares:1:2);

	// d) O maior e o menor número lido

	Writeln('O maior numero lido e: ', Maior);
	Writeln('O menor numero lido e: ', Menor);
	
End.