Program LRevisaoEX3;

	// Descrição do exercício:
	// Faça um programa que:
	// Pergunte o preço de três produtos
	// Informe qual produto você deve comprar, sabendo que a decisão é sempre pelo mais barato.
			
Var

	Produto1, Produto2, Produto3, ProdutoBarato : Real;
	
Begin

	Writeln('Qual o preço do primeiro produto?');
	Readln(Produto1);
	
	Writeln('Qual o preço do segundo produto?');
	Readln(Produto2);

	Writeln('Qual o preço do terceiro produto?');
	Readln(Produto3);

	If      (Produto1 > Produto2) and (Produto1 > Produto3) Then Writeln('Compre o primeiro produto')
	Else If (Produto2 > Produto1) and (Produto2 > Produto3) Then Writeln('Compre o segundo produto')
	Else if (Produto3 > Produto1) and (Produto3 > Produto2) Then Writeln('Compre o terceiro produto');

End.