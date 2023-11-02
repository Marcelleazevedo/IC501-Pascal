Program L7EX3;

	// Descrição do exercício:
		// Entre com uma lista de números inteiros positivos e finalize a leitura com um número negativo
		// Para cada número lido, imprima todos os seus divisores.
			
Var

	Negativo, Num, I : Integer;
	
Begin

	Negativo := -1;
	Num := 0;

	While Num > Negativo do 

	Begin // Início do While

	Writeln('Digite um numero:');
	Readln(Num);

	Writeln;

	If (Num > Negativo) then Writeln('Multiplos de ', Num, ':');

		For I := 1 to Num do

			If (Num Mod I = 0) then Write(I, ' ');

		Writeln;
		Writeln;

	End; // Fim do While
	
End.