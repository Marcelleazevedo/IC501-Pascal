Program L5EX4;

	// Descrição do exercício:
		// Faça um programa que leia 5 números e imprima o maior deles.
			
Var

	Num, NumMaior, I, J : Integer;

Begin

	NumMaior := 0;

	For I := 1 to 5 do

	Begin 

	Writeln('Digite o ', I, 'º numero:');
	Readln(Num);

	If (Num > NumMaior) then

							Begin

							NumMaior := Num;
							J := I;

							End;

	End;

	Writeln('O ', J, 'º numero foi o maior. O valor dele e: ', NumMaior);
End.