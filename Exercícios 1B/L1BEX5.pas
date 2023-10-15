Program L1BEX5;

	// Descrição do exercício:
		// Faça um programa que leia o peso de uma pessoa, só a parte inteira, calcule e imprima:
		// O peso da pessoa em gramas
		// O novo peso, em gramas, se a pessoa engordar 8%

Var

	PesoQuilo, PesoGrama, Engordar: Longint;
	
	// PesoQuilo = Peso do usuário em quilos - PesoGrama = Peso do usuário em gramas
	// Engordar = O peso da pessoa se ela engordar 8%
	
Begin

	Writeln('Digite o seu peso em quilos:');
	Writeln('Exemplo: 90');
	Writeln('Nao utilize virgula');
	Readln(PesoQuilo);
	
	PesoGrama := PesoQuilo*1000;
	
	// Ao multiplicar a variável PesoGrama por 1000 conseguimos converter o peso em quilos para gramas.
	
	Engordar := ((PesoGrama Div 100)*8) + PesoGrama;
	
	// Se a variável PesoGrama fosse um número real seria possível descobrir quanto o usuário engordaria da seguinte forma:
		
		// Engordar := (PesoGrama * 0,08) + Pesograma
		
	// Porém como o número é inteiro não é possível multiplicá-lo por 0,08.
	// Dividindo um número por 100 é possível conseguir 1% dele, pois 1% é a centésima parte de um número.
	// Ao multiplicarmos 1% de um número por 8 conseguimos o valor de 8% do mesmo.
	
	// Por exemplo:
		// Vamos calcular 8% de 200
		// 200/100 = 2
		// 2*8 = 16
		// 16 é 8%
		
	// No exemplo acima faremos o mesmo. Primeiro dividimos o número por 100 e depois multiplicamos ele por 8.
		
		

	Writeln('Seu peso em gramas e: ', PesoGrama, '. Caso engorde 8% seu peso sera: ', Engordar, '.');

End.