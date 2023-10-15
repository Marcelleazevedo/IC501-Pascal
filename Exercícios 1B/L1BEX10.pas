Program L1BEX10;

	// Descrição do exercício:
		// Faça um programa que leia três números e imprima uma das seguintes mensagens:
		// a) todos os números são iguais;
		// b) todos os números são diferentes ou
		// c) apenas dois números são iguais.

Var

	Num1, Num2, Num3: Real;

Begin

	Writeln('Escreva o primeiro número');
	Readln(Num1);
	
	Writeln('Escreva o primeiro número');
	Readln(Num2);

	Writeln('Escreva o primeiro número');
	Readln(Num3);

	If (Num1 = Num2) and (Num1 = Num3) then Writeln('Todos os numeros sao iguais')
		Else if (Num1 = Num2) or (Num1 = Num3) or (Num2 = Num3) then Writeln('Apenas dois numeros sao iguais')
		Else Writeln('Todos os numeros sao diferentes');

		// "Or" significa "ou".
		// Esse código é utilizado junto do comando "If" para criar duas condições que:
			// ao serem verdadeiras retornam uma informação após "then"
			// Apenas uma condição precisa ser verdadeira para que a mensagem depois de "Then" seja apresentada.
				
		// A lógica por trás disso pode ser entendida da seguinte forma:
			// Considere a afirmação:
			// Se você fizer a prova ou o trabalho então será aprovado.
			// Se (If) você fizer a prova (Condição 1) ou (OR) o trabalho (Condição 2) então (then) será aprovado.
				// Você será aprovado se fizer apenas o trabalho? Sim, pois atende a pelo menos uma condição.
				// Você será aprovado se fizer apenas a prova? Sim, pois atendeu à uma das condições.
				// Você será aprovado se não fizer a prova e nem o trabalho? Não, pois nenhuma condição foi atendida.
				// A única forma de ser aprovado é se fizer a prova ou (Or) o trabalho.
				
		// Para entender melhor esse conceito é importante conhecer a tabela da verdade:
			// Tabela OR
			// False True  = True
			// True  False = True
			// False False = False
			// True  True  = True
			
			// True representa uma condição que teve seu requisito atendido.
			// False representa uma condição que NÃO teve seu requisito atendido.
				// É possível entender a tabela considerando o seguinte modelo:
				// IF False OR True  THEN True
				// IF True  OR False THEN True
				// IF False OR False THEN False
				// IF True  OR True  THEN True

End.