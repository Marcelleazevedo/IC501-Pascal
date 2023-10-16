Program L2EX3;

	// Descrição do exercício:
		// Simular uma calculadora que leia, a partir do teclado:
		// um operador (caractere)
		// dois valores numéricos (reais)
		// Apresente o resultado desta operação.
	
		// Implemente apenas as funções de: 
		// soma, subtração, divisão e multiplicação.
	
		// Imprima uma mensagem de erro caso ocorra uma divisão por zero
		// ou se o operador digitado for desconhecido.
	
Var
	
	Operador   : Char;
	Num1, Num2 : Real;
	
Begin

	
	Writeln('Esse programa e uma calculadora que soma, subtrai, divide e multiplica.');
	Writeln('Digite o primeiro numero');
	Readln(Num1);
	
	Writeln('Digite um operador:');
	Writeln('Digite "-" para subtrair');
	Writeln('Digite "+" para somar');
	Writeln('Digite "*" para multiplicar');
	Writeln('Digite "/" para dividir');
	Writeln('Digite o operador SEM as aspas!');
	Readln(Operador);

	Writeln('Digite o segundo numero');
	Readln(Num2);

	// A variável "Operador" é um dado do tipo Char as opções de Case of precisam estar entre apóstrofos.
	// Se a variável "Operador" fosse uma String também seria necessário usar apóstrofos nas opções.

	Case Operador of
		
		'-' : Writeln('O valor de ', Num1:1:1, ' ', Operador, ' ', Num2:1:1, ' e: ', Num1-Num2:1:1);
		'+' : Writeln('O valor de ', Num1:1:1, ' ', Operador, ' ', Num2:1:1, ' e: ', Num1+Num2:1:1);
		'*' : Writeln('O valor de ', Num1:1:1, ' ', Operador, ' ', Num2:1:1, ' e: ', Num1*Num2:1:1);		
		'/' : Writeln('O valor de ', Num1:1:1, ' ', Operador, ' ', Num2:1:1, ' e: ', Num1/Num2:1:1);		
	End;
End.

