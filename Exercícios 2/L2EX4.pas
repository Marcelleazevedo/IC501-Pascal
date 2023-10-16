Program L2EX4;

	// Descrição do exercício:
		//  Faça um programa que leia um número e exiba:
		// o dia correspondente da semana. (1- Domingo, 2- Segunda, etc.)
		// Se outro valor for digitado, imprima uma mensagem informando que o valor é inválido.

Var

	Dia : Integer;
	
Begin

	Writeln('Digite um numero de 1 a 7 para representar o dia da semana:');
	Writeln('Exemplo: 5');
	Readln(Dia);
	

	Case Dia of
		
		1 : Writeln('1 - Domingo');
		2 : Writeln('2 - Segunda-feira');
		3 : Writeln('3 - Terça-feira');
		4 : Writeln('4 - Quarta-feira');
		5 : Writeln('5 - Quinta-feira');
		6 : Writeln('6 - Sexta-feira');
		7 : Writeln('7 - Sabado');
		
		Else Writeln('O valor ', Dia, ' nao e valido e nao corresponde a um dia da semana.');
	End;
End.

