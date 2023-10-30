Program L6EX2;

	// Descrição do exercício:
		// Faça um programa que leia um valor x qualquer e calcule o valor da série Y, tal que
		// Y = ((X+1)/1!) + ((X+2)/2!) + ... + ((X+99)/99!) + ((X+100)/100!)

Var

	X, Z, I, J, Fatorial : Longint;
	Y : Real;
	
Begin

	// Y = (X+1) / 1! será:
	// Y = (X+(Z+I)) / (Z+I)!

	// O valor de Z será 0 inicialmente.
	// O valor de I será 1 inicialmente.
	// O valor de Y será 0 inicialmente.
	// O valor de Fatorial será 1 inicialmente.
	
	Z := 0;
	Y := 0;
	Fatorial := 1;

	Writeln('Digite o valor de X:');
	Readln(X);

	For I := 1 to 100 do

	Begin

	// Para fazermos (X+1) / 1! precisamos resolver o fatorial primeiro.
	// I irá determinar o número do fatorial.

		For J := 1 to I do

		Begin

		Fatorial := Fatorial * J;

		End;

	// Agora que resolvemos o fatorial podemos continuar com a conta.
		// Y = (X+1) / 1!
		// Y = (X+(Z+J)) / (Z+J)!

	Y := Y + ((X+Z+I) / Fatorial);

	Fatorial := 1;

	End;

	Writeln('O resultado da serie Y e: ', Y);
	
End.


{
	Exemplo com um valor menor:


	Program L6EX2;

	// Descrição do exercício:
		// Faça um programa que leia um valor x qualquer e calcule o valor da série Y, tal que
		// Y = ((X+1)/1!) + ((X+2)/2!) + ... + ((X+4)/4!)

Var

	X, Z, I, J, Fatorial : Longint;
	Y : Real;
	
Begin

	// Y = (X+1) / 1! será:
	// Y = (X+(Z+I)) / (Z+I)!

	// O valor de Z será 0 inicialmente.
	// O valor de I será 1 inicialmente.
	// O valor de Y será 0 inicialmente.
	// O valor de Fatorial será 1 inicialmente.
	
	Z := 0;
	Y := 0;
	Fatorial := 1;

	Writeln('Digite o valor de X:');
	Readln(X);

	For I := 1 to 4 do // O valor modificado está aqui!

	Begin

	// Para fazermos (X+1) / 1! precisamos resolver o fatorial primeiro.
	// I irá determinar o número do fatorial.

		For J := 1 to I do

		Begin

		Fatorial := Fatorial * J;

		End;

	// Agora que resolvemos o fatorial podemos continuar com a conta.
		// Y = (X+1) / 1!
		// Y = (X+(Z+J)) / (Z+J)!

	Y := Y + ((X+Z+I) / Fatorial);

	Fatorial := 1;

	End;

	Writeln('O resultado da serie Y e: ', Y);
	
End.

}