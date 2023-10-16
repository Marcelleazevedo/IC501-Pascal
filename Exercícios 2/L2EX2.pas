Program L2EX2;

	// Descrição do exercício:
		// Escreva um programa que informe a quantidade total de calorias de uma refeiçã a partir da
		// escolha dos itens do cardápio:
		// um prato principal,
		// uma bebida e
		// uma sobremesa.
	
		// Prato principal:
	
		// 1 - Vegetariano: 180 cals
		// 2 - Peixe: 230 cals
		// 3 - Frango: 250 cals
		// 4 – Carne: 350 cals
	
		// Bebida:
	
		// 1 - Chá (lata): 80 cals
		// 2 - Suco de laranja: 150 cals
		// 3 - Suco de melão: 70 cals
		// 4 - Refrigentante diet: 2 cals

		// Sobremesa
	
		// 1 - Abacaxi: 75 cals
		// 2 - Sorvete diet: 110 cals
		// 3 - Mousse diet: 60 cals
		// 4 - Mousse chocolate: 250 cals

Var

	PratoP, Bebida, Sobremesa, Cal1, Cal2, Cal3, Soma: Integer;
	Prato1, Prato2, Prato3 : String;
	
	// PratoP = Prato Principal
	// Cal1 - Caloria do Prato principal - Prato1 = Nome do Prato Principal escolhido
	// Cal2 - Caloria da bebida          - Prato2 = Nome da Bebida escolhido
	// Cal3 - Caloria da sobremesa       - Prato3 = Nome do Prato Principal escolhido
	
Begin
	
	Writeln('Digite um valor de 1 a 4 para escolher sua refeição. No final sera informado o valor das calorias totais.');
	Writeln;

	Writeln('Escolha o seu prato principal digitando uma das opções abaixo:');
	Writeln(' 1 - Vegetariano: 180 cals');
	Writeln(' 2 - Peixe: 230 cals');
	Writeln(' 3 - Frango: 250 cals');
	Writeln(' 4 - Carne: 350 cals');
	Readln(PratoP);
	
	// No código abaixo é preciso adicionar mais de uma consequência caso a opção seja escolhida.
	
	// Se a variável PratoP for 1 é necessário que duas coisas aconteçam:
		// 1 - A variável Prato1 terá o valor 'Vegatariano'
		// 2 - A variável Call terá o valor 180
		
	// Se houvesse apenas UMA consequência o código poderia ser escrito dessa forma:
	
		// 1: Prato1 := 'Vegetariano';
	
	// Porém temos duas consequências:
	
		// Prato1 := 'Vegetariano';
		// Cal1   := 180;
		
	// Precisamos iniciar um bloco de comandos. Para isso usamos a sintaxe:
	
	// Case X Of
	
	// 1: Begin
	// 		Consequência1;
	// 		Consequência2;
	//    End;
	
	// 2 : Consequência1;
	
	// 3 : Begin
	// 		Consequência1;
	// 		Consequência2;
	// 		Consequência3;
	// 		Consequência4;
	// 	  End;
	
	// 1 Possui 2 consequências, por isso É PRECISO iniciar um bloco de comandos.
	// 2 Possui 1 consequência, por isso não é preciso iniciar um bloco de comandos.
	// 3 Possui 2 consequências, por isso É PRECISO iniciar um bloco de comandos.
	
	Case PratoP of
				
		1 : Begin
					Prato1 := 'Vegetariano';
					Cal1   := 180;
			End;
					
		2 : Begin
		
					Prato1 := 'Peixe';
					Cal1   := 230;
			End;
				
		3 : Begin
					Prato1 := 'Frango';
					Cal1   := 250;	
			End;
				
		4 : Begin
					Prato1 := 'Carne'; 
					Cal1   := 350;
			End;
	End;

	Writeln;

	Writeln('Escolha a sua bebida digitando uma das opções abaixo:');
	Writeln(' 1 - Cha (lata): 80 cals');
	Writeln(' 2 - Suco de laranja: 150 cals');
	Writeln(' 3 - Suco de melao: 70 cals');
	Writeln(' 4 - Refrigentante diet: 2 cals');
	
	Readln(Bebida);

	Case Bebida of
				
		1 : Begin
					Prato2 := 'Cha (lata)';
					Cal2   := 80;
			End;
					
		2 : Begin
		
					Prato2 := 'Suco de laranja';
					Cal2   := 150;
			End;
				
		3 : Begin
					Prato2 := 'Suco de melao';
					Cal2   := 70;	
			End;
				
		4 : Begin
					Prato2 := 'Refrigerante diet'; 
					Cal2   := 2;
			End;
	End;
	
	Writeln;
	
	Writeln('Escolha a sua sobremesa digitando uma das opções abaixo:');
	Writeln('1 - Abacaxi: 75 cals');
	Writeln('2 - Sorvete diet: 110 cals');
	Writeln('3 - Mousse diet: 60 cals');
	Writeln('4 - Mousse chocolate: 250 cals');	
	
	Readln(Sobremesa);
	
	Case Sobremesa of
				
		1 : Begin
					Prato3 := 'Abacaxi';
					Cal3   := 75;
			End;
					
		2 : Begin
		
					Prato3 := 'Sorvete diet';
					Cal3   := 110;
			End;
				
		3 : Begin
					Prato3 := 'Mousse diet';
					Cal3   := 60;	
			End;
				
		4 : Begin
					Prato3 := 'Mousse chocolate'; 
					Cal3   := 250;
			End;
	End;
	
	// 1 - Abacaxi: 75 cals
	// 2 - Sorvete diet: 110 cals
	// 3 - Mousse diet: 60 cals
	// 4 - Mousse chocolate: 250 cals


	Writeln;
	
	// Agora que o usuário escolheu as refeições podemos somar as calorias.
	
	Soma := Cal1 + Cal2 + Cal3;
	
	// No código abaixo estamos apresentando ao usuário as refeições que ele escolheu.
	
	Writeln('Sua refeicao escolhida e:');
	Writeln('Prato Principal: ', Prato1);
	Writeln('Bebida: ', Prato2);
	Writeln('Sobremesa: ', Prato3);
	Writeln;

	// No código abaixo estamos mostrando o valor da soma de calorias das refeições escolhidos.
	
	Writeln('O total de calorias da sua refeicao e: ', Soma);
	
End.