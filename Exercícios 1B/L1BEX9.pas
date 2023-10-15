Program L1BEX9;

	// Descrição do exercício:
		// Escreva um programa que leia um número inteiro de 4 dígitos e
		// informe se o mesmo é múltiplo (resto da divisão igual a zero) do número formado pelos seus dois últimos dígitos.
		// Ex1: NUM = 1234 => 1234 / 34 = 36.29 e o programa deverá imprimir a mensagem:
		// “não é múltipo”. Ex2: NUM = 1210 => 1210 / 10 = 121 e o programa deverá imprimir a mensagem: “é múltiplo”.

Var

	Num, X: Integer;

Begin

	Writeln('Digite um numero de 4 digitos:');
	Readln(Num);

	X := Num Mod 100;
	
	If (Num Mod X = 0) then Writeln(X, ' e multiplo de ', Num)
		Else Writeln(X, ' nao e multiplo de ', Num, '.');

End.