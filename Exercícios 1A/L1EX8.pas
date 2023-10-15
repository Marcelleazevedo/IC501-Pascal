Program L1AEX8;
	
	// Descrição do exercício:
		// Entre com os valores no formato CDU (Centena, Dezena, Unidade)
		// e imprima-o invertido em UDC.
		// Exemplo: 123 seria impresso como 321
		// Dica: Utilize DIV e MOD

Var

	Number, N1, N2, N3, X: Integer;

	// Number = Número apresentado pelo usuário - N1 = Primeiro número
	// N2 = Segundo número - N3 = Terceiro número
	// X = Variável utilizada para isolar os dois últimos números

Begin

	Writeln('Escreva um numero entre 100 e 999:');
	Readln(Number);

	N1:= Number Div 100;

	// O código Div (Division) é usado para dividir números inteiros.
	// Exemplo de uma divisão com números reais: 75/10 = 7.5
	// Exemplo de uma divisão com números inteiros: 75 Div 10 = 7 (a parte decimal é descartada)
	// O código Div oculta qualquer valor após a vírgula, afinal esse se trata de um número inteiro.

	X:= Number Mod 100;
	
	// O código Mod (Modulus) é usado para dividir números inteiros e apresentar como resultado o resto.
	// Exemplo de uma divisão utilizando MOD: 75 MOD 10 = 5
	// Esse valor é apresentado, pois se considerarmos um número inteiro 75/10 = 7 sobra 5.
	// Outro exemplo: 94 MOD 10 = 4
	// Nessa parte do código essa divisão foi feita para separar os dois últimos algarismos do primeiro algarismo.
	
	N2:= X Div 10;
	
	// A variável X separou os dois últimos algarismos. 
	// Utilizando Div será possível separar os dois últimos números. 

	N3:= Number Mod 10;
	
	// Também é possível conseguir o valor de N3 utilizando: X Mod 10
	
	Writeln('Numero em ordem invertida:', N3, N2, N1, '.');


End.
