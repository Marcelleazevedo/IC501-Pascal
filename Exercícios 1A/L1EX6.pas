Program L1EX6;

	// Descrição do exercício:
		//Faça um programa que leia o peso de uma pessoa, só a parte inteira
		//Imprima:
		//O peso da pessoa em gramas
		//O novo peso em gramas se a pessoa engordar 8%

Var

	Peso, Gramas, X: Longint;

	// "Integer" representa um número inteiro de range muito baixo para ser usado aqui
	// Integer vai de -32.768 até +32.767. Longint vai de -2.147.483.648 até +2.147.483.647.
	// Peso = Peso da pessoa - Gramas = Peso em gramas
	// X = Peso da pessoa que engordou 8%

Begin

	Writeln('Quanto quilos voce pesa?');
	Readln(Peso);

	Gramas:= Peso*1000;
	X:= (Gramas Div 100)*8+Gramas;

	// Div é o código usado para dividir números inteiros.
	// Para conseguir 8% de um número real basta multiplicá-lo por 0.08.
	// Gramas é a variável que representa um número inteiro, por isso precisamos calcular 8% de outra forma. 
	// Dividindo Gramas por 100 conseguimos 1% dele. Multiplicando esse valor por 8 conseguimos saber quanto é 8%.

	Writeln('Seu peso em gramas e: ', Gramas, '.');
	Writeln('Seu peso em gramas caso engorde 8% e: ', X, '.');

End.
