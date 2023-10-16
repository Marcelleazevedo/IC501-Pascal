Program L2EX1;

	// Descrição do exercício:
		// Leia um número de 1 a 12 e :
		// escreva o mês correspondente;
		// Caso seja digitado um número fora desse intervalo, imprima uma mensagem de erro.
		
Var

	Numero : Integer;
	
Begin

	Writeln('Digite um numero de 1 a 12');
	Writeln('Exemplo: 3');
	Read(Numero);

	// Case of é utilizado para criar opções.
	// A sintaxe dele também é simples:
	
	// Case NomeDaVariavel of
	// Opção1: Resultado da Opção 1;
	// Opção2: Resultado da Opção 2;
	// Opção3: Resultado da Opção 3;
	// End;
	
	// Lembre-se do seguinte:
	// As opções dentro do case sempre finalizam com ; 
	// Case NÃO COMEÇA com Begin, porém ele termina com End;
	
	// Caso a varíavel sendo utilizada com case seja uma String ou Char as opções precisam estar entre apóstrofos.
	// Exemplo:

	// Case NomeDaVariavel of
	// 		'Opção1': Resultado da Opção 1;
	// 		'Opção2': Resultado da Opção 2;
	// 		'Opção3': Resultado da Opção 3;
	// End;

	
	Case Numero of
					
		1  : Writeln('Mes de Janeiro');
		2  : Writeln('Mes de fevereiro');
		3  : Writeln('Mes de marco');
		4  : Writeln('Mes de abril');
		5  : Writeln('Mes de maio');
		6  : Writeln('Mes de junho');
		7  : Writeln('Mes de julho');
		8  : Writeln('Mes de agosto');
		9  : Writeln('Mes de setembro');
		10 : Writeln('Mes de outubro');
		11 : Writeln('Mes de novembro');
		12 : Writeln('Mes de dezembro');
		
		Else Writeln('Numero invalido! Digite um valor entre 1 e 12.');
		
	End;
	
	// Uma outra forma de entender case é pensando sobre o significado da palavra e sobre como 
	// Case of vem da expressão "in case of" do inglês que significa: "Em caso de".
	
	// Considere:
	// Case X Of
	// 		Opção1 : Writeln('Mensagem1');
	// 		Opção2 : Writeln('Mensagem2');
	// End;
	
	// Olhando o exemplo acima podemos entender essas 4 linhas como:

	// Caso a variável X possua o mesmo valor que a opção 1 a seguinte mensagem será apresentada: "Mensagem1"
	// Caso a variável X possua o mesmo valor que a opção 2 a seguinte mensagem será apresentada: "Mensagem2"
	
		
End.

