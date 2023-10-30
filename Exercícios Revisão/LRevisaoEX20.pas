Program LRevisaoEX20;

	// Descrição do exercício:
		// O Sr. Manoel Joaquim acaba de adquirir uma panificadora e pretende implantar a metodologia da tabelinha
		// que já é um sucesso na sua loja de 1,99.
		// Você foi contratado para desenvolver o programa que monta a tabela de preços de pães: de 1 até 50 pães
		// a partir do preço do pão informado pelo usuário, conforme o exemplo abaixo:
		// Preço do pão: R$ 0.18
		// Panificadora Pão de Ontem - Tabela de preços
		// 1 - R$ 0.18
		// 2 - R$ 0.36
		// ...
		// 50 - R$ 9.00

Var

	I : Integer;
	Pao : Real;

Begin

	Writeln('Qual o preco do pao?');
	Readln(Pao);
	
	Writeln('Preco do pao: ', Pao:1:2);
	Writeln('Panificadora Pão de Ontem - Tabela de Preços');
	
	For I:=1 to 5 do
	
	Writeln(I, ' - R$ ', Pao*I:1:2);
	
	End.