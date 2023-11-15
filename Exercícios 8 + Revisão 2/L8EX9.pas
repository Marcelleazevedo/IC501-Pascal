Program L8EX9;

	// Descrição do exercício:
		// Ler duas matrizes A e B, ambas 5x5, e apresentar a matriz C, tal que:
		// C = Raiz quadrada de (A^2 + B^2)

Var
	
	I, J : Integer;
	A, B, C : Array[1..5, 1..5] of Real;

Begin

	Writeln('Digite os valores da matriz A:');
	Writeln;

	For I := 1 to 5 do // Linha

	Begin
	
		For J := 1 to 5 do // Coluna

		Begin

			Writeln('Digite o valor que ficara na linha ', I, ' e coluna ', J);
			Readln(A[i, j]);

		End; // Final Coluna

		Writeln;

	End; // Final Linha

	Writeln;
	Writeln('Digite os valores da matriz B:');
	Writeln;

	For I := 1 to 5 do // Linha

	Begin
	
		For J := 1 to 5 do // Coluna

		Begin

			Writeln('Digite o valor que ficara na linha ', I, ' e coluna ', J);
			Readln(B[i, j]);

		End; // Final Coluna

	Writeln;

	End; // Final Linha
	
	// Matriz C

	Writeln;
	Writeln('Matriz C:');

	For I := 1 to 5 do

	Begin

		For J := 1 to 5 do

		Begin

			C[i, j] := Sqrt(Sqr(A[i, j]) + Sqr(B[i, j]));
			Write(C[i, j]:1:2, ' ');

		End;

		Writeln;

	End;

End.