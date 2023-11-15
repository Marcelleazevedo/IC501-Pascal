Program L8EX4;

	// Descrição do exercício:
		// Leia os valores de um vetor V1 contendo 20 inteiros.
		// A seguir, crie e imprima os vetores descritos a seguir:
		// e) V2 = 2*V1
		// f) V3 = inverso de V1 (V2[20] = V1[1], V2[19] = V1[18] e assim por diante)
		// g) V4, um vetor de 40 inteiros, onde:
		// V4[1] = V1[1], V4[2] = V2[1],
		// V4[3] = V1[2], V4[4] = V2[2],
		// V4[5] = V1[3], V4[6] = V2[3],
		// …
		// V4[2*i-1] = V1[i], V4[2*i] = V2[i], …

Var

	V1, V2, V3, V4 : Array[1..20] of integer;
	I, A, B, C : Integer;
	
Begin

	// Leia os valores de um vetor V1 contendo 20 inteiros.

	For I := 1 to 20 do

	Beg  in // Início do For V1

		Writeln('Digite um numero inteiro para ficar na posicao ', I);
		Readln(V1[I]);

	End; // Final do For 

	Writeln;

	// A seguir, crie e imprima os vetores descritos a seguir:
	// e) V2 = 2*V1

	For I := 1 to 20 do

	Begin // Início do For V2

		V2[I] := 2*V1[I];

		Writeln('V2 ', I, 'º termo: ', V2[I]);

	End; // Final do For V2

	Writeln;

	// f) V3 = inverso de V1 (V2[20] = V1[1], V2[19] = V1[18] e assim por diante)
	
	A := 21; // Por serem 20 termos ele deve iniciar como 21.

	For I := 1 to 20 do

	Begin // Inicio do For V3

		A := A - 1;

		V3[A] := V1[I];

	End; // Final do For V3

	For I := 1 to 20 do

	Writeln('V3 ', I, 'º termo: ', V3[I]);

	{ g) V4, um vetor de 40 inteiros, onde:
	 V4[1] = V1[1], V4[2] = V2[1],
	 V4[3] = V1[2], V4[4] = V2[2],
	 V4[5] = V1[3], V4[6] = V2[3],
	 …

	 Essa é a sugestão de algoritmo sugerida no exercício:

	 V4[2*i-1] = V1[i], V4[2*i] = V2[i], …

	 Eu decidi utilizar outro algoritmo para isso. }

	Writeln;

	B := 0;
	C := 0;

	For I := 1 to 20 do

	Begin // Início do For V4

		If (I Mod 2 <> 0) then // Se I for ímpar

		Begin // Início se for ímpar

			B := B + 1;
			V4[I] := V1[B];

			Writeln('V4 ', I, 'º termo: ', V4[I]);

		End; // Final se for ímpar

		If (I Mod 2 = 0) then // Se I for par

		Begin // Início se for par

			C := C + 1;
			V4[I] := V2[C];

			Writeln('V4 ', I, 'º termo: ', V4[I]);

		End; // Final se for par

	End; // Final do For V4
	
End.
