Program L1BEX3;

	// Descrição do exercício:
		// Escreva um programa para ler dois números e imprimí-los em ordem crescente
	
Var
	
	Num1, Num2: Integer;
	
	// Num1 = Primeiro número - Num2 = Segundo número
	
Begin
	
	Writeln('Os seguintes numeros ficarao em ordem crescente:');
	Writeln('Digite um numero:');
	Read(Num1);

	Writeln('Digite outro numero:');
	Readln(Num2);
	
	If (Num1 > Num2) then Writeln('Numeros em ordem crescente: ', Num2, ', ', Num1)
		Else Writeln ('Numeros em ordem crescente: ', Num1, ', ', Num2);
		
End.