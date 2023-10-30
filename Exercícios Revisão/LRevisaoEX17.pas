Program LRevisaoEX17;

	// Descrição do exercício:
		// Faça um programa que peça um número inteiro e determine se ele é ou não um número primo.
		// Um número primo é aquele que é divisível somente por ele mesmo e por 1.
		
Var

	Numero, I, Contador : Integer;
	
Begin

	Writeln('Digite um número');
	Readln(Numero);
	
	Contador := 0;
	
	For I := 1 to Numero do
	
	Begin
	
		If (Numero Mod I = 0) then Contador := Contador + 1 ;

	End;
	
	If (Contador = 2) Then Writeln('O numero ', numero, ' e primo.')
	Else Writeln('O numero ', Numero, ' nao e primo.');
	
End.