Program L7EX1;

	// Descrição do exercício:
		// Ler vários números até entrar com o número -999.
		// Para cada número lido, imprima todos os seus divisores.
			
Var

	Negativo, Num, I : Integer;

Begin

	Negativo := -999;
	Num := 0;

	While Negativo <> Num do
	
	Begin // Início do While

		Writeln('Digite um numero:');
		Readln(Num);

		If (Num <> Negativo) then Writeln('Multiplos de ', Num, ':');

		For I := 1 to Num do

		Begin // Início do For

			If (Num Mod I = 0) then Write(I, ' ');

		End; // Fim do For

	Writeln;
	Writeln;

	End; // Final do While

	
End.