Program L6EX1;

	// Descrição do exercício:
		// Faça um programa que calcule o número de divisores de todos os inteiros no intervalo [100, 200].
		// A saída do programa deverá ter o seguinte formato:
		// 100 => 4 divisores
		// 101 => 2 divisores
		// ...
		// 200 => 4 divisores
			
Var

	I, J, Divisor : Integer;
	
Begin

	Divisor := 0;

	For J := 100 to 200 do
	
	Begin

		For I := 1 to J do

		Begin

			If (J Mod I = 0) then Divisor := Divisor + 1;

			If (I = J) then 
					   
					   Begin

						Writeln(J, ' => ', Divisor, ' divisores');
						Divisor := 0;

						End;

		End;

	End;
	
End.


{ Exemplo com um valor menor:

Entre 10 e 15 em vez de 100 e 200.
	
	Program L6EX1;

	// Descrição do exercício:
		// Faça um programa que calcule o número de divisores de todos os inteiros no intervalo [10, 15].
		// A saída do programa deverá ter o seguinte formato:
		// 10 => 4 divisores
		// 11 => 2 divisores
		// ...
		// 15 => 4 divisores
			
Var

	I, J, Divisor : Integer;
	
Begin

	Divisor := 0;

	For J := 10 to 15 do // O valor modificado está aqui!

	Begin

		For I := 1 to J do

		Begin

			If (J Mod I = 0) then Divisor := Divisor + 1;

			If (I = J) then 
					   
					   Begin

						Writeln(J, ' => ', Divisor, ' divisores');
						Divisor := 0;

						End;

		End;
	End;

End.
}