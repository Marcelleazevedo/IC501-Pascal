Program L1BEX1;

	// Descrição do exercício:
	// Leia um número e informe se ele é par ou ímpar
	
Var

	Num: Integer;
	
	// Num = Número que será digitado pelo usuário

Begin

	Writeln('Digite um numero:');
	Read(Num); 
	
	If Num Mod 2 = 0 Then Writeln('O numero ', Num, ' e par.')
		else Writeln ('O numero ', Num, ' nao e par.');
	
	// Todos os números pares inteiros são múltiplos de 2.
	// Para saber se um número é múltiplo de 2 basta dividí-lo por 2.
	// Obtendo resto 0 o número é par, obtendo outro valor o número é ímpar.
	
	// "If" significa "Se". "Then" significa "então". "Else" significa "senão" ou "do contrário".
	
	// If é usado para criar uma condição. Exemplo:	
		// Uma pessoa deseja saber se recebe mais que um salário mínimo.
		// Utilizando o código abaixo ela consegue resolver isso:
				// If Salario > 1320 then Writeln('Voce recebe mais que um salario minimo!')
				// else Writeln('Voce recebe menos que um salario minimo!')
		
		// Esse código significa: Se (If) a variável Salario for maior que o valor 1320
		// Então (Then) escreva (Writeln) a mensagem para o usuário: "Voce recebe mais que um salario minimo!"
		// Senão/Do contrário (Else) escreva (Writeln) a mensagem: "Você recebe menos que um salario minimo!"
	
		// Você também pode considerar a condição if nesse exercício como:
		//"Se X condição acontecer, então será feito A. Se X condição não acontecer então será feito B".
		
	End.