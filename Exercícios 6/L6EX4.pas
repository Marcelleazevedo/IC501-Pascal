Program L6EX4;

	// Descrição do exercício:
		// Escreva um programa que leia um número inteiro e imprima um desenho, formado por asteriscos, como no exemplo abaixo:
		
		// Ex: num = 5
		
		// Saída:
		// *
		// * *
		// * * *
		// * * * *
		// * * * * *
			
Var

	Num, I, J : Integer;
	
Begin

	Writeln('Digite um numero:');
	Readln(Num);

	For I := 1 to Num do

	Begin

		For J := 1 to I do

		Begin

			Write('*');

		End;

		Writeln;

	End;
	
	
End.